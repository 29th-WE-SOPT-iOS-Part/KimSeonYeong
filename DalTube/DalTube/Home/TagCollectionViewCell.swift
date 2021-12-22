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
        super.awakeFromNib()
        setLayout()
    }
    
    func setLayout() {
        layer.cornerRadius = 13
        layer.borderColor = UIColor(red: 218, green: 218, blue: 218, alpha: 1).cgColor
        layer.backgroundColor = UIColor(red: 242, green: 242, blue: 242, alpha: 1).cgColor
    }

    func setData(appName: String) {
        tagLabel.text = appName
    }
}
