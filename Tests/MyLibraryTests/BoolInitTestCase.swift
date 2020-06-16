import XCTest
import MyLibrary

final class BoolInitTestCase: XCTestCase {
    func test_validBits() throws {
        if let boolFromTrueBit = Bool(bit: 1 as Int8) {
            XCTAssertTrue(boolFromTrueBit, "True bit; expected true")
        } else {
            XCTFail()
        }
        
        let boolFromFalseBit = try XCTUnwrap(Bool(bit: 0))
        XCTAssertFalse(boolFromFalseBit, "False bit, expected false")
    }
    
    func test_invalidBits() {
        XCTAssertNil(Bool(bit: -1), "Invalid bit, expected nil")
        XCTAssertNil(Bool(bit: 2 as Int32), "Invalid bit, expected nil")
    }
    
    func test_dataByte() throws {
        let data = Data(0...2)
        
        let falseByte = data[0]
        let boolFromFalseBit = try XCTUnwrap(Bool(bit: falseByte))
        XCTAssertFalse(boolFromFalseBit)
        
        let trueByte = data[1]
        let boolFromTrueBit = try XCTUnwrap( Bool(bit: trueByte) )
        XCTAssertTrue(boolFromTrueBit)
        
        let invalidByte = data[2]
        XCTAssertNil(Bool(bit: invalidByte))
    }
}
