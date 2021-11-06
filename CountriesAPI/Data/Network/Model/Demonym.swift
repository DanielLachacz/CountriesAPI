//
//  Demonym.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on September 25, 2021

import Foundation

struct Demonym : Codable {

    public let eng : Eng?
    public let fra : Fra?

        enum CodingKeys: String, CodingKey {
                case eng = "eng"
                case fra = "fra"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
            eng = try Eng(from: decoder)
            fra = try Fra(from: decoder)
        }

}
