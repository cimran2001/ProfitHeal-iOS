//
//  RecentReportList.swift
//  ProfitHeal
//
//  Created by Imran Jabrayilov on 11.10.22.
//

import SwiftUI

struct RecentReportList: View {
    var body: some View {
        NavigationView {
            List {
                HStack {
                    Spacer()
                    RecentReportRow()
                    Spacer()
                }
            }
            .navigationTitle("Recent reports")
            
            Spacer()
        }
    }
}

struct RecentReportList_Previews: PreviewProvider {
    static var previews: some View {
        RecentReportList()
    }
}
