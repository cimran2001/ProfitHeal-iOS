//
//  SymptomStates.swift
//  ProfitHeal
//
//  Created by Imran Jabrayilov on 08.10.22.
//

import Foundation

enum SymptomStates: String, CaseIterable, Identifiable {
    case yes, no, none
    var id: Self { self }
}
