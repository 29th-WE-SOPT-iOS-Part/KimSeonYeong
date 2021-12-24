//
//  NetworkResult.swift
//  DalTube
//
//  Created by 김선오 on 2021/12/24.
//

import Foundation

enum NetworkResult <T> {
    case success(T)
    case requestErr(T)
    case pathErr
    case serverErr
    case networkFail
}
