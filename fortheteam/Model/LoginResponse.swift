//
//  LoginResponse.swift
//  fortheteam
//
//  Created by Halil İbrahim Direktör on 23.12.2023.
//

import Foundation

struct LoginResponse: Decodable {
    let data: LoginResponseData
}

struct LoginResponseData: Decodable {
    let accessToken: String
    let refreshToken: String
}
