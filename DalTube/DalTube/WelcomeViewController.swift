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
    
    //다른 계정으로 로그인하기
    @IBAction func touchUpToGoToLoginView(_ sender: Any) {
//        guard let loginVC = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") else {return}
        
        self.navigationController?.popToRootViewController(animated: true)
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
