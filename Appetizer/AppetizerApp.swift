//
//  AppetizerApp.swift
//  Appetizer
//
//  Created by Paco Cardenal on 06/04/2021.
//

import SwiftUI

@main
struct AppetizerApp: App {
    
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            AppetizerTabView().environmentObject(order)
        }
    }
}
