//
//  Report.swift
//  ProfitHeal
//
//  Created by Imran Jabrayilov on 08.10.22.
//

import Foundation


struct Report: Codable {
    var id: Int
    var date: Date
    var symptoms: [Symptom]?
}
