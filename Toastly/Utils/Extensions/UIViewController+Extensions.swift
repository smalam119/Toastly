//
//  UIViewController+Extensions.swift
//  Toastly
//
//  Created by Sayed Mahmudul Alam on 10/13/20.
//

import UIKit

// MARK: - Extensions
extension UIViewController {
    public func showToast(message: String, position: ToastPositions = .top, toastStyle: ToastStyle = ToastStyle()) {
        let toastView = ToastView()
        toastView.setMessage(message)
        toastView.layoutIfNeeded()
        let messageLabelVerticalMargin = Constants.messageLabelLeadingConstraint + Constants.messageLabelTrailingConstraint
        let messageLabelHorizontalMargin = Constants.messageLabelTopConstraint + Constants.messageLabelBottomConstraint
        let toastPositionHelper = ToastPositionHelper(position: position, toastViewWidthHeight: (toastView.messageLabel.frame.width + messageLabelVerticalMargin, height: toastView.messageLabel.frame.height + messageLabelHorizontalMargin), navigationBarHeight: (self.navigationController?.navigationBar.frame.height), viewControllerFrame: self.view.frame)
        toastView.frame.origin = toastPositionHelper.getOrigin()
        toastView.setStyle(toastStyle)
        self.view.addSubview(toastView)
    }
}
