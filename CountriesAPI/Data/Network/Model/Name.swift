//
//  Name.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on September 25, 2021

import Foundation

struct Name : Codable {

    public let common : String?
    public let nativeField : Native?
    public let official : String?

        enum CodingKeys: String, CodingKey {
                case common = "common"
                case nativeField = "native"
                case official = "official"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                common = try values.decodeIfPresent(String.self, forKey: .common)
                nativeField = try Native(from: decoder)
                official = try values.decodeIfPresent(String.self, forKey: .official)
        }

}
