//
//  UserSignService.swift
//  DalTube
//
//  Created by 김선오 on 2021/12/24.
//

import Foundation
import Alamofire

struct UserSignService {
    static let shared = UserSignService()
    
    func login(email:String, password: String, completion: @escaping (NetworkResult<Any>) -> (Void)){
        
        let url = APIConstants.loginURL
        
        let header : HTTPHeaders = [
            "Content-Type" : "application/json"
        ]
        
        let body : Parameters = [
            "email" : email,
            "password" : password
        ]
        
        let dataRequest = AF.request(url, method: .post, parameters: body, encoding: JSONEncoding.default, headers: header)
    }
}
