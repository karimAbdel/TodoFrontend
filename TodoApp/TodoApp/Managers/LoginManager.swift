//
//  LoginManager.swift
//  TodoApp
//
//  Created by User on 2017-06-16.
//  Copyright © 2017 Fatih Nayebi. All rights reserved.
//

import Foundation
import ObjectMapper
import Alamofire
import ObjectMapper

class LoginResponse: Mappable {
    
    var success: Bool = false
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        success <- map["success"]
    }
}



class RegisterResponse: Mappable {
    
    var success: Bool = false
    
    required convenience init?(map: Map) {
        self.init()
    }
    
    func mapping(map: Map) {
        success <- map["success"]
    }
}






class LoginManager {
    class func logIn(userName: String,
                     password: String,
                     _ completion: @escaping (_ responseData: LoginResponse?, _ error: Bool?) -> ()) {
        
        let url = URL(string: "http://localhost:8080/login")!
        
        let headers: HTTPHeaders = [
            "userName": userName,
            "password": password
        ]
        
        WebServiceManger.sendRequest(requestHeaders: headers,
                                     url: url,
                                     requestMethod: .get,
                                     responseType: LoginResponse.self) {
                                        (responseData: LoginResponse?, error: Bool?) in
                                        completion(responseData, error)
        }
    }
    
    
    class func register(username: String,
                     password: String,
                     _ completion: @escaping (_ responseData: RegisterResponse?, _ error: Bool?) -> ()) {
        
        let url = URL(string: "http://localhost:8080/register")!
        
        let headers: HTTPHeaders = [
            "username": username,
            "password": password
        ]
        
        WebServiceManger.sendRequest(requestHeaders: headers,
                                     url: url,
                                     requestMethod: .post,
                                     responseType: RegisterResponse.self) {
                                        (responseData: RegisterResponse?, error: Bool?) in
                                        completion(responseData, error)
        }
    }

    
    
    
    
    
    
    
}






