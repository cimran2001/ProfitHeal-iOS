//
//  HomeStatus.swift
//  ProfitHeal
//
//  Created by Imran Jabrayilov on 11.10.22.
//

import SwiftUI

struct HomeStatus: View {
    private func getDate() -> String {
        let calendar = Calendar.current
        let date = Date()
        
        let day = calendar.component(.day, from: date)
        let monthName = calendar.monthSymbols[calendar.component(.month, from: date) - 1]
        
        return "\(monthName) \(day)"
    }
    
    var body: some View {
        NavigationView {
            List {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.orange)
                        .border(.red)
                        .padding(.all, -50)
                    
                    VStack {
                        HStack {
                            Spacer()
                            Text("Your balance: 5.00 AZN")
                                .foregroundColor(.white)
                                .shadow(color: .gray, radius: 1, x: 0.5, y: 0.5)
                        }
                        Spacer()
                        
                        HStack {
                            Text("You haven't posted today!")
                                .foregroundColor(.white)
                                .shadow(color: .gray, radius: 1, x: 0.5, y: 0.5)
                            
                            Spacer()
                            
                            Text(">")
                                .foregroundColor(.white)
                                .shadow(color: .gray, radius: 1, x: 0.5, y: 0.5)
                        }
                        
                        Spacer()
                    }
                    .padding(10)
                }
                .frame(height: 150)
            }
            .padding(0)
            .navigationTitle("Today, \(getDate())")
        }
        .frame(height: 300)
        .padding(0)
    }
}

struct HomeStatus_Previews: PreviewProvider {
    static var previews: some View {
        HomeStatus()
    }
}
