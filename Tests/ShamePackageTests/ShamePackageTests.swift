import XCTest
@testable import ShamePackage

final class ShamePackageTests: XCTestCase {
    func testExample() throws {
        XCTAssertTrue(ShamePackage.shared.shame("大哥，求你哄哄她吧，她心情好了，就愿意理我了"))
    }
}
