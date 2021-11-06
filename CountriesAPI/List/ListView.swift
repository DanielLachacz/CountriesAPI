//
//  ListView.swift
//  CountriesAPI
//
//  Created by Daniel Łachacz on 13/09/2021.
//  Copyright © 2021 Daniel Łachacz. All rights reserved.
//

import SwiftUI

struct ListView: View {
    
    @StateObject var viewModel = ListViewModel()
    
    var body: some View {
        VStack {
        
        List(viewModel.countries) { country in
            ListRow(country: country)
            self.Print(country.nameCD?.allObjects)
        }
        .onAppear(perform: {
            self.viewModel.fetchCountries()
        })
    
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
}

extension View {
    func Print(_ vars: Any...) -> some View {
        for v in vars { print("ListView Print: \( v)") }
        return EmptyView()
    }
}
