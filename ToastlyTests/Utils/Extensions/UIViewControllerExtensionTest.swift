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

}
