//
//  NameCD+CoreDataProperties.swift
//  CountriesAPI
//
//  Created by Daniel Łachacz on 01/11/2021.
//  Copyright © 2021 Daniel Łachacz. All rights reserved.
//
//

import Foundation
import CoreData


extension NameCD {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<NameCD> {
        return NSFetchRequest<NameCD>(entityName: "NameCD")
    }

    @NSManaged public var common: String?
    @NSManaged public var official: String?
    @NSManaged public var countryCD: CountryCD?

}

extension NameCD : Identifiable {

}
