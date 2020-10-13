//
//  ToastViewTests.swift
//  ToastlyTests
//
//  Created by Sayed Mahmudul Alam on 10/13/20.
//

import XCTest
@testable import Toastly

class ToastViewTests: XCTestCase {
    
    var sut: ToastView?

    // MARK: - Initialisers
    override func setUp() {
        super.setUp()
        sut = ToastView()
    }

    override func tearDown() {
        super.tearDown()
        sut = nil
    }
    
    /// Tests commonInit()
    func testCommonInit() {
        sut?.commonInit()
        XCTAssertFalse(sut!.subviews.isEmpty, "Subviews should not be empty")
    }

}
