//
//  CoreDataService.swift
//  CountriesAPI
//
//  Created by Daniel Łachacz on 15/09/2021.
//  Copyright © 2021 Daniel Łachacz. All rights reserved.
//

import Foundation
import CoreData

protocol CoreDataServiceProtocol {
    
    func saveCountries(countries: [Country], completion: @escaping(_ returned: Bool) ->())
    func fetchCountries() -> [CountryCD]
}

final class CoreDataService : CoreDataServiceProtocol {
   
    private var persistentContainer: NSPersistentContainer = {
        let persistentContainer = NSPersistentContainer(name: "Countries")
        persistentContainer.loadPersistentStores { _, error in
            print(error?.localizedDescription ?? "")
        }
        return persistentContainer
    }()
    
    var viewContext: NSManagedObjectContext {
        return persistentContainer.viewContext
    }
    
    func saveCountries(countries: [Country], completion: @escaping(_ returned: Bool) ->()) {
        
        deleteData(entityToFetch: "CountryCD", completion: {(isDeleted) -> Void in
            if isDeleted == true {
                print("CoreDataService - saveCountries: Data is deleted")
            } else {
                print("CoreDataService - saveCountries: Deleting error")
            }
        })
        
        for country in countries {
            let newCountry = CountryCD(context: viewContext)
            let newName = NameCD(context: viewContext)
           // let newIdd = IddCoreData(context: viewContext)
            
            newCountry.altSpellings = country.altSpellings
            newCountry.area = country.area ?? 0.0
            newCountry.callingCodes = country.callingCodes
            newCountry.capital = country.capital
            newCountry.flag = country.flag
            newCountry.latlng = country.latlng
            newCountry.region = country.region
            
            newName.common = country.name?.common
            newName.official = country.name?.official
    
            newCountry.addToNameCD(newName)

        }
        do {
            try viewContext.save()
            print("CoreDataService - saveCountries: Success")
            completion(true)
        } catch {
            print("CoreDataServcice - saveCountries: Error saving: \(error.localizedDescription)")
            completion(false)
        }
    }
    
    func fetchCountries() -> [CountryCD] {
        do {
            let fetchRequest = NSFetchRequest<CountryCD>(entityName: "CountryCD")
           // let predicate = NSPredicate(format: "nameCD == %@", "CountryCD")
          //  fetchRequest.predicate = predicate
           // fetchRequest.predicate = NSPredicate(format: "nameCD == %@", "CountryCD")
            fetchRequest.returnsObjectsAsFaults = false
            let countries = try viewContext.fetch(fetchRequest)
            return countries
        } catch {
            print("CoreDataService - fetchCountries: \(error)")
            return []
        }
    }
    
    func deleteData(entityToFetch: String, completion: @escaping(_ returned: Bool) ->()) {
           // let context = NSManagedObjectContext()
           // context = your managedObjectContext

            let fetchRequest = NSFetchRequest<NSFetchRequestResult>()
            fetchRequest.entity = NSEntityDescription.entity(forEntityName: entityToFetch, in: viewContext)
            fetchRequest.includesPropertyValues = false
             do {
                let results = try viewContext.fetch(fetchRequest) as! [NSManagedObject]
                for result in results {
                    viewContext.delete(result)
                }
                try viewContext.save()
                completion(true)
            } catch {
                completion(false)
                print("CoreDataService - deleteData: \(error.localizedDescription)")
            }
        }
    
    
}
