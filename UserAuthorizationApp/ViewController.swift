//
//  ViewController.swift
//  UserAuthorizationApp
//
//  Created by User on 06.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var logInButton: UIButton!
    
//    private var defaultLogin: String = ""
//    private var defaultPassword: String = ""
//    
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 10
        
//        userNameTF.text = defaultLogin
//        passwordTF.text = defaultPassword
//        
        userNameTF.delegate = self
        passwordTF.delegate = self
    }
    
//    func configure(authData: AuthData) {
//        defaultLogin = authData.login
//        defaultPassword = authData.password
//    }

    @IBAction func logInNextScreenButton(_ sender: UIButton) {

        if userNameTF.text!.isEmpty || passwordTF.text!.isEmpty {
            let alert = UIAlertController(title: "Invalid login or password", message: "please, enter correct login or password ", preferredStyle: .alert)
            let alertOkButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(alertOkButton)
            self.present(alert, animated: true, completion: nil)
        }
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc2 = storyboard.instantiateViewController(withIdentifier: "SecondScreen") as? UserGreetingViewController {
            vc2.name = userNameTF.text!
            show(vc2, sender: nil)
        }
//        let authData = AuthData(login: "Slava", password: "007")
//        vc2.configure(authData: authData)
//        navigationController?.pushViewController(vc2, animated: true)
    }
    
    @IBAction func uiwind(segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func suggestOfName() {
        let alertForName = UIAlertController(title: "Oops!", message: "your name is Slava", preferredStyle: .alert)
        let alertOkButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertForName.addAction(alertOkButton)
        self.present(alertForName, animated: true, completion: nil)
    }
    
    @IBAction func suggestOfPassword() {
        let alertForPassword = UIAlertController(title: "Oops!", message: "your password is 007", preferredStyle: .alert)
        let alertOkButton = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertForPassword.addAction(alertOkButton)
        self.present(alertForPassword, animated: true, completion: nil)
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        passwordTF.becomeFirstResponder()
        return true
    }
}
