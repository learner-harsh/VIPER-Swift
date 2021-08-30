//
//  LoginValidation.swift
//  MVC
//
//  Created by Harsh Jaiswal on 29/08/21.
//

import Foundation
struct LoginValidation  {
    func validate(email: String, password: String) -> LoginValidationResult {
        if(!email.isEmpty && !password.isEmpty) {
            if (email.validateEmail()) {
                return LoginValidationResult(success: true, errorMessage: nil)
            } else {
                return LoginValidationResult(success: false, errorMessage: "Please enter a valid email")
            }
        }
        return LoginValidationResult(success: false, errorMessage: "Please enter valid credentials")
    }
}
