//
//  UserModel.swift
//  TodoApp
//
//  Created by User on 2017-06-22.
//  Copyright © 2017 Fatih Nayebi. All rights reserved.
//

import Foundation
import ObjectMapper
import RealmSwift



class UserModel: Object, Mappable {
    
    dynamic var userId: Int = 0
    dynamic var username: String = ""
    dynamic var password: String = ""
    
    
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    override class func primaryKey() -> String {
        return "userId"
    }
    
    func mapping(map: Map) {
        userId <- map["userId"]
        username <- map["username"]
        password <- map["password"]
        
    }
}
