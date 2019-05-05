//
//  LogInViewController.swift
//  Moody
//
//  Created by Dean Chong San on 2019-05-04.
//  Copyright © 2019 superDeano. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        
        let userName = userNameTF.text
        let userPassword = passwordTF.text
        
        if userName != "Admin"
        {
            //Alert if the username is incorrect
            let alertWrongUsername = UIAlertController (title: "Wrong Username", message: "The username enterred is wrong, please try again.", preferredStyle: UIAlertController.Style.alert)
            alertWrongUsername.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alertWrongUsername,animated: true,completion: nil)
        }
            
        else if userPassword != "Admin"{
            
            //Alert if the password is incorrect
            let alertWrongPassword = UIAlertController(title: "Wrong Password", message: "The password entered is wrong, please try again", preferredStyle: UIAlertController.Style.alert)
            alertWrongPassword.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alertWrongPassword, animated: true)
        }
        
        else{
           
        }
    }
    
    @IBAction func registerButton(_ sender: Any) {
        performSegue(withIdentifier: "registerSegue", sender: nil)
    }
    
}

