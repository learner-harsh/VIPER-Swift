//
//  LoginVC.swift
//  VIPER
//
//  Created by Harsh Jaiswal on 30/08/21.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var txtFieldEmail: UITextField!
    @IBOutlet weak var txtFieldPassword: UITextField!
    
    private var _presenter: LoginPresenter!
    override func viewDidLoad() {
        super.viewDidLoad()
        _presenter = LoginPresenter(self)
    }
    
    @IBAction func loginPressed(_ sender: Any) {
        
    }
}


