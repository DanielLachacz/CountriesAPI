//
//  APIService.swift
//  CountriesAPI
//
//  Created by Daniel Łachacz on 12/09/2021.
//  Copyright © 2021 Daniel Łachacz. All rights reserved.
//

import Foundation
import Combine

enum APIError: Error, LocalizedError {
    case unknown, apiError(reason: String)

    var errorDescription: String? {
        switch self {
        case .unknown:
            return "Unknown error"
        case .apiError(let reason):
            return reason
        }
    }
}

protocol APIServiceProtocol {
    
    func fetchAllCountries(url: URL) -> AnyPublisher<[Country], APIError>
}

final class APIService: APIServiceProtocol {
    
    
    func fetchAllCountries(url: URL) -> AnyPublisher<[Country], APIError> {
        
        let request = URLRequest(url: url)
               
               return URLSession.DataTaskPublisher.init(request: request, session: .shared)
                   .tryMap { data, response in
                       guard let httpResponse = response as? HTTPURLResponse, 200..<300 ~= httpResponse.statusCode else {
                           throw APIError.unknown
                       }
                       return data
               }
               .decode(type: [Country].self, decoder: JSONDecoder())
               .mapError { error in
                   if let error = error as? APIError {
                       return error
                   } else {
                       return APIError.apiError(reason: error.localizedDescription)
                   }
               }
           
           .eraseToAnyPublisher()
    }
    
    
    
}
