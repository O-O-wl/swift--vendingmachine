//
//  Money.swift
//  VendingMachine
//
//  Created by 이동영 on 16/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

struct Money {
    enum Unit: CustomStringConvertible {
        case won
        case dollar
        case euro
        
        var description: String {
            switch self {
            case .won:
                return "원"
            case .dollar:
                return "$"
            case .euro:
                return "€"
            }
        }
    }
    
    private let unit: Unit = .won
    private var value: Int
    
    init(value: Int) {
        self.value = value
    }
}
// MARK: - + CustomStringConvertible
extension Money: CustomStringConvertible {
    var description: String {
        let numberFormmater = NumberFormatter()
        numberFormmater.numberStyle = .decimal
        let price = numberFormmater.string(from: NSNumber(value: value)) ?? "\(value)"
        return price + unit.description
    }
    
}
// MARK: - + Comparable
extension Money: Comparable {
    
    static func < (lhs: Money, rhs: Money) -> Bool {
        return lhs.value < rhs.value
    }
    
    static func < (lhs: Money, rhs: Int) -> Bool {
        return lhs.value < rhs
    }
    
    static func < (lhs: Int, rhs: Money) -> Bool {
        return lhs < rhs.value
    }
}
// MARK: - + Operation overloading
extension Money {
    
    static func + ( lhs: Money, rhs: Money) -> Money {
        return Money(value: lhs.value + rhs.value)
    }
    
    static func - ( lhs: Money, rhs: Money) -> Money {
        return Money(value: lhs.value - rhs.value)
    }
    
    static func += (lhs: inout Money, rhs: Money) {
        lhs.value += rhs.value
    }
    
    static func -= ( lhs: inout Money, rhs: Money) {
        lhs.value -= rhs.value
    }
    
    static func - (lhs: Money, rhs: Int) -> Money {
        return lhs - Money(value: rhs)
    }
    
    static func - (lhs: Int, rhs: Money) -> Money {
        return Money(value: lhs) - rhs
    }
}
