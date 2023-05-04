//
//  ToastStyleTest.swift
//  ToastlyTests
//
//  Created by Sayed Mahmudul Alam on 10/21/20.
//

import XCTest
@testable import Toastly

class ToastStyleTest: XCTestCase {
    
    var sut: ToastStyle?

    override func setUp() {
        super.setUp()
        
        sut = ToastStyle(backgroundColor: .green)
    }

    override func tearDown() {
        super.tearDown()
        
        sut = nil
    }
    
    func testBackgroundColor() {
        
        // Assert
        XCTAssertEqual(sut?.backgroundColor, UIColor.green, "Background color must be Green")
    }
    
    func testTextColor() {
        
        // Assert
        XCTAssertEqual(sut?.textColor, UIColor.white, "Background color must be White")
    }

}
