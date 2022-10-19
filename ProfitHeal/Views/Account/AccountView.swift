//
//  AccountView.swift
//  ProfitHeal
//
//  Created by Imran Jabrayilov on 08.10.22.
//

import SwiftUI

struct AccountView: View {
    @ObservedObject var data = Data.instance
    
    var body: some View {
        if !data.isAuthenticated {
            LoginView()
        } else {
            AuthenticatedView()
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
