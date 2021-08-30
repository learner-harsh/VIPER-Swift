//
//  LoginPresenter.swift
//  VIPER
//
//  Created by Harsh Jaiswal on 30/08/21.
//

import Foundation

protocol LoginPresenterDelegate {
    func showAlert(_ message: String)
    func loginSuccess()
}

struct LoginPresenter {
    private var _delegate: LoginPresenterDelegate?
    private var interactor: LoginInteractor = LoginInteractor()
    init(_ delegate: LoginPresenterDelegate?) {
        _delegate = delegate
    }
    
    func userLogin(_ email: String?, _ password: String?) {
        let validation = LoginValidation()
        let validationResult = validation.validate(email: email ?? "", password: password ?? "")
        if validationResult.success {
            interactor.loginUser(email: email!, password: password!) { (response) in
                _delegate?.loginSuccess()
            }
        } else {
            _delegate?.showAlert(validationResult.errorMessage!)
        }
    }
}
