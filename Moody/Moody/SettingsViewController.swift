//
//  SettingsViewController.swift
//  Moody
//
//  Created by Dean Chong San on 2019-05-06.
//  Copyright © 2019 superDeano. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

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
    @IBAction func signOut(_ sender: Any) {
        performSegue(withIdentifier: "signOutSegue", sender: nil)
    }
    
}
