//
//  UserProfileViewController.swift
//  CityBikers
//
//  Created by guest1 on 3/30/17.
//  Copyright © 2017 Viliana Zhilkova. All rights reserved.
//

import UIKit

class UserProfileViewController: UIViewController {
    
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    var firebaseUserDataService: FirebaseUserDataService?  {
        get{
            let appDelegate = UIApplication.shared.delegate as! AppDelegate
            return appDelegate.userData
        }
    }
    
    var user: User? {
        get {
            return appDelegate.user
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        usernameLabel.text = user?.username
        emailLabel.text = user?.email
        countryLabel.text = user?.country
        cityLabel.text = user?.city
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }    


    @IBAction func loginButtonTapped(_ sender: Any) {
        
        self.firebaseUserDataService?.logoutUser()
        
        appDelegate.user = nil
        print("tapped")
        //print(appDelegate.user)
     }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
