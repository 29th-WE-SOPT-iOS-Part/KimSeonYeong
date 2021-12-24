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
        
        dataRequest.responseData { dataResponse in
            switch dataResponse.result {
            case .success :
                guard let statusCode = dataResponse.response?.statusCode else {return}
                guard let value = dataResponse.value else {return}
                let networkResult = self.judgeLoginStatus(by: statusCode, value)
                completion(networkResult)
                
            case .failure(let err) :
                print(err)
                completion(.networkFail)
            }
        }
    }
    
    private func judgeLoginStatus(by statusCode: Int, _ data: Data) -> NetworkResult<Any> {
        switch statusCode {
        case 200: return isValidLoginData(data: data, success: true)
        case 400: return isValidLoginData(data: data, success: false)
        case 500: return .serverErr
        default : return .networkFail
        }
    }
    
    private func isValidLoginData(data: Data, success: Bool) -> NetworkResult<Any> {
        let decoder = JSONDecoder()
        guard let decodedData = try? decoder.decode(LoginResponseData.self, from: data)
        else {return .pathErr}
        
        switch success {
        case true:
            return .success(decodedData)
        case false :
            return .requestErr(decodedData)
        }
    }
}