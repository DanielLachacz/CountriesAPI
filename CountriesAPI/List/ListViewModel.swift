//
//  ListViewModel.swift
//  CountriesAPI
//
//  Created by Daniel Łachacz on 23/10/2021.
//  Copyright © 2021 Daniel Łachacz. All rights reserved.
//

import Combine
import SwiftUI

class ListViewModel: ObservableObject {
    
    private let coreDataService: CoreDataServiceProtocol
    @Published var countries = [CountryCD]()
    
    init(coreDataService: CoreDataServiceProtocol = CoreDataService()) {
        self.coreDataService = coreDataService
       // fetchCountries()
    }
    
    func fetchCountries() {
         let list = coreDataService.fetchCountries()
         self.countries = list
        print("ListViewModel - fetchCountries: \(list.compactMap{$0.nameCD?.allObjects})")
    }
}
