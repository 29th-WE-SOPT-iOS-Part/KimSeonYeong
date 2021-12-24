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
    }
    
    func simpleAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "확인", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}
