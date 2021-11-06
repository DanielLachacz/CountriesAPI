//
//  CountryCD+CoreDataProperties.swift
//  CountriesAPI
//
//  Created by Daniel Łachacz on 01/11/2021.
//  Copyright © 2021 Daniel Łachacz. All rights reserved.
//
//

import Foundation
import CoreData


extension CountryCD {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CountryCD> {
        return NSFetchRequest<CountryCD>(entityName: "CountryCD")
    }

    @NSManaged public var altSpellings: [String]?
    @NSManaged public var area: Double
    @NSManaged public var borders: NSObject?
    @NSManaged public var callingCodes: [String]?
    @NSManaged public var capital: [String]?
    @NSManaged public var flag: String?
    @NSManaged public var latlng: [Double]?
    @NSManaged public var region: String?
    @NSManaged public var nameCD: NSSet?

}

// MARK: Generated accessors for nameCD
extension CountryCD {

    @objc(addNameCDObject:)
    @NSManaged public func addToNameCD(_ value: NameCD)

    @objc(removeNameCDObject:)
    @NSManaged public func removeFromNameCD(_ value: NameCD)

    @objc(addNameCD:)
    @NSManaged public func addToNameCD(_ values: NSSet)

    @objc(removeNameCD:)
    @NSManaged public func removeFromNameCD(_ values: NSSet)

}

extension CountryCD : Identifiable {

}
