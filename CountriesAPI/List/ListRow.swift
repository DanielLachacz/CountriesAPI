//
//  ListRow.swift
//  CountriesAPI
//
//  Created by Daniel Łachacz on 24/10/2021.
//  Copyright © 2021 Daniel Łachacz. All rights reserved.
//

import SwiftUI

struct ListRow: View {
    
    private let country: CountryCD
    
    init(country: CountryCD) {
        self.country = country
    }
    
    var body: some View {
        HStack {
            Text(country.region ?? "No region")
                .frame(width: 250, height: 50, alignment: .leading)
            
            Spacer()
            
            Text(country.flag ?? "No flag")
                .frame(width: 50, height: 50, alignment: .trailing)
                .font(.system(size: 45))
        }
    }
}

