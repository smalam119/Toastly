//
//  UIViewController+Extensions.swift
//  Toastly
//
//  Created by Sayed Mahmudul Alam on 10/13/20.
//

import UIKit

// MARK: - Extensions
extension UIViewController {
    public func showToast(message: String, position: ToastPositions = .top) {
        let toastView = ToastView()
        toastView.setMessage(message)
        toastView.layoutIfNeeded()
        let toastPositionHelper = ToastPositionHelper(position: position, toastViewWidthHeight: (toastView.messageLabel.frame.width + 40, height: toastView.messageLabel.frame.height + 40), navigationBarHeight: (self.navigationController?.navigationBar.frame.height), viewControllerFrame: self.view.frame)
        toastView.frame.origin = toastPositionHelper.getOrigin()
        self.view.addSubview(toastView)
    }
}
