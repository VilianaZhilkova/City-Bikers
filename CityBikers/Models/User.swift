//
//  User.swift
//  CityBikers
//
//  Created by guest1 on 3/30/17.
//  Copyright © 2017 Viliana Zhilkova. All rights reserved.
//

import Foundation

import UIKit

class User {
    // vallidation
    var username: String?
    var password: String!
    var email: String!
    var city: String?
    var country: String?
    
    convenience init(withUsername username: String?, email: String!, password: String!, city: String?, andCountry country: String?) {
        self.init(withUsername: username, email: email, password: password, city: city, andCountry: country)
    }
    
    
    init(withUername username: String?,email: String!, password: String!, city: String?, andCountry country: String?) {
        self.username = username
        self.email = email
        self.password = password
        self.city = city
        self.country = country
    }
}
