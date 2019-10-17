//
//  SignUpViewController.swift
//  test-aws
//
//  Created by Dean Chong San on 2019-07-29.
//  Copyright © 2019 superDeano. All rights reserved.
//

import UIKit
import AwesomeTextFieldSwift

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerButton.layer.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        registerButton.layer.cornerRadius = 15
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var registerButton: UIButton!
    @IBOutlet var firstNameTF: AwesomeTextField!
    @IBOutlet var lastNameTF: AwesomeTextField!
    @IBOutlet var usernameTF: AwesomeTextField!
    @IBOutlet var passwordTF: AwesomeTextField!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.setNavigationBarHidden(false, animated: animated)
        self.navigationItem.title = "Register"
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
