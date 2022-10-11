//
//  RecentReportRow.swift
//  ProfitHeal
//
//  Created by Imran Jabrayilov on 11.10.22.
//

import SwiftUI

struct ReportRow: View {
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "exclamationmark.circle")
                .font(.system(size: 40))
            
            Text("No reports")
            Spacer()
        }
    }
}

struct ReportRow_Previews: PreviewProvider {
    static var previews: some View {
        ReportRow()
    }
}
