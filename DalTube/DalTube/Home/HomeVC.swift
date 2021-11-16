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
    
    var homeContentList : [HomeContentData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initHomeContentList()
        registerXib()
        homeTableView.dataSource = self
        homeTableView.delegate = self
    }
    
    func registerXib(){
        let xibName = UINib(nibName: HomeTableViewCell.identifier, bundle: nil)
        homeTableView.register(xibName, forCellReuseIdentifier: HomeTableViewCell.identifier)
    }
    
    func initHomeContentList() {
        homeContentList.append(contentsOf: [
            HomeContentData(title: "1차 iOS 세미나 : iOS 컴포넌트 이해, Xcode 기본 사용법, View 화면전환", information: "WE SOPT ・조회수 100만회 ・ 3주 전", authorImageName: "wesoptProfile", thumbImageName: "wesoptiOSPart"),
            HomeContentData(title: "2차 iOS 세미나 : AutoLayout, StackView, TabBarController", information: "WE SOPT ・조회수 100만회 ・ 3주 전", authorImageName: "wesoptProfile", thumbImageName: "wesoptiOSPart"),
            HomeContentData(title: "3차 iOS 세미나 : ScrollView, Delegate Pattern, TableView, CollectionView", information: "WE SOPT ・조회수 100만회 ・ 3주 전", authorImageName: "wesoptProfile", thumbImageName: "wesoptiOSPart"),
            HomeContentData(title: "4차 iOS 세미나 : Cocoapods & Networking, REST API", information: "WE SOPT ・조회수 100만회 ・ 3주 전", authorImageName: "wesoptProfile", thumbImageName: "wesoptiOSPart"),
            HomeContentData(title: "7차 iOS 세미나 : Animation과 제스쳐, 데이터 전달 심화 ", information: "WE SOPT ・조회수 100만회 ・ 3주 전", authorImageName: "wesoptProfile", thumbImageName: "wesoptiOSPart")
        ])
    }
}

extension HomeVC: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 306
    }
}

extension HomeVC: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return homeContentList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: HomeTableViewCell.identifier) as? HomeTableViewCell else { return UITableViewCell() }
        
        cell.setData(appData: homeContentList[indexPath.row])
        
        return cell
    }
    
    
}
