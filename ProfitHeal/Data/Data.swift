//
//  Data.swift
//  ProfitHeal
//
//  Created by Imran Jabrayilov on 12.10.22.
//

import Foundation


final class Data: ObservableObject {
    public var user: User = User()
    public let url = "http://localhost:5113"
    
    @Published public var isAuthenticated: Bool = false
    
    public var token: String = ""
    @Published public var authError: Bool = false
    
    @Published public var balance: Int = 0
    
    static var instance = Data()
    private init() { }
}
