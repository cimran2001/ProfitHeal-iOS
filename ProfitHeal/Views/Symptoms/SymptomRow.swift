//
//  SymptomRow.swift
//  ProfitHeal
//
//  Created by Imran Jabrayilov on 08.10.22.
//

import SwiftUI

struct SymptomRow: View {
    @State private var selectedSymptomState: SymptomStates = .none
    
    var body: some View {
        HStack {
            Image("lungs")
                .resizable()
                .frame(width: 20, height: 20)
            
            Text("Cough")
            
            Spacer()
            
            Picker("State", selection: $selectedSymptomState) {
                Text("No").tag(SymptomStates.no)
                Text("Yes").tag(SymptomStates.yes)
            }
            .frame(width: 100)
            .clipped()
            .pickerStyle(.segmented)
        }
    }
    
    func getState() -> SymptomStates{
        return selectedSymptomState
    }
}

struct SymptomRow_Previews: PreviewProvider {
    static var previews: some View {
        SymptomRow()
    }
}
