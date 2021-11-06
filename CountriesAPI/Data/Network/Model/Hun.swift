//
//  Hun.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on September 25, 2021

import Foundation

struct Hun : Codable {

    public let common : String?
    public let official : String?

        enum CodingKeys: String, CodingKey {
                case common = "common"
                case official = "official"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                common = try values.decodeIfPresent(String.self, forKey: .common)
                official = try values.decodeIfPresent(String.self, forKey: .official)
        }

}
