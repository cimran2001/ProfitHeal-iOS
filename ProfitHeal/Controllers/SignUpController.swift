//
//  SignUpController.swift
//  ProfitHeal
//
//  Created by Imran Jabrayilov on 18.10.22.
//

import Foundation

class SignUpController {
    static func signUp() {
        let url = URL(string: "\(Data.instance.url)/api/signup")!
        var request = URLRequest(url: url)
        
        request.httpMethod = "POST"
        
        request.setValue(
            "application/json;charset=utf-8",
            forHTTPHeaderField: "Content-Type"
        )
        
        let parameters = [
            "email": Data.instance.user.email,
            "name": Data.instance.user.name,
            "surname": Data.instance.user.surname,
            "username": Data.instance.user.loginCredentials.username,
            "password": Data.instance.user.loginCredentials.password,
            "roles": [
                "User"
            ]
        ] as [String : Any]
        
        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
        } catch let error {
            print(error.localizedDescription)
            return
        }
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if error != nil {
                print("Error \(String(describing: error))")
                Data.instance.authError = true
                return
            }
            
            if let httpResponse = response as? HTTPURLResponse {
                if httpResponse.statusCode != 200 {
                    DispatchQueue.main.async {
                        Data.instance.authError = true
                    }
                    return
                }
            }
            
            LoginController.login()
        }
        
        task.resume()
    }
}
