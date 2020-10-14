//
//  UIViewController+Extensions.swift
//  Toastly
//
//  Created by Sayed Mahmudul Alam on 10/13/20.
//

import UIKit

// MARK: - Extensions
extension UIViewController {
    public func showToast(message: String) {
        let toastView = ToastView(frame: CGRect(x: 20.0, y: 100.0, width: 150.0, height: 35))
        toastView.setMessage(message)
        self.view.addSubview(toastView)
    }
}
