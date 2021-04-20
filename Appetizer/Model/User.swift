//
//  User.swift
//  Appetizer
//
//  Created by Paco Cardenal on 18/04/2021.
//

import Foundation

struct User: Codable {
    
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
    
}
