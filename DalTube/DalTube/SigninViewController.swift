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
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "WelcomeViewController") as? WelcomeViewController else {return}
        
        nextVC.name = nameTextField.text
        self.present(nextVC, animated: true, completion: nil)
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
