import XCTest
@testable import RazeCore

final class RazeCoreTests: XCTestCase {
    func testColorRedEqual(){
        let color = RazeCore.colorFromHexString("FF0000")
        XCTAssertEqual(color, .red)
    }

    func testRazaColorAreEqual(){
        let color = RazeCore.colorFromHexString("006736")
        XCTAssertEqual(color, RazeCore.razeColor)
    }
    
    func testSecondaryRazeColorAreEqual(){
        let color = RazeCore.colorFromHexString("FCFFFD")
        XCTAssertEqual(color, RazeCore.secondaryRazeColor)
    }
    
    static var allTests = [
        ("testColorRedEqual",testColorRedEqual),
        ("testRazeColorAreEqual",testRazaColorAreEqual),
        ("testSecondaryRazeColorAreEqual",testSecondaryRazeColorAreEqual)
    ]
    
}
