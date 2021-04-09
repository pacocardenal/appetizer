//
//  Appetizer.swift
//  Appetizer
//
//  Created by Paco Cardenal on 06/04/2021.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 0001, name: "Test Appetizer", description: "This is the description for my appetizer. It's yummy.", price: 9.99, imageURL: "asian-flank-steak", calories: 99, protein: 99, carbs: 99)
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
