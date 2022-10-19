//
//  InputField.swift
//  ProfitHeal
//
//  Created by Imran Jabrayilov on 12.10.22.
//

import SwiftUI

struct InputField: View {
    var title: String = ""
    @Binding var text: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.callout)
            TextField("", text: $text)
                .padding()
                .background(Color(uiColor: UIColor(named: "textFieldBackground")!))
                .cornerRadius(5.0)
        }
    }
}

struct InputField_Previews: PreviewProvider {
    @State static var text = "input"
    static var previews: some View {
        InputField(text: $text)
    }
}
