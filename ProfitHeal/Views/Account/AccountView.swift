//
//  AccountView.swift
//  ProfitHeal
//
//  Created by Imran Jabrayilov on 08.10.22.
//

import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct AccountView: View {
    var authenticated: Bool = false
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        if !authenticated {
            VStack(alignment: .leading) {
                Text("Username/Email")
                    .font(.callout)
                    .bold()
                TextField("", text: $username)
                    .padding()
                    .background(lightGreyColor)
                    .cornerRadius(5.0)
                
                Text("Password")
                    .font(.callout)
                    .bold()
                SecureField("", text: $password)
                    .padding()
                    .background(lightGreyColor)
                    .cornerRadius(5.0)
                
                Button(action: {}) {
                    HStack(alignment: .center) {
                        Spacer()
                        Label("Sign in", systemImage: "key")
                        Spacer()
                    }
                }
                .padding()
                .background(Color(UIColor(lightGreyColor)))
                .cornerRadius(5.0)
                .padding(.top)
            }.padding()
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
