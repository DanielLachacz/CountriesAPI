//
//  Language.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on September 25, 2021

import Foundation

struct Language : Codable {

    public let bwg : String?
    public let eng : String?
    public let kck : String?
    public let khi : String?
    public let ndc : String?
    public let nde : String?
    public let nya : String?
    public let sna : String?
    public let sot : String?
    public let toi : String?
    public let tsn : String?
    public let tso : String?
    public let ven : String?
    public let xho : String?
    public let zib : String?

        enum CodingKeys: String, CodingKey {
                case bwg = "bwg"
                case eng = "eng"
                case kck = "kck"
                case khi = "khi"
                case ndc = "ndc"
                case nde = "nde"
                case nya = "nya"
                case sna = "sna"
                case sot = "sot"
                case toi = "toi"
                case tsn = "tsn"
                case tso = "tso"
                case ven = "ven"
                case xho = "xho"
                case zib = "zib"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                bwg = try values.decodeIfPresent(String.self, forKey: .bwg)
                eng = try values.decodeIfPresent(String.self, forKey: .eng)
                kck = try values.decodeIfPresent(String.self, forKey: .kck)
                khi = try values.decodeIfPresent(String.self, forKey: .khi)
                ndc = try values.decodeIfPresent(String.self, forKey: .ndc)
                nde = try values.decodeIfPresent(String.self, forKey: .nde)
                nya = try values.decodeIfPresent(String.self, forKey: .nya)
                sna = try values.decodeIfPresent(String.self, forKey: .sna)
                sot = try values.decodeIfPresent(String.self, forKey: .sot)
                toi = try values.decodeIfPresent(String.self, forKey: .toi)
                tsn = try values.decodeIfPresent(String.self, forKey: .tsn)
                tso = try values.decodeIfPresent(String.self, forKey: .tso)
                ven = try values.decodeIfPresent(String.self, forKey: .ven)
                xho = try values.decodeIfPresent(String.self, forKey: .xho)
                zib = try values.decodeIfPresent(String.self, forKey: .zib)
        }

}
