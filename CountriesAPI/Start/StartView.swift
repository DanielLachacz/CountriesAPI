//
//  ContentView.swift
//  CountriesAPI
//
//  Created by Daniel Łachacz on 12/09/2021.
//  Copyright © 2021 Daniel Łachacz. All rights reserved.
//

import SwiftUI

struct StartView: View {
    
    @StateObject var viewModel = StartViewModel()
    
    var body: some View {
        VStack {
            
            if viewModel.isLoading == false {
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: .black))
                .scaleEffect(3)
                .alert(isPresented: $viewModel.isLoading, content: {
                    Alert(
                    title: Text("Error"),
                    message: Text("Something went wrong!")
                    )
                })
                
               
            }
            
            if viewModel.isSaveingError == false {
                               NavigationLink(destination: ListView()) {
                                   ListView()
                               }
                           }

        }
    }
    
}

struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
