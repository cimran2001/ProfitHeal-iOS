//
//  ContentView.swift
//  ProfitHeal
//
//  Created by Imran Jabrayilov on 04.10.22.
//

import SwiftUI


let color = Color(red: 78.0/255.0, green: 192.0/255.0, blue: 52.0/255.0, opacity: 1.0)

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            SymptomSelection()
                .tabItem {
                    Label("Reports", systemImage: "list.bullet.rectangle.portrait")
                }
                
            
            AccountView()
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 14 Pro Max"))
            .previewDisplayName("14 Pro Max")
            
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
            .previewDisplayName("SE")
    }
}
