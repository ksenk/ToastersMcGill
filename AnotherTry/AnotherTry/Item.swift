//
//  Item.swift
//  AnotherTry
//
//  Created by Ksenia Kolosova on 2018-02-03.
//  Copyright © 2018 Ksenia Kolosova. All rights reserved.
//

import UIKit

class Item: NSObject {
    
    //MARK: Properties
    var uuid: String = NSUUID().uuidString
    var name: String
    var LowStock: Bool  
    var RespUser: String //this is the ResponsibleUser's uuid

    //MARK:Initialization
    init?(uuid: String, name: String, LowStock: Bool, RespUser: String) {
        // Initialize stored properties.
        self.name = name
        self.uuid=uuid
        self.LowStock = LowStock
        self.RespUser = RespUser
}
}
