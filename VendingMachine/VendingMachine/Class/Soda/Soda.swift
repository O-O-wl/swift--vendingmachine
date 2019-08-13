//
//  Soda.swift
//  VendingMachine
//
//  Created by 이동영 on 13/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import Foundation

class Soda: Beverage {
    var isSugerFree: Bool
    
    init(brand: String = "제조사",
         capacity: Int = 0,
         price: Int = 0,
         name: String = "음료",
         productDate: Date = Date(),
         isSugerFree: Bool = false) {
        self.isSugerFree = isSugerFree
        
        super.init(
            brand: brand,
            capacity: capacity,
            price: price,
            name: name,
            productDate: productDate)
    }
}