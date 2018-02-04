//
//  User.swift
//  AnotherTry
//
//  Created by Ksenia Kolosova on 2018-02-03.
//  Copyright © 2018 Ksenia Kolosova. All rights reserved.
//

import UIKit

class User: NSObject {
    //MARK: Properties
    var uuid: String = NSUUID().uuidString
    var username: String
    var name: String
    var isManager: Bool
    
    //MARK:Initialization
    init?(uuid: String, name: String, username: String, isManager: Bool) {
        // Initialize stored properties.
        self.name = name
        self.uuid = uuid
        self.username = username
        self.isManager = isManager
   
    }

}
