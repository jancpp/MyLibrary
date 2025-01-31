//
//  PatternMatchingTestCase.swift
//  
//
//  Created by Jan Polzer on 6/15/20.
//

import XCTest
import MyLibrary

final class PatternMatchingTestCase: XCTestCase {
    func test_Character() {
        let g: Character = "g"
        
        switch g {
        case \.isNumber, \.isHexDigit:
            XCTFail()
        case \.isLetter:
            break
        default:
            XCTFail()
        }
    }
    
    func test_Double() {
        switch 1.0 {
        case
            \.isZero,
            [100, -5, -0.4].contains,
            {$0 != 1}:
            XCTFail()
        case \.isInteger:
            break
        default:
            XCTFail()
        }
    }
}
