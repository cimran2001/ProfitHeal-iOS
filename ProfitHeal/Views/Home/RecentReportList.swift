//
//  RecentReportList.swift
//  ProfitHeal
//
//  Created by Imran Jabrayilov on 11.10.22.
//

import SwiftUI

struct RecentReportList: View {
    private var listHeader: Text {
        Text("Recent reports")
            .font(.title)
            .bold()
    }
    
    var body: some View {
        VStack(spacing: 0) {
            Section(header: HStack {
                listHeader
                Spacer()
            }.padding(.leading).padding(.top)) {
                RecentReportRow()
            }
        }
    }
}

struct RecentReportList_Previews: PreviewProvider {
    static var previews: some View {
        RecentReportList()
    }
}
