//
//  ViewController.swift
//  UserAuthorizationApp
//
//  Created by User on 06.11.2022.
//

import UIKit

class LogInViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var logInButton: UIButton!
    
    private var user = "Slava"
    private var password: String = "007"
    
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }

        for vc in viewControllers {
            if let userGreetingVC = vc as? UserGreetingViewController {
                userGreetingVC.title = "Welcome"
                userGreetingVC.user = "Hi," + userNameTF.text! + "!"
            } else if let myDataVC = vc as? MyDataViewController {
                self.navigationItem.title = "Data About me"
                myDataVC.title = "Data About me"
            } else if let myBio = vc as? MyBiographyViewController {
                self.navigationItem.title = "My Brief Biography"
                myBio.title = "My Biography"
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 10
        
    }

    @IBAction func logInNextScreenButton(_ sender: UIButton) {

        guard userNameTF.text == user, passwordTF.text == password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password",
                textField: passwordTF
            )
            return
        }
        
        //performSegue(withIdentifier: "SecondScreen", sender: nil)
        
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        if let vc2 = storyboard.instantiateViewController(withIdentifier: "SecondScreen") as? UserGreetingViewController {
//            vc2.user = "Hi," + userNameTF.text! + "!"
//            show(vc2, sender: nil)
//        }
    }
    
    
    @IBAction func uiwind(segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func forgotRegistrData(_ sender: UIButton) {
        sender.tag == 0
            ? showAlert(title: "Oops!", message: "Your name is \(user)")
            : showAlert(title: "Oooops!", message: "Your password is \(password)")
    }


    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let alertActionOk = UIAlertAction(title: "Ok", style: .default) {_ in
            textField?.text = ""
        }
        alertController.addAction(alertActionOk)
        present(alertController, animated: true, completion: nil)
    
    }
}
