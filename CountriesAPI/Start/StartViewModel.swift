//
//  StartViewModel.swift
//  CountriesAPI
//
//  Created by Daniel Łachacz on 12/09/2021.
//  Copyright © 2021 Daniel Łachacz. All rights reserved.
//

import SwiftUI
import Combine

class StartViewModel: ObservableObject {
    
    private let apiService: APIServiceProtocol
    private let coreDataService: CoreDataServiceProtocol
    @Published var countries = [CountryCD]()
    @Published var isLoading: Bool = false
    @Published var isSaveingError: Bool = true
    
    init(apiService: APIServiceProtocol = APIService(), coreDataService: CoreDataServiceProtocol = CoreDataService()) {
        self.apiService = apiService
        self.coreDataService = coreDataService
        fetchCountries()
    }
    
    func fetchCountries() {
        
        var cancellable: AnyCancellable?
        guard let url = URL(string: "https://raw.githubusercontent.com/mledoze/countries/master/dist/countries.json") else { return }
        
        cancellable = apiService.fetchAllCountries(url: url)
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case .finished:
                    cancellable? .cancel()
                case .failure(let error):
                    print("StartViewModel - fetchCountries:  \(error.localizedDescription)")
                    self.isSaveingError = true
                }
            }, receiveValue: { [self] data in
             
                self.isLoading = true
                coreDataService.saveCountries(countries: data, completion: {(saved) -> Void in
                    if saved == true {
                        isSaveingError = false
                        print("StartViewModel - Data saved")
                        
//                        let list = coreDataService.fetchCountries()
//                        self.countries = list
//                        print("StartViewModel - fetchCountries: \(list.compactMap{$0.nameCD})")
                    }
                    else {
                        isSaveingError = true
                        print("ERROR: StartViewModel - the data was not saved")
                    }
                })
                
        })
    }
    
}
