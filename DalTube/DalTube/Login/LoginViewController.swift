//
//  LoginViewController.swift
//  DalTube
//
//  Created by 김선오 on 2021/10/04.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchUpToGoToSigninView(_ sender: Any) {
        guard let pushVC = self.storyboard?.instantiateViewController(withIdentifier: "SigninViewController") else {return}
        
        self.navigationController?.pushViewController(pushVC, animated: true)
    }
    
    @IBAction func touchUpToGoToWelcomeView(_ sender: Any) {
//        guard let welcomeVC = self.storyboard?.instantiateViewController(withIdentifier: "WelcomeViewController") as? WelcomeViewController else {return}
//
//        welcomeVC.name = nameTextField.text
//        self.present(welcomeVC, animated: true, completion: nil)
        
        requestLogin()
    }
    
    func simpleAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "확인", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

extension LoginViewController {
    func requestLogin() {
        UserSignService.shared.login(email: emailTextField.text ?? "",
                                     password: passwordTextField.text ?? "") {
            responseData in
            switch responseData {
            case .success(let loginResponse) :
                guard let response = loginResponse as? LoginResponseData else {return}
                if let userData = response.data {
                    self.simpleAlert(title: response.message,
                                     message: "\(userData.name)님 환영합니다")
                }
            case .requestErr(let msg) :
                print("requestERR \(msg)")
            case .pathErr:
                print("pathErr")
            case .serverErr:
                print("serverErr")
            case .networkFail:
                print("networkFail")
            }
        }
    }
}
