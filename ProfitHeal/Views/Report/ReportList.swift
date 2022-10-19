//
//  RecentReportList.swift
//  ProfitHeal
//
//  Created by Imran Jabrayilov on 11.10.22.
//

import SwiftUI

struct ReportList: View {
    @ObservedObject var data = Data.instance
    
    private var listHeader: Text {
        Text("Recent")
            .font(.title)
    }
    
    var body: some View {
        if data.isAuthenticated {
            VStack(spacing: 0) {
                Section(header: HStack {
                    listHeader

                    Spacer()
                }.padding(.leading).padding(.top)) {
                    ReportRow()
                }
            }
        } else {
            VStack {
                Text("Log in to your account")
            }
        }
    }
}

struct ReportList_Previews: PreviewProvider {
    static var previews: some View {
        ReportList()
    }
}
