//
//  UIViewControllerExtensionTest.swift
//  ToastlyTests
//
//  Created by Sayed Mahmudul Alam on 10/13/20.
//

import XCTest
@testable import Toastly

class UIViewControllerExtensionTest: XCTestCase {
    
    // MARK: - Properties
    var sut: UIViewController?

    // MARK: - Initialisers
    override func setUp() {
        super.setUp()
        sut = UIViewController()
    }

    override func tearDown() {
        super.tearDown()
        sut = nil
    }
    
    /// Tests showToast() function when position is Top
    func testShowToastPositionTop() {
        
        // Act
        sut?.showToast(message: "Test", position: .top)
        
        // Assert
        XCTAssertTrue(sut!.view.subviews.first!.isKind(of: ToastView.self), "First subview must be a ToastView")
        
    }
    
    /// Tests showToast() function when position is Custom
    func testShowToastPositionCustom() {
        
        // Act
        sut?.showToast(message: "Test", position: .custom(x: 100, y: 200))
        
        // Assert
        XCTAssertTrue(sut!.view.subviews.first!.isKind(of: ToastView.self), "First subview must be a ToastView")
        
    }
    
    /// Tests showToast() function when position is Center
    func testShowToastPositionCenter() {
        
        // Act
        sut?.showToast(message: "Test", position: .center)
        
        // Assert
        XCTAssertTrue(sut!.view.subviews.first!.isKind(of: ToastView.self), "First subview must be a ToastView")
        
    }
    
    /// Tests showToast() function when position is Center
    func testShowToastPositionBottom() {
        
        // Act
        sut?.showToast(message: "Test", position: .bottom)
        
        // Assert
        XCTAssertTrue(sut!.view.subviews.first!.isKind(of: ToastView.self), "First subview must be a ToastView")
        
    }
    
    /// Gest showTest() function when duration is long
    func testShowToastDurationLong() {
        
        // Act
        sut?.showToast(message: "Test", duration: .long)
        
        // Assert
        XCTAssertTrue(sut!.view.subviews.first!.isKind(of: ToastView.self), "First subview must be a ToastView")
    }
    
    /// Gest showTest() function when duration is short
    func testShowToastDurationShort() {
        
        // Act
        sut?.showToast(message: "Test", duration: .short)
        
        // Assert
        XCTAssertTrue(sut!.view.subviews.first!.isKind(of: ToastView.self), "First subview must be a ToastView")
    }
    
    /// Gest showTest() function when duration is custom
    func testShowToastDurationCustom() {
        
        // Act
        sut?.showToast(message: "Test", duration: .custom(duration: 10))
        
        // Assert
        XCTAssertTrue(sut!.view.subviews.first!.isKind(of: ToastView.self), "First subview must be a ToastView")
    }

}
