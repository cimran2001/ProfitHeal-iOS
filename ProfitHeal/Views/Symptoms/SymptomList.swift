//
//  SymptomList.swift
//  ProfitHeal
//
//  Created by Imran Jabrayilov on 08.10.22.
//

import SwiftUI

struct SymptomList: View {
    var body: some View {
        NavigationView {
            List {
                SymptomRow()
                SymptomRow()
                SymptomRow()
                SymptomRow()
                SymptomRow()
            }
            .navigationTitle("Symptoms")
        }
        
    }
}

struct SymptomList_Previews: PreviewProvider {
    static var previews: some View {
        SymptomList()
    }
}
