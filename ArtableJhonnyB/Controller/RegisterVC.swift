//
//  RegisterVC.swift
//  ArtableJhonnyB
//
//  Created by junaid on 18/05/2019.
//  Copyright © 2019 junaid. All rights reserved.
//

import UIKit
import Firebase
class RegisterVC: UIViewController {
    //MARK:- IBOutlets
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var passwordCheck_Img: UIImageView!
    @IBOutlet weak var confirmCheckPass_Img: UIImageView!
    
    // MARK:- OVERRRIDEN Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()
        passwordTextField.addTarget(self, action: #selector(handlepasswordMatch), for: .editingChanged)
        confirmPasswordTextField.addTarget(self, action: #selector(handlepasswordMatch), for: .editingChanged)

    }
    
    //MARK :- @OBJC Functions
    @objc func handlepasswordMatch(_ textField : UITextField)
    {
        guard let passwordText = passwordTextField.text else {return}
        
        if textField == confirmPasswordTextField
        {
            passwordCheck_Img.isHidden = false
            confirmCheckPass_Img.isHidden = false
        }
        else {
            if passwordText.isEmpty
            {
                passwordCheck_Img.isHidden = true
                confirmCheckPass_Img.isHidden = true
                confirmPasswordTextField.text = ""
            }
        }
        if confirmPasswordTextField.text == passwordTextField.text
        {
            passwordCheck_Img.image = #imageLiteral(resourceName: "green_check")
            confirmCheckPass_Img.image = #imageLiteral(resourceName: "green_check")
        }
        else {
            passwordCheck_Img.image = #imageLiteral(resourceName: "red_check")
            confirmCheckPass_Img.image = #imageLiteral(resourceName: "red_check")
        }
    }
    //MARK:- IBActions
    @IBAction func registerButtonTapped(_ sender: Any) {
        guard let userame = userNameTextField.text, !userame.isEmpty,
        let password = passwordTextField.text , !password.isEmpty,
        let email = emailTextField.text , !email.isEmpty
            else {return}
        activityIndicator.startAnimating()
        Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
            if let error = error
            {
                debugPrint(error)
                return
            }
            self.activityIndicator.stopAnimating()
            print("Successfully Registerd")
        }
    }
    
}
