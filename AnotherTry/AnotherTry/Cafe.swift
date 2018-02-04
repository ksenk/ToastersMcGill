//
//  Cafe.swift
//  AnotherTry
//
//  Created by Ksenia Kolosova on 2018-02-03.
//  Copyright © 2018 Ksenia Kolosova. All rights reserved.
//

import UIKit

class Cafe: NSObject {
    //MARK: Properties
    var uuid: String = NSUUID().uuidString
    var name: String
    var BeanCode: String
    var items = [Item]()
    var users = [User]()
    
    //MARK:Initialization
    init?(uuid: String, name: String, BeanCode: String, items: Array<Item>, users: Array<User>) {
        // Initialize stored properties.
        self.name = name
        self.uuid = uuid
        self.BeanCode = BeanCode
        self.items = items
        self.users = users
        
    }
    
}

