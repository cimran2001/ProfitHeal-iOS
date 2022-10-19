//
//  User.swift
//  ProfitHeal
//
//  Created by Imran Jabrayilov on 11.10.22.
//

import Foundation

//class User: Codable {
//    var id: Int = 0
//    var name: String = ""
//    var surname: String = ""
//    var birthday: Date = Date()
//    var email: String = ""
//    var roles: [Role]? = nil
//    var reports: [Report]? = nil
//    var loginCredentials: LoginCredentials = LoginCredentials()
//}

//fileprivate enum CodingKeys: String, CodingKey {
//    case id = "id"
//    case name = "name"
//    case surname = "surname"
//    case birthday = "birthday"
//    case email = "email"
//    case login
//}

final class User : Codable {
    var id : Int = 0
    var name : String = ""
    var surname : String = ""
    var email : String = ""
    var loginCredentials : LoginCredentials = LoginCredentials()
}
