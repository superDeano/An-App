//
//  RegisterViewController.swift
//  Moody
//
//  Created by Dean Chong San on 2019-05-04.
//  Copyright © 2019 superDeano. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet var registerButton: UIButton!
    @IBOutlet var firstNameTF: UITextField!
    @IBOutlet var lastNameTF: UITextField!
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        registerButton.layer.cornerRadius = 4
        firstNameTF.layer.cornerRadius = 4
        lastNameTF.layer.cornerRadius = 4
        userNameTF.layer.cornerRadius = 4
        passwordTF.layer.cornerRadius = 4
    }
    
    
    
    @IBAction func register(_ sender: Any) {
        let firstName = firstNameTF.text
        let lastName = lastNameTF.text
        let userName = userNameTF.text
        let password = passwordTF.text
        
        if (firstName == "" || lastName == "" || userName == "" || password == "") {
            
            let alertEmptyField = UIAlertController(title: "Error", message: "One or more fields have not been filled. Please fill all fields.", preferredStyle: UIAlertController.Style.alert)
            
            alertEmptyField.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            
            self.present(alertEmptyField, animated: true)
        }
        
        let newUser = UserInfo(firstName: firstName!, lastName: lastName!, userName: userName!, password: password!)
        
        storeUserInfo(user: newUser)
        
        performSegue(withIdentifier: "returnToLogIn", sender: nil)
    }
    
    func storeUserInfo (user : UserInfo) -> Void {
        let jsonFile = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!.appendingPathComponent("userInfo.json")
        
        do {
            try user.data.write(to : jsonFile)
            print ("UserInfo written!")
        }catch {
            print (error)
        }
    }
}

