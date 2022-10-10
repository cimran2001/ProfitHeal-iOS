//
//  Home view.swift
//  ProfitHeal
//
//  Created by Imran Jabrayilov on 09.10.22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                HomeStatus()
                RecentReportList()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
