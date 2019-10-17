//
//  LogInViewController.swift
//  test-aws
//
//  Created by Dean Chong San on 2019-07-29.
//  Copyright © 2019 superDeano. All rights reserved.
//

import UIKit
import SkyFloatingLabelTextField

class LogInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Loaded to Login VC")
        
     
        logInButton.layer.cornerRadius = 15
        logInButton.layer.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        
        registerButton.layer.cornerRadius = 15
        registerButton.layer.backgroundColor = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var registerButton: UIButton!

    @IBOutlet var usernameTF: SkyFloatingLabelTextField!
    @IBOutlet var passwordTF: SkyFloatingLabelTextField!
    
    @IBAction func logIn(_ sender: Any) {
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    @IBAction func register(_ sender: Any) {
        performSegue(withIdentifier: "registerSegue", sender: nil)
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
