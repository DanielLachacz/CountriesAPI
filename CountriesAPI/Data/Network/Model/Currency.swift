//
//  Currency.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on September 25, 2021

import Foundation

struct Currency : Codable {

    public let bWP : BWP?
    public let cNY : CNY?
    public let eUR : EUR?
    public let gBP : GBP?
    public let iNR : INR?
    public let jPY : JPY?
    public let uSD : USD?
    public let zAR : ZAR?
    public let zWB : ZWB?

        enum CodingKeys: String, CodingKey {
                case bWP = "BWP"
                case cNY = "CNY"
                case eUR = "EUR"
                case gBP = "GBP"
                case iNR = "INR"
                case jPY = "JPY"
                case uSD = "USD"
                case zAR = "ZAR"
                case zWB = "ZWB"
        }
    
        init(from decoder: Decoder) throws {
            _ = try decoder.container(keyedBy: CodingKeys.self)
            bWP = try BWP(from: decoder)
            cNY = try CNY(from: decoder)
            eUR = try EUR(from: decoder)
            gBP = try GBP(from: decoder)
            iNR = try INR(from: decoder)
            jPY = try JPY(from: decoder)
            uSD = try USD(from: decoder)
            zAR = try ZAR(from: decoder)
            zWB = try ZWB(from: decoder)
        }

}
