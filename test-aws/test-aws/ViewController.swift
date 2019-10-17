//
//  ViewController.swift
//  test-aws
//
//  Created by Dean Chong San on 2019-07-28.
//  Copyright © 2019 superDeano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        performSegue(withIdentifier: "loginSegue", sender: nil)
    }
   
}

