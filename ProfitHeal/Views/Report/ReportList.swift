//
//  RecentReportList.swift
//  ProfitHeal
//
//  Created by Imran Jabrayilov on 11.10.22.
//

import SwiftUI

struct ReportList: View {
    private var listHeader: Text {
        Text("Recent")
            .font(.title)
    }
    
    var body: some View {
        VStack(spacing: 0) {
            Section(header: HStack {
                listHeader

                Spacer()
            }.padding(.leading).padding(.top)) {
                ReportRow()
            }
        }
    }
}

struct ReportList_Previews: PreviewProvider {
    static var previews: some View {
        ReportList()
    }
}
