//
//  SymptomSelection.swift
//  ProfitHeal
//
//  Created by Imran Jabrayilov on 08.10.22.
//

import SwiftUI

struct SymptomSelection: View {
    var body: some View {
        VStack {
            SymptomList()
            
            Button("Done", action: {
                
            })
            .foregroundColor(.black)
                
        }
    }
}

struct SymptomSelection_Previews: PreviewProvider {
    static var previews: some View {
        SymptomSelection()
    }
}
