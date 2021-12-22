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
    
    @IBOutlet weak var homeTableView: UITableView!
    @IBOutlet weak var homeCollectionView: UICollectionView!
    
    
    //MARK : TableViewDataList
    var homeContentList : [HomeContentData] = []
    var homeTopList : [HomeTopData] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        initContentList()
        registerXib()
        homeTableView.dataSource = self
        homeTableView.delegate = self
        homeCollectionView.dataSource = self
        homeCollectionView.delegate = self
    }
    
    func registerXib(){
        homeTableView.register(UINib(nibName: HomeTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: HomeTableViewCell.identifier)
        
        homeCollectionView.register(UINib(nibName: HomeCollectionViewCell.identifier, bundle: .main), forCellWithReuseIdentifier: HomeCollectionViewCell.identifier)

    }
    
    func initContentList() {
        homeContentList.append(contentsOf: [
            HomeContentData(title: "1차 iOS 세미나 : iOS 컴포넌트 이해, Xcode 기본 사용법, View 화면전환", information: "WE SOPT ・조회수 100만회 ・ 3주 전", authorImageName: "wesoptProfile", thumbImageName: "wesoptiOSPart"),
            HomeContentData(title: "2차 iOS 세미나 : AutoLayout, StackView, TabBarController", information: "WE SOPT ・조회수 100만회 ・ 3주 전", authorImageName: "wesoptProfile", thumbImageName: "wesoptiOSPart"),
            HomeContentData(title: "3차 iOS 세미나 : ScrollView, Delegate Pattern, TableView, CollectionView", information: "WE SOPT ・조회수 100만회 ・ 3주 전", authorImageName: "wesoptProfile", thumbImageName: "wesoptiOSPart"),
            HomeContentData(title: "4차 iOS 세미나 : Cocoapods & Networking, REST API", information: "WE SOPT ・조회수 100만회 ・ 3주 전", authorImageName: "wesoptProfile", thumbImageName: "wesoptiOSPart"),
            HomeContentData(title: "7차 iOS 세미나 : Animation과 제스쳐, 데이터 전달 심화 ", information: "WE SOPT ・조회수 100만회 ・ 3주 전", authorImageName: "wesoptProfile", thumbImageName: "wesoptiOSPart")
        ])
        
        homeTopList.append(contentsOf: [
           HomeTopData(name: "iOSPart", iconImageName: "ggamju"),
           HomeTopData(name: "ServerPart", iconImageName: "ggamju"),
           HomeTopData(name: "WebPart", iconImageName: "ggamju"),
           HomeTopData(name: "AndroidPart", iconImageName: "ggamju"),
           HomeTopData(name: "DesignPart", iconImageName: "ggamju"),
           HomeTopData(name: "PlanPart", iconImageName: "ggamju"),

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

//MARK : CollectionViewDataList

extension HomeVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeCollectionViewCell.identifier, for: indexPath) as? HomeCollectionViewCell else {return UICollectionViewCell()}
        
        cell.setData(appName: homeTopList[indexPath.row].name, appImage: homeTopList[indexPath.row].makeIconImage())
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return homeTopList.count
    }


}

extension HomeVC: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 75, height: 105)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionView, minimumLineSpacingForSectiont section : Int) -> CGFloat {
        return 0
    }
    
    func collectionVIew(_ collectionView: UICollectionView, layout collectionVIewLayout: UICollectionView, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
