//
//  Idd.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on September 25, 2021

import Foundation

struct Idd : Codable {

    public let root : String?
    public let suffixes : [String]?

        enum CodingKeys: String, CodingKey {
                case root = "root"
                case suffixes = "suffixes"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                root = try values.decodeIfPresent(String.self, forKey: .root)
                suffixes = try values.decodeIfPresent([String].self, forKey: .suffixes)
        }

}
