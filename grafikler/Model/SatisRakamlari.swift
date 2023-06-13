//
//  SatisRakamlari.swift
//  grafikler
//
//  Created by Osman Esad on 13.06.2023.
//

import SwiftUI

struct SatisRakamlari: Identifiable {
   
    
    var id: UUID = .init()
    var date: Date
    var sales: Double
    
    var month: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM"
        return dateFormatter.string(from: date)
    }
}

extension [SatisRakamlari] {
    func findSales(_ on: String) -> Double?{
        if let sale = self.first(where: { $0.month == on
            
        }) {
            return sale.sales
        }
        return nil
    }
    
    func index(_ on: String) -> Int {
        if let index = self.firstIndex(where: { $0.month == on
            
        }) {
            return index
        }
        return 0
    }
}

var coffeeSales: [SatisRakamlari] = [
    .init(date: .createDate(1,1,2023), sales: 45),
    .init(date: .createDate(1,2,2023), sales: 23),
    .init(date: .createDate(1,3,2023), sales: 47),
    .init(date: .createDate(1,4,2023), sales: 12),
    .init(date: .createDate(1,5,2023), sales: 38)
    
]

extension Date {
    static func createDate(_ day: Int, _ month: Int, _ year: Int) -> Date {
        var components = DateComponents()
        components.day = day
        components.month = month
        components.year = year
        
        let calender = Calendar.current
        let date = calender.date(from: components) ?? .init()
        
        return date
    }
}
