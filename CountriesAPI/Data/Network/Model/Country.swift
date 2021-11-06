//
//  Country.swift
//  Model Generated using http://www.jsoncafe.com/ 
//  Created on September 25, 2021

import Foundation

struct Country : Codable {

    public let altSpellings : [String]?
    public let area : Double?
    public let borders : [String]?
    public let callingCodes : [String]?
    public let capital : [String]?
    public let cca2 : String?
    public let cca3 : String?
    public let ccn3 : String?
    public let cioc : String?
//    public let currencies : Currency?
   // public let demonyms : Demonym?
    public let flag : String?
    public let idd : Idd?
    public let independent : Bool?
    public let landlocked : Bool?
    public let languages : Language?
    public let latlng : [Double]?
    public let name : Name?
    public let region : String?
    public let status : String?
    public let subregion : String?
    public let tld : [String]?
    public let translations : Translation?
    public let unMember : Bool?

        enum CodingKeys: String, CodingKey {
                case altSpellings = "altSpellings"
                case area = "area"
                case borders = "borders"
                case callingCodes = "callingCodes"
                case capital = "capital"
                case cca2 = "cca2"
                case cca3 = "cca3"
                case ccn3 = "ccn3"
                case cioc = "cioc"
//                case currencies = "currencies"
//                case demonyms = "demonyms"
                case flag = "flag"
                case idd = "idd"
                case independent = "independent"
                case landlocked = "landlocked"
                case languages = "languages"
                case latlng = "latlng"
                case name = "name"
                case region = "region"
                case status = "status"
                case subregion = "subregion"
                case tld = "tld"
                case translations = "translations"
                case unMember = "unMember"
        }
    
        init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: CodingKeys.self)
                altSpellings = try values.decodeIfPresent([String].self, forKey: .altSpellings)
                area = try values.decodeIfPresent(Double.self, forKey: .area)
                borders = try values.decodeIfPresent([String].self, forKey: .borders)
                callingCodes = try values.decodeIfPresent([String].self, forKey: .callingCodes)
                capital = try values.decodeIfPresent([String].self, forKey: .capital)
                cca2 = try values.decodeIfPresent(String.self, forKey: .cca2)
                cca3 = try values.decodeIfPresent(String.self, forKey: .cca3)
                ccn3 = try values.decodeIfPresent(String.self, forKey: .ccn3)
                cioc = try values.decodeIfPresent(String.self, forKey: .cioc)
//            currencies = try Currency(from: decoder)
 //               demonyms = try Demonym(from: decoder)
                flag = try values.decodeIfPresent(String.self, forKey: .flag)
                idd = try values.decodeIfPresent(Idd.self, forKey: .idd)
                independent = try values.decodeIfPresent(Bool.self, forKey: .independent)
                landlocked = try values.decodeIfPresent(Bool.self, forKey: .landlocked)
                languages = try Language(from: decoder)
                latlng = try values.decodeIfPresent([Double].self, forKey: .latlng)
                name = try values.decodeIfPresent(Name.self, forKey: .name)
                region = try values.decodeIfPresent(String.self, forKey: .region)
                status = try values.decodeIfPresent(String.self, forKey: .status)
                subregion = try values.decodeIfPresent(String.self, forKey: .subregion)
                tld = try values.decodeIfPresent([String].self, forKey: .tld)
                translations = try values.decodeIfPresent(Translation.self, forKey: .translations)
                unMember = try values.decodeIfPresent(Bool.self, forKey: .unMember)
        }

}
