//
//  HomeStatus.swift
//  ProfitHeal
//
//  Created by Imran Jabrayilov on 11.10.22.
//

import SwiftUI

struct HomeStatus: View {
    private func getDate() -> Text {
        let calendar = Calendar.current
        let date = Date()
        
        let day = calendar.component(.day, from: date)
        let monthName = calendar.monthSymbols[calendar.component(.month, from: date) - 1]
        
        return Text("Today, \(monthName) \(day)")
            .font(.title)
            .bold()
    }
    
    var body: some View {
        VStack(spacing: 0) {
            Section(header: HStack {
                getDate()
                Spacer()
            }
                .padding(.leading)
                .padding(.top)
            ) {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.orange)
                        .padding(10)
                    
                    
                    VStack {
                        HStack {
                            Spacer()
                            Text("Your balance: 5.00 AZN")
                                .foregroundColor(.white)
                                .shadow(color: .gray, radius: 1, x: 0.5, y: 0.5)
                        }
                        Spacer()
                        
                        NavigationLink {
                            HomeView()
                        } label: {
                            HStack {
                                Text("You haven't posted today!")
                                    .foregroundColor(.white)
                                    .shadow(color: .gray, radius: 1, x: 0.5, y: 0.5)
                                
                                Spacer()
                                
                                Text(">")
                                    .foregroundColor(.white)
                                    .shadow(color: .gray, radius: 1, x: 0.5, y: 0.5)
                            }
                        }
                        
                        Spacer()
                    }
                    .padding(20)
                }
                .frame(height: 150)
            }
        }
    }
}

struct HomeStatus_Previews: PreviewProvider {
    static var previews: some View {
        HomeStatus()
    }
}
