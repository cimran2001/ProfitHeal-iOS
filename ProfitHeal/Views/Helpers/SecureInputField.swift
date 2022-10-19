//
//  SecuredInputField.swift
//  ProfitHeal
//
//  Created by Imran Jabrayilov on 12.10.22.
//

import SwiftUI

struct SecureInputField: View {
    var title: String = ""
    @Binding var text: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.callout)
            SecureField("", text: $text)
                .padding()
                .background(Color(uiColor: UIColor(named: "textFieldBackground")!))
                .cornerRadius(5.0)
        }
    }
}

struct SecureInputField_Previews: PreviewProvider {
    @State static var text = "input"
    static var previews: some View {
        SecureInputField(text: $text)
    }
}
