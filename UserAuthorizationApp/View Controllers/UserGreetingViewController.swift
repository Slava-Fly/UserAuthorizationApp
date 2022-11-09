//
//  UserGreetingViewController.swift
//  UserAuthorizationApp
//
//  Created by User on 06.11.2022.
//

import UIKit

class UserGreetingViewController: UIViewController {
    
    @IBOutlet var greetingLabel: UILabel!
    @IBOutlet var logOutButton: UIButton!
    
    var user = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greetingLabel.text = user
    
        logOutButton.layer.cornerRadius = 10
    }
  
}
