//
//  Native.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on September 25, 2021

import Foundation

struct Native : Codable {

    public let bwg : Bwg?
    public let eng : Eng?
    public let kck : Kck?
    public let khi : Khi?
    public let ndc : Ndc?
    public let nde : Nde?
    public let nya : Nya?
    public let sna : Sna?
    public let sot : Sot?
    public let toi : Toi?
    public let tsn : Tsn?
    public let tso : Tso?
    public let ven : Ven?
    public let xho : Xho?
    public let zib : Zib?

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
            bwg = try Bwg(from: decoder)
            eng = try Eng(from: decoder)
            kck = try Kck(from: decoder)
            khi = try Khi(from: decoder)
            ndc = try Ndc(from: decoder)
            nde = try Nde(from: decoder)
            nya = try Nya(from: decoder)
            sna = try Sna(from: decoder)
            sot = try Sot(from: decoder)
            toi = try Toi(from: decoder)
            tsn = try Tsn(from: decoder)
            tso = try Tso(from: decoder)
            ven = try Ven(from: decoder)
            xho = try Xho(from: decoder)
            zib = try Zib(from: decoder)
        }

}
