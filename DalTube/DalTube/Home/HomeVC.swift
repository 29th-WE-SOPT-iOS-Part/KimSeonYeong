//
//  HomeVC.swift
//  DalTube
//
//  Created by 김선오 on 2021/10/27.
//

import UIKit

class HomeVC: UIViewController {
    
    @IBOutlet weak var logoButton: UIButton!
    @IBOutlet weak var myChannelButton: UIButton!
    @IBOutlet weak var watchButton: UIButton!
    @IBOutlet weak var alarmBUtton: UIButton!
    @IBOutlet weak var searchButton: UIButton!
    
    @IBOutlet weak var homeCollectionView: UICollectionView!
    @IBOutlet weak var homeTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerXib()
    }
    
    func registerXib(){
        let xibName = UINib(nibName: HomeTableViewCell.identifier, bundle: nil)
        homeTableView.register(xibName, forCellReuseIdentifier: HomeTableViewCell.identifier)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
