//
//  LogInViewController.swift
//  Moody
//
//  Created by Dean Chong San on 2019-05-04.
//  Copyright © 2019 superDeano. All rights reserved.
//
//import AWSMobileClient
import UIKit

class LogInViewController: UIViewController {
    @IBOutlet var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 4
        
//        AWSMobileClient.sharedInstance().initialize { (userState, error) in
//            if let userState = userState {
//                print("UserState: \(userState.rawValue)")
//            } else if let error = error {
//                print("error: \(error.localizedDescription)")
//            }
//        }
    
        // Do any additional setup after loading the view.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBAction func logInButton(_ sender: Any) {
        
        guard let userName = userNameTF.text else {
            return
        }
        guard let userPassword = passwordTF.text else {
            return
        }

    checkForUserInfo(userName: userName, userPassword: userPassword)
        
        
    }
    
    @IBAction func registerButton(_ sender: Any) {
        performSegue(withIdentifier: "registerSegue", sender: nil)
    }
    
    // To hide the keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    
    func checkForUserInfo (userName: String, userPassword: String) {
        
        if UserDefaults.standard.string(forKey: "username") == nil{
            
            
            let alertNoTrace = UIAlertController (title: "Account not found", message: "\nNo trace of account, please register", preferredStyle: UIAlertController.Style.alert)
            alertNoTrace.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            alertNoTrace.addAction(UIAlertAction(title: "Register", style: UIAlertAction.Style.default, handler: registerButton(_:)))
            self.present(alertNoTrace, animated: true)
        }
            
        else if UserDefaults.standard.string(forKey: "username") != userName {
            
            let alertWrongUsername = UIAlertController (title: "Wrong Username", message: "The username enterred is wrong, please try again.", preferredStyle: UIAlertController.Style.alert)
            alertWrongUsername.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alertWrongUsername,animated: true,completion: nil)
        }
            
        else if UserDefaults.standard.string(forKey: "password") != userPassword  {
            //Alert if the password is incorrect
            let alertWrongPassword = UIAlertController(title: "Wrong Password", message: "The password entered is wrong, please try again", preferredStyle: UIAlertController.Style.alert)
            alertWrongPassword.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alertWrongPassword, animated: true)
        
        }
            
        else{
            print ("Successs!!!!!!!!!!!!!!!!!!!")
            performSegue(withIdentifier: "moveToMenuSegue", sender: nil)
        }
    
    }
    
    
    
    func setUpAWS() {
    }
}

