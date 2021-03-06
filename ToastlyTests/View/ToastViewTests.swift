//
//  ToastViewTests.swift
//  ToastlyTests
//
//  Created by Sayed Mahmudul Alam on 10/13/20.
//

import XCTest
@testable import Toastly

class ToastViewTests: XCTestCase {
    
    // MARK: - Properties
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
        // Act
        sut?.commonInit()
        
        // Assert
        XCTAssertFalse(sut!.subviews.isEmpty, "Subviews should not be empty")
    }
    
    /// Test required init
    func testInitWithCoder() {
        // Act
        let cd = NSKeyedUnarchiver(forReadingWith: NSMutableData() as Data)
        let toastView = ToastView(coder:cd)
        
        // Assert
        XCTAssertNotNil(toastView, "ToastView should not be nil")
    }
    
    /// Test setMessage()
    func testSetMessage() {
        // Arrenge
        let message = "This is a test message"
        
        // Act
        sut?.setMessage(message)
        
        // Assert
        XCTAssertEqual(sut!.messageLabel.text, message)
    }
    
    func testSetStyle_backgroundColor() {
        // Arrang
        var toastStyle = ToastStyle()
        toastStyle.backgroundColor = .green
        
        // Act
        sut?.setStyle(toastStyle)
        
        // Assert
        XCTAssertEqual(sut?.containerView.backgroundColor, .green, "Background color must be Green")
    }
    
    func testSetStyle_textColor() {
        // Arrang
        var toastStyle = ToastStyle()
        toastStyle.textColor = .white
        
        // Act
        sut?.setStyle(toastStyle)
        
        // Assert
        XCTAssertEqual(sut?.messageLabel.textColor, .white, "Text color must be White")
    }


}
