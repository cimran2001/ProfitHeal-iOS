//
//  RecentReportRow.swift
//  ProfitHeal
//
//  Created by Imran Jabrayilov on 11.10.22.
//

import SwiftUI

struct RecentReportRow: View {
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "exclamationmark.circle")
                .font(.system(size: 40))
            
            Text("No recent reports")
            Spacer()
        }
    }
}

struct RecentReportRow_Previews: PreviewProvider {
    static var previews: some View {
        RecentReportRow()
    }
}
