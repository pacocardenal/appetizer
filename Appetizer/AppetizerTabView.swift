//
//  ContentView.swift
//  Appetizer
//
//  Created by Paco Cardenal on 06/04/2021.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView {
            Text("Hello, world!")
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerTabView()
    }
}
