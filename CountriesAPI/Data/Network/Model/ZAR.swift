//
//  ZAR.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on September 25, 2021

import Foundation

struct ZAR : Codable {

    public let name : String?
    public let symbol : String?

        enum CodingKeys: String, CodingKey {
                case name = "name"
                case symbol = "symbol"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                name = try values.decodeIfPresent(String.self, forKey: .name)
                symbol = try values.decodeIfPresent(String.self, forKey: .symbol)
        }

}
