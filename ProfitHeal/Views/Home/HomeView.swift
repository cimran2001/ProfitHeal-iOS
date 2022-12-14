//
//  Home view.swift
//  ProfitHeal
//
//  Created by Imran Jabrayilov on 09.10.22.
//

import SwiftUI

struct HomeView: View {
    @State public var sent: Bool = false
    @ObservedObject var data = Data.instance
    
    private func getDate() -> Text {
        let calendar = Calendar.current
        let date = Date()
        
        let day = calendar.component(.day, from: date)
        let monthName = calendar.monthSymbols[calendar.component(.month, from: date) - 1]
        
        return Text("Today, \(monthName) \(day)")
    }
    
    var body: some View {
        if data.isAuthenticated {
            VStack(alignment: .leading) {
                HStack {
                    Text("Hi, \(data.user.name)!")
                        .font(.title)
                    Spacer()
                    getDate()
                        .font(.title)
                }
                
                NavigationLink {
                    SymptomList(state: $sent)
                } label: {
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(.orange)
                            .frame(height: 100)
                        
                        HStack {
                            Spacer()
                            Text("Send report")
                                .foregroundColor(.white)
                            Spacer()
                        }
                    }
                }
                
                Spacer()
            }
            .padding()
        } else {
            VStack {
                Text("Log in to your account")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
