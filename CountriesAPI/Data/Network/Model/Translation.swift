//
//  Translation.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on September 25, 2021

import Foundation

struct Translation : Codable {

    public let ces : Ce?
    public let deu : Deu?
    public let est : Est?
    public let fin : Fin?
    public let fra : Fra?
    public let hrv : Hrv?
    public let hun : Hun?
    public let ita : Ita?
    public let jpn : Jpn?
    public let kor : Kor?
    public let nld : Nld?
    public let per : Per?
    public let pol : Pol?
    public let por : Por?
    public let rus : Rus?
    public let slk : Slk?
    public let spa : Spa?
    public let swe : Swe?
    public let urd : Urd?
    public let zho : Zho?

        enum CodingKeys: String, CodingKey {
                case ces = "ces"
                case deu = "deu"
                case est = "est"
                case fin = "fin"
                case fra = "fra"
                case hrv = "hrv"
                case hun = "hun"
                case ita = "ita"
                case jpn = "jpn"
                case kor = "kor"
                case nld = "nld"
                case per = "per"
                case pol = "pol"
                case por = "por"
                case rus = "rus"
                case slk = "slk"
                case spa = "spa"
                case swe = "swe"
                case urd = "urd"
                case zho = "zho"
        }
    
        init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: CodingKeys.self)
            ces = try Ce(from: decoder)
            deu = try Deu(from: decoder)
            est = try Est(from: decoder)
            fin = try Fin(from: decoder)
            fra = try Fra(from: decoder)
            hrv = try Hrv(from: decoder)
            hun = try Hun(from: decoder)
            ita = try Ita(from: decoder)
            jpn = try Jpn(from: decoder)
            kor = try Kor(from: decoder)
            nld = try Nld(from: decoder)
            per = try Per(from: decoder)
            pol = try Pol(from: decoder)
            por = try Por(from: decoder)
            rus = try Rus(from: decoder)
            slk = try Slk(from: decoder)
            spa = try Spa(from: decoder)
            swe = try Swe(from: decoder)
            urd = try Urd(from: decoder)
            zho = try Zho(from: decoder)
        }

}
