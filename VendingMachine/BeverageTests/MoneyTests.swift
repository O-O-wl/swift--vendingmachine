//
//  MoneyTests.swift
//  BeverageTests
//
//  Created by 이동영 on 16/08/2019.
//  Copyright © 2019 JK. All rights reserved.
//

import XCTest

class MoneyTests: XCTestCase {

    func testMoneyDescription() {
        // Given
        let money = Money(value: 1_000)
        let expected = "1,000원"
        // When
        let result = money.description
        //Then
        XCTAssertEqual(result, expected)
    }

}
