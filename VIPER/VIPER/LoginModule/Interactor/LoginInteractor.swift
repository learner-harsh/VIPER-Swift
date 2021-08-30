//
//  LoginInteractor.swift
//  VIPER
//
//  Created by Harsh Jaiswal on 30/08/21.
//

import Foundation

struct LoginInteractor {
    func loginUser(email: String, password: String, completion : @escaping (_ result: LoginResponse?) -> Void) {
        let loginRequest = LoginRequest(email: email, password: password)
        let loginUrl = URL(string: ApiEndpoints.login)!
        let httpUtility = HttpUtility()
        do {
            let loginPostBody = try JSONEncoder().encode(loginRequest)
            httpUtility.postApiData(requestUrl: loginUrl, requestBody: loginPostBody, resultType: LoginResponse.self) { (loginApiResponse) in
                _ = completion(loginApiResponse)
            }
        } catch let error {
            debugPrint(error)
        }
    }
}
