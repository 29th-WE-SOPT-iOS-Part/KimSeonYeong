//
//  HomeContentDataModel.swift
//  DalTube
//
//  Created by 김선오 on 2021/11/16.
//

import UIKit

struct HomeContentData {
    
    let title: String
    let information: String
    let authorImageName: String
    let thumbImageName: String
    
    func makeThumbImage() -> UIImage? {
        return UIImage(named: thumbImageName)
    }
    
    func makeAuthorImage() -> UIImage? {
        return UIImage(named: authorImageName)
    }
}
