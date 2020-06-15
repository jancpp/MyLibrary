//
//  FloatingPointTestCase.swift
//  
//
//  Created by Jan Polzer on 6/13/20.
//

import XCTest
import MyLibrary

final class FloatingPointTestCase: XCTestCase {
    func test_isInteger() {
        XCTAssert(1.0.isInteger)
        XCTAssertFalse(1.1.isInteger)
        XCTAssertFalse((1.1 as CGFloat).isInteger)
    }
}
