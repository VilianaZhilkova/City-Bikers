//
//  FirebaseUserDataService.swift
//  CityBikers
//
//  Created by guest1 on 3/31/17.
//  Copyright © 2017 Viliana Zhilkova. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class FirebaseUserDataService {
    
    init() {}
    
    func createUser(withEmail email: String, andPassword password: String) {
        FIRAuth.auth()?.createUser(withEmail: email, password: password, completion: { (user, error) in
            if (user != nil) {
                print("Register User %@", user)
            }
            else {
                print("Register Error %@", error)
            }
        })
    }
    
    func loginUser(withEmail email: String, andPassword password: String) {
        //print(email, password)
        FIRAuth.auth()?.signIn(withEmail: email, password: password, completion: { (user, error) in
            if (user != nil) {
                print("User %@", user)
            }
            else {
                print("Error %@", error)
            }
        })
    }
    
    func logoutUser() {
          do {
            try FIRAuth.auth()?.signOut()
            //print("logout")
        } catch let signOutError as NSError {
            //print("Error signing out: %@", signOutError)
        }
    }
}
    

