//
//  UIViewController+Extensions.swift
//  Toastly
//
//  Created by Sayed Mahmudul Alam on 10/13/20.
//

import UIKit

// MARK: - Extensions
extension UIViewController {
    public func showToast(message: String, position: ToastPositions = .top, duration: ToastDuration = .short, toastStyle: ToastStyle = ToastStyle()) {
        let toastView = ToastView()
        toastView.setMessage(message)
        toastView.setStyle(toastStyle)
        toastView.alpha = 1
        toastView.layoutIfNeeded()
        let messageLabelVerticalMargin = Constants.messageLabelLeadingConstraint + Constants.messageLabelTrailingConstraint
        let messageLabelHorizontalMargin = Constants.messageLabelTopConstraint + Constants.messageLabelBottomConstraint
        let toastPositionHelper = ToastPositionHelper(position: position, toastViewWidthHeight: (toastView.messageLabel.frame.width + messageLabelVerticalMargin, height: toastView.messageLabel.frame.height + messageLabelHorizontalMargin), navigationBarHeight: (self.navigationController?.navigationBar.frame.height), viewControllerFrame: self.view.frame)
        toastView.frame.origin = toastPositionHelper.getOrigin()
        self.view.addSubview(toastView)
        UIView.animate(withDuration: 2.0, delay: duration.rawValue, options: .curveEaseOut, animations: {
            toastView.alpha = 0.0
        }, completion: { (_) in
            toastView.removeFromSuperview()
        })
    }
}
