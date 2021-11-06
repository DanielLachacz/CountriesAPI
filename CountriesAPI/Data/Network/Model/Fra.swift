//
//  Fra.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on September 25, 2021

import Foundation

struct Fra : Codable {

    public let f : String?
    public let m : String?

        enum CodingKeys: String, CodingKey {
                case f = "f"
                case m = "m"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                f = try values.decodeIfPresent(String.self, forKey: .f)
                m = try values.decodeIfPresent(String.self, forKey: .m)
        }

}
