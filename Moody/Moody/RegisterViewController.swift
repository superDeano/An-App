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
        let radius: CGFloat = 6
        registerButton.layer.cornerRadius = radius
        firstNameTF.layer.cornerRadius = radius
        lastNameTF.layer.cornerRadius = radius
        userNameTF.layer.cornerRadius = radius
        passwordTF.layer.cornerRadius = radius
    }
    
    
    
    @IBAction func register(_ sender: Any) {
        
       guard let firstName = firstNameTF.text , firstName.count > 0 else {
        presentAlertForUnfilledTextFields()
        return }
        
        guard let lastName = lastNameTF.text , lastName.count > 0 else {
            presentAlertForUnfilledTextFields()
            return
        }
        guard let userName = userNameTF.text , userName.count > 0 else {
            presentAlertForUnfilledTextFields()
            return
        }
        guard let password = passwordTF.text , password.count > 0 else {
            presentAlertForUnfilledTextFields()
            return
        }
        
        let newUser = UserInfo(firstName: firstName, lastName: lastName, userName: userName, password: password)
        
        storeUserInfo(user: newUser)
        
        performSegue(withIdentifier: "returnToLogIn", sender: nil)
    }
    
    func presentAlertForUnfilledTextFields () {
        
        let alertEmptyField = UIAlertController(title: "Error", message: "One or more fields have not been filled. Please fill all fields.", preferredStyle: UIAlertController.Style.alert)
        
        alertEmptyField.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        self.present(alertEmptyField, animated: true)
    }
    
    //TODO: Complete this
    func storeUserInfo (user : UserInfo) -> Void {
       
        UserDefaults.standard.set(user.firstName, forKey: "firstName")
        UserDefaults.standard.set(user.lastName, forKey:"lastName")
        UserDefaults.standard.set(user.userName, forKey: "username")
        UserDefaults.standard.set(user.password, forKey: "password")
        print("username: \(user.userName)\npassword: \(user.password)")
        print("Everything stored")
    }
    
    // To hide the keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

