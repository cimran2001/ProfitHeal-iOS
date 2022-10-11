//
//  ContentView.swift
//  ProfitHeal
//
//  Created by Imran Jabrayilov on 04.10.22.
//

import SwiftUI



struct ContentView: View {
    private func getTabTitleName(_ index: Int) -> String {
        switch index {
        case 1:
            return "Home"
        case 2:
            return "Reports"
        case 3:
            return "Account"
        default:
            break
        }
        
        return "Not found"
    }
    
    @State private var selection = 1
    
    var body: some View {
        NavigationView {
            TabView(selection: $selection) {
                HomeView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                    .tag(1)
                
                ReportList()
                    .tabItem {
                        Label("Reports history", systemImage: "list.bullet.rectangle.portrait")
                    }
                    .tag(2)
                
                
                AccountView()
                    .tabItem {
                        Label("Account", systemImage: "person.crop.circle")
                    }
                    .tag(3)
            }
            .navigationTitle(getTabTitleName(selection))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
