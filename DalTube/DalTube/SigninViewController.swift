//
//  SigninViewController.swift
//  DalTube
//
//  Created by 김선오 on 2021/10/04.
//

import UIKit

class SigninViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var showPasswordButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func didTapShowPassword(_ sender: UIButton) {
        if passwordTextField.isSecureTextEntry {
            showPasswordButton.setImage(UIImage(systemName: "checkmark.rectangle.fill"), for: .normal)
            passwordTextField.isSecureTextEntry = false

        } else {
            passwordTextField.isSecureTextEntry = true
            showPasswordButton.setImage(UIImage(systemName: "rectangle"), for: .normal)
        }
    }
    
    @IBAction func touchUpToGoToWelcomeView(_ sender: Any) {
        guard let welcomeVC = self.storyboard?.instantiateViewController(withIdentifier: "WelcomeViewController") as? WelcomeViewController else {return}
        
        welcomeVC.name = nameTextField.text //name 값 전달
        self.present(welcomeVC, animated: true, completion: nil)
        //welcomeVC 에서 "다른계정로그인"을 클릭했을때 무조건 loginVC로 돌아오게 하기위해 rootViewController를 사용해야해서 1차과제때 present로 구현했던 화면전환을 push로 바꿀 수 밖에 없었다...ㅠㅠ
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
