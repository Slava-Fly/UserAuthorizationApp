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
    
    private var defaultLogin: String = ""
    private var defaultPassword: String = ""
    
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = name
        
        //userNameTF.text = defaultLogin
        //passwordTF.text = defaultPassword
        
        
        logOutButton.layer.cornerRadius = 10
    }
    
    func configure(authData: AuthData) {
        defaultLogin = authData.login
        defaultPassword = authData.password
    }
}
