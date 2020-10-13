//
//  UIViewControllerExtensionTest.swift
//  ToastlyTests
//
//  Created by Sayed Mahmudul Alam on 10/13/20.
//

import XCTest
@testable import Toastly

class UIViewControllerExtensionTest: XCTestCase {
    
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
    
    /// Tests showToast() function
    func testShowToast() {
        
        // Act
        sut?.showToast()
        
        // Assert
        XCTAssertTrue(sut!.view.subviews.first!.isKind(of: ToastView.self), "First subview must be a ToastView")
        
    }

}
