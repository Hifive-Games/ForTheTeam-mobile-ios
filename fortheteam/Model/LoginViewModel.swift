//
//  LoginViewModal.swift
//  fortheteam
//
//  Created by Halil İbrahim Direktör on 23.12.2023.
//

import Foundation

class LoginViewModel: ObservableObject {

    @Published var username: String = ""
    @Published var password: String = ""

    func login() {
        LoginAction(
            parameters: LoginRequest(
                username: username,
                password: password
            )
        ).call { _ in
            // dashboarda aktar
        }
    }
}
