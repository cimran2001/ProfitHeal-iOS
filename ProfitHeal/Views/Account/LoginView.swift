//
//  LoginView.swift
//  ProfitHeal
//
//  Created by Imran Jabrayilov on 12.10.22.
//

import SwiftUI

struct LoginView: View {
    @State var username: String = ""
    @State var password: String = ""
    
    @ObservedObject var data = Data.instance
    
    var body: some View {
        VStack(alignment: .leading) {
            InputField(title: "Username", text: $username)
            
            SecureInputField(title: "Password", text: $password)
            
            Button(action: {
                data.user.loginCredentials.username = username
                data.user.loginCredentials.password = password
                
                LoginController.login()
            }) {
                HStack(alignment: .center) {
                    Spacer()
                    Label("Sign in", systemImage: "key")
                        .foregroundColor(Color(uiColor: UIColor(named: "buttonText")!))
                    Spacer()
                }
            }
            .padding()
            .background(Color(uiColor: UIColor(named: "textFieldBackground")!))
            .cornerRadius(5.0)
            .padding(.top)
            .disabled(username == "" || password == "")
            .alert("Invalid username/password", isPresented: $data.authError, actions: {
                Button("Ok") {
                    data.authError = false
                }
            })
            
            
            NavigationLink {
                SignUpView()
            } label: {
                HStack {
                    Spacer()
                    Text("Create new account")
                        .foregroundColor(Color(uiColor: UIColor(named: "buttonText")!))
                    Spacer()
                }
                .foregroundColor(.blue)
                .padding()
            }
            
        }.padding()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
