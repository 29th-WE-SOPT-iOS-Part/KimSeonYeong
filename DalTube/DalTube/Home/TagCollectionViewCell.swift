//
//  TagCollectionViewCell.swift
//  DalTube
//
//  Created by 김선오 on 2021/12/22.
//

import UIKit

class TagCollectionViewCell: UICollectionViewCell {

    static let identifier : String = "TagCollectionViewCell"
    
    @IBOutlet weak var tagLabel: UILabel!
    
    override func awakeFromNib() {
        setLayout()
        super.awakeFromNib()
    }
    
    func setLayout() {
        tagLabel.layer.cornerRadius = 17
        tagLabel.layer.borderWidth = 1
        tagLabel.layer.borderColor = UIColor(red: 212, green: 212, blue: 212, alpha: 1).cgColor
        tagLabel.layer.backgroundColor = UIColor(red: 242, green: 242, blue: 242, alpha: 1).cgColor
    }

    func setData(appName: String) {
        tagLabel.text = appName
    }
}
