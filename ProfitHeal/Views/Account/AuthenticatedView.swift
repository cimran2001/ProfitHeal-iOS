//
//  AuthenticatedView.swift
//  ProfitHeal
//
//  Created by Imran Jabrayilov on 12.10.22.
//

import SwiftUI

struct AuthenticatedView: View {
    @ObservedObject var data = Data.instance
    
    private func getBalanceFormatted(balance: Int) -> String {
        let balanceInDouble = Double(balance)
        let formatted = String(format: "%.2f", balanceInDouble / 100.0)
        
        return formatted
    }
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 20)
                    .foregroundColor(.orange)
                    .frame(height: 100)
                
                HStack {
                    Spacer()
                    Text("Balance: ₼\(getBalanceFormatted(balance: data.balance))")
                        .foregroundColor(.white)
                    Spacer()
                }
            }
            
            Spacer()
            
            Label("You have sucessfully logged in", systemImage: "checkmark.circle")
                .foregroundColor(.green)
            
            Button(action: {
                data.isAuthenticated = false
            }) {
               Label("Log out", systemImage: "rectangle.portrait.and.arrow.right")
            }
            .foregroundColor(Color(uiColor: UIColor(named: "buttonText")!))
            .padding()
            
            Spacer()
        }
        .padding()
    }
}

struct AuthenticatedView_Previews: PreviewProvider {
    static var previews: some View {
        AuthenticatedView()
    }
}
