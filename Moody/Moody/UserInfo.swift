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
    
    // To read from the JSON file
    init? (userInfo: Data){
        guard let userData = ( try? JSONSerialization.jsonObject(with: userInfo)) as? [String : Any] else { return nil}
        self.firstName = userData["firstName"] as? String ?? ""
        self.lastName = userData["lastName"] as? String ?? ""
        self.userName = userData["userName"] as? String ?? ""
        self.password = userData["password"] as? String ?? ""
    }
    
    var storingUser : [String : String] {
        return [ "firstName" : firstName,
                 "lastName" : lastName,
                 "userName" : userName,
                 "password" : password
        ]
    }

    var data : Data {
        return (try? JSONSerialization.data(withJSONObject: storingUser)) ?? Data()
    }
    var json : String { return String(data: data, encoding:  .utf8) ?? String() }
    
}
