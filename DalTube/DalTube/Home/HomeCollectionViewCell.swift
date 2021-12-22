//
//  HomeCollectionViewCell.swift
//  DalTube
//
//  Created by 김선오 on 2021/12/22.
//

import UIKit

class HomeCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "HomeCollectionViewCell"
    
    @IBOutlet weak var collectionImageView: UIImageView!
    @IBOutlet weak var collectionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setLayout()
    }
    
    func setLayout(){
        collectionImageView.layer.cornerRadius = CGFloat(25)
    }
    
    func setData(appName: String, appImage: UIImage?) {
        collectionLabel.text = appName
        collectionImageView.image = appImage
    }
    
}
