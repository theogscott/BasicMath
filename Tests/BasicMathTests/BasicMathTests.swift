import XCTest
@testable import BasicMath

final class BasicMathTests: XCTestCase {
    func testBasicOperations() throws {
        let math = BasicMath(x: 7, y: 3)
        
        XCTAssertEqual(math.sum(), 10)
        XCTAssertEqual(math.difference(), 4)
        XCTAssertEqual(math.product(), 21)
    }
}
