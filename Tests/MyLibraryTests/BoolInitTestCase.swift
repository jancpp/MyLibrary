import XCTest
import MyLibrary

final class BoolInitTestCase: XCTestCase {
    func test_validBits() throws {
        if let boolFromTrueBit = Bool(bit: 1) {
            XCTAssertTrue(boolFromTrueBit, "True bit; expected true")
        } else {
            XCTFail()
        }
        
        let boolFromFalseBit = try XCTUnwrap(Bool(bit: 0))
        XCTAssertFalse(boolFromFalseBit, "False bit, expected false")
    }
    
    func test_invalidBits() {
        XCTAssertNil(Bool(bit: -1), "Invalid bit, expected nil")
        XCTAssertNil(Bool(bit: 3), "Invalid bit, expected nil")
    }
}
