//
//  SymptomList.swift
//  ProfitHeal
//
//  Created by Imran Jabrayilov on 08.10.22.
//

import SwiftUI

struct SymptomList: View {
    @Binding var state: Bool
    
    var body: some View {
        if !state {
            VStack {
                List {
                    SymptomRow()
                    SymptomRow()
                    SymptomRow()
                    SymptomRow()
                    SymptomRow()
                    SymptomRow()
                    SymptomRow()
                    SymptomRow()
                    SymptomRow()
                    SymptomRow()
                }
                
                Button {
                    state = true
                } label: {
                    Label("Send", systemImage: "paperplane")
                        .foregroundColor(.black)
                }
                
                Spacer()
            }
            .navigationTitle("Symptoms")
        } else {
            VStack {
                Label("You have already sent a report today!", systemImage: "checkmark.circle")
            }
            .navigationTitle("Report")
        }
    }
}

struct SymptomList_Previews: PreviewProvider {
    @State static var state: Bool = false
    
    static var previews: some View {
        SymptomList(state: $state)
    }
}
