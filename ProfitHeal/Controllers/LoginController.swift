//
//  LoginController.swift
//  ProfitHeal
//
//  Created by Imran Jabrayilov on 12.10.22.
//

import Foundation

class LoginController {
    static func login() {
        let url = URL(string: "\(Data.instance.url)/api/login")!
        var request = URLRequest(url: url)
        
        request.httpMethod = "POST"
        
        request.setValue(
            "application/json;charset=utf-8",
            forHTTPHeaderField: "Content-Type"
        )
        
        let parameters = [
            "username": Data.instance.user.loginCredentials.username,
            "password": Data.instance.user.loginCredentials.password
        ]
        
        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
        } catch let error {
            print(error.localizedDescription)
            return
        }
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if error != nil {
                print("Error \(String(describing: error))")
                DispatchQueue.main.async {
                    Data.instance.authError = true
                }
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
            
            let token = String(bytes: data!, encoding: .utf8)!
            
            DispatchQueue.main.async {
                Data.instance.token = token
            }
            
            print(token)
            
            getUserData()
        }

        task.resume()
    }
    
    static func getUserData() {
        var components = URLComponents(string: "\(Data.instance.url)/api/user")!
        components.queryItems = [
            URLQueryItem(name: "username", value: Data.instance.user.loginCredentials.username)
        ]
        
        var request = URLRequest(url: components.url!)
        
        request.httpMethod = "GET"
        
        request.setValue(
            "Bearer \(Data.instance.token)",
            forHTTPHeaderField: "Authorization"
        )
        
        request.setValue(
            "application/json;charset=utf-8",
            forHTTPHeaderField: "Content-Type"
        )
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if error != nil {
                print("Error \(String(describing: error))")
                Data.instance.authError = true
                return
            }

            if let httpResponse = response as? HTTPURLResponse {
                if httpResponse.statusCode != 200 {
                    print(httpResponse.statusCode)
                    Data.instance.authError = true
                    return
                }
            }

            
            do {
                let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers) as! [String:AnyObject]
                
                Data.instance.user.id = json["id"] as! Int
                Data.instance.user.name = json["name"] as! String
                Data.instance.user.surname = json["surname"] as! String
                Data.instance.user.email = json["email"] as! String

                DispatchQueue.main.async {
                    Data.instance.isAuthenticated = true
                }
            } catch {
                Data.instance.authError = true
            }
        }
        
        task.resume()
    }
}
