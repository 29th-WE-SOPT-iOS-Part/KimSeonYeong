//
//  HomeTableViewCell.swift
//  DalTube
//
//  Created by 김선오 on 2021/11/16.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    static let identifier = "HomeTableViewCell"
    
    @IBOutlet weak var thumbImageVIew: UIImageView!
    @IBOutlet weak var authorImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var informationLabel: UILabel!
    @IBOutlet weak var moreButton: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setData(appData: HomeContentData) {
        thumbImageVIew.image = appData.makeThumbImage()
        authorImageView.image = appData.makeAuthorImage()
        titleLabel.text = appData.title
        informationLabel.text = appData.information
    }
}
