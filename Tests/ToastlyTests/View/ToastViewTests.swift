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
    
    /// Test set message
    func testSetMessage() {
        // Arrenge
        let message = "This is a test message"
        
        // Act
        sut?.message = message
        
        // Assert
        XCTAssertEqual(sut!.messageLabel.text, message)
    }
    
    /// Test get message
    func testGetMessage() {
        // Arrenge
        let message = "This is a test message"
        
        // Act
        sut?.message = message
        
        // Assert
        XCTAssertEqual(sut!.message, message)
    }
    
    /// Test get message
    func testGetMessageWhenNil() {
        // Arrenge
        let message: String? = nil
        
        // Act
        sut?.messageLabel.text = message
        
        // Assert
        XCTAssertEqual(sut!.message, "")
    }
    
    func testSetStyle_backgroundColor() {
        // Arrang
        let toastStyle = ToastStyle(backgroundColor: .green)
        
        // Act
        sut?.style = toastStyle
        
        // Assert
        XCTAssertEqual(sut?.containerView.backgroundColor, .green, "Background color must be Green")
    }
    
    func testGetStyle_backgroundColor() {
        // Act
        sut?.containerView.backgroundColor = .green
        
        // Assert
        XCTAssertEqual(sut?.style.backgroundColor, .green, "Background color must be Green")
    }
    
    func testGetStyle_backgroundColor_nil() {
        // Act
        sut?.containerView.backgroundColor = nil
        
        // Assert
        XCTAssertEqual(sut?.style.backgroundColor, .black, "Background color must be black")
    }
    
    func testSetStyle_textColor() {
        // Arrang
        let toastStyle = ToastStyle(textColor: .white)
        
        // Act
        sut?.style = toastStyle
        
        // Assert
        XCTAssertEqual(sut?.messageLabel.textColor, .white, "Text color must be White")
    }
    
    func testGetStyle_textColor() {
        // Act
        sut?.messageLabel.textColor = .white
        
        // Assert
        XCTAssertEqual(sut?.style.textColor, .white, "Text color must be White")
    }
    
    func testSetStyle_textFont() {
        let toastStyle = ToastStyle(font: UIFont(name: "ChalkDuster", size: 18)!)
        
        sut?.style = toastStyle
        
        XCTAssertEqual(sut?.messageLabel.font, UIFont(name: "ChalkDuster", size: 18), "Text font must be ChalkDuster")
    }
    
    func testGetStyle_textFont() {
        // Act
        sut?.messageLabel.font = UIFont(name: "ChalkDuster", size: 18)
        
        // Assert
        XCTAssertEqual(sut?.style.font, UIFont(name: "ChalkDuster", size: 18), "Text font must be ChalkDuster")
    }


}
