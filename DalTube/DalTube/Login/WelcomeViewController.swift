//
//  WelcomeViewController.swift
//  DalTube
//
//  Created by 김선오 on 2021/10/04.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    var name: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNameInLabel()
        
    }
    
    //확인
    @IBAction func goTabBarVC(_ sender: Any) {
        guard let tabBarVC = self.storyboard?.instantiateViewController(withIdentifier: "CustomTabBarController") else {return}
        
        tabBarVC.modalPresentationStyle = .fullScreen
        self.present(tabBarVC, animated: true, completion: nil)
    }
    
    
    //다른 계정으로 로그인하기
    @IBAction func touchUpToGoToLoginView(_ sender: Any) {
        guard let pvc = presentingViewController as? UINavigationController else { return }
               
              dismiss(animated: true) {
                        pvc.popToRootViewController(animated: true)
              }
    }
    
    func setNameInLabel () {
        if let n = name {
            nameLabel.text = "\(n)님"
            nameLabel.sizeToFit()
        }
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
