//
//  UserInfo.swift
//  Moody
//
//  Created by Dean Chong San on 2019-05-05.
//  Copyright © 2019 superDeano. All rights reserved.
//

import Foundation

class UserInfo {
    var firstName : String = ""
    var lastName : String = ""
    var userName : String = ""
    var password : String = ""
    
    init(firstName : String, lastName : String, userName: String, password: String){
        self.firstName = firstName
        self.lastName = lastName
        self.userName = userName
        self.password = password
    }
    
}
