//
//  SequenceTestCase.swift
//  
//
//  Created by Jan Polzer on 6/15/20.
//

import XCTest
import MyLibrary

final class SequenceTestCase: XCTestCase {
    func test_first() {
        let odds = stride(from: 1, through: 9, by: 2)
        let first = odds.first
        
        XCTAssertEqual(Array(odds), [1,3,5,7,9])
        XCTAssertEqual(1, first)
        XCTAssertNil(odds.prefix(0).first, "array with 0 elements should have the first value nil")
    }
    
    func test_sum() {
        let threeTwoOne = stride(from: 3, through: 1, by: -1)
        XCTAssertEqual(threeTwoOne.sum, 6)
        XCTAssertEqual([0.5, 1.5, 1.0].sum, 3)
        XCTAssertNil(Set<CGFloat>().sum)
        
        let oneThird = 1.0 / 3
        let oneThirdsSum = Array(repeating: oneThird, count: 300).sum
        XCTAssertEqual(try XCTUnwrap(oneThirdsSum), 100, accuracy: pow(0.1, 12))
    }
}
