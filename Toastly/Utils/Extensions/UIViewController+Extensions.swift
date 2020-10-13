//
//  UIViewController+Extensions.swift
//  Toastly
//
//  Created by Sayed Mahmudul Alam on 10/13/20.
//

import UIKit

// MARK: - Extensions
extension UIViewController {
    public func showToast() {
        let toast = ToastView(frame: CGRect(x: 20.0, y: 100.0, width: 150.0, height: 35))
        self.view.addSubview(toast)
    }
}
