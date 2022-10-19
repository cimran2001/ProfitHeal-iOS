//
//  SignUpView.swift
//  ProfitHeal
//
//  Created by Imran Jabrayilov on 12.10.22.
//

import SwiftUI

struct SignUpView: View {
    @State var email: String = ""
    @State var username: String = ""
    @State var password: String = ""
    @State var passwordRepeat: String = ""
    @State var name: String = ""
    @State var surname: String = ""
    @State var birthday: Date = Date()
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                    InputField(title: "Name", text: $name)
                    InputField(title: "Surname", text: $surname)
            }
            
            InputField(title: "Email", text: $email)
            InputField(title: "Username", text: $username)
            SecureInputField(title: "Password", text: $password)
            SecureInputField(title: "Repeat password", text: $passwordRepeat)
            
            Spacer()
            
            Button(action: {
                Data.instance.user.email = email
                Data.instance.user.name = name
                Data.instance.user.surname = surname
                Data.instance.user.loginCredentials.username = username
                Data.instance.user.loginCredentials.password = password
                
                SignUpController.signUp()
            }) {
                HStack(alignment: .center) {
                    Spacer()
                    Text("Sign up")
                        .foregroundColor(Color(uiColor: UIColor(named: "buttonText")!))
                    Spacer()
                }
            }
            .padding()
            .background(Color(uiColor: UIColor(named: "textFieldBackground")!))
            .cornerRadius(5.0)
            .padding(.top)
            .disabled(name == "" || surname == "" || email == "" || username == "" || password == "" || password != passwordRepeat)
        }
        .padding()
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
