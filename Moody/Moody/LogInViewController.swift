//
//  LogInViewController.swift
//  Moody
//
//  Created by Dean Chong San on 2019-05-04.
//  Copyright © 2019 superDeano. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {
    @IBOutlet var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logInButton.layer.cornerRadius = 4
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

        if !FileManager.default.fileExists(atPath: "userInfo.json"){
        
        do {
            let jsonFile = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!.appendingPathComponent("userInfo.json")
           
             let data = try Data(contentsOf: jsonFile)
            
             let userData = UserInfo(userInfo: data)
                
            if userName != "admin" {//userData?.userName {
                    //Alert if the username is incorrect
                    let alertWrongUsername = UIAlertController (title: "Wrong Username", message: "The username enterred is wrong, please try again.", preferredStyle: UIAlertController.Style.alert)
                    alertWrongUsername.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                    self.present(alertWrongUsername,animated: true,completion: nil)
                }
                    
            else if userPassword != "admin" {//userData?.password {
                    
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
        catch{
            print (error)
            }
        }else {
            let alertNoTrace = UIAlertController (title: "Account not found", message: "\nNo trace of account, please register", preferredStyle: UIAlertController.Style.alert)
            alertNoTrace.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            alertNoTrace.addAction(UIAlertAction(title: "Register", style: UIAlertAction.Style.default, handler: registerButton(_:)))
            self.present(alertNoTrace, animated: true)
        }
    }
    
    @IBAction func registerButton(_ sender: Any) {
        performSegue(withIdentifier: "registerSegue", sender: nil)
    }
    
}

