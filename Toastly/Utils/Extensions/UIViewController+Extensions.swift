//
//  UIViewController+Extensions.swift
//  Toastly
//
//  Created by Sayed Mahmudul Alam on 10/13/20.
//

import UIKit

// MARK: - Extensions
extension UIViewController {
    // MARK: - Methods
    public func showToast(message: String, position: ToastPositions = .top, duration: ToastDuration = .short, toastStyle: ToastStyle = .init()) {
        let toastView = ToastView()
        toastView.setMessage(message)
        toastView.setStyle(toastStyle)
        toastView.alpha = 1
        toastView.layoutIfNeeded()
        let messageLabelVerticalMargin = Constants.messageLabelLeadingConstraint + Constants.messageLabelTrailingConstraint
        let messageLabelHorizontalMargin = Constants.messageLabelTopConstraint + Constants.messageLabelBottomConstraint
        let toastPositionHelper = ToastPositionHelper(position: position, toastViewWidthHeight: (toastView.messageLabel.frame.width + messageLabelVerticalMargin, height: toastView.messageLabel.frame.height + messageLabelHorizontalMargin), navigationBarHeight: (navigationController?.navigationBar.frame.height), viewControllerFrame: view.frame)
        toastView.frame.origin = toastPositionHelper.getOrigin()
        view.addSubview(toastView)
        UIView.animate(withDuration: 2.0, delay: duration.duration, options: .curveEaseOut, animations: {
            toastView.alpha = 0.0
        }, completion: { _ in
            toastView.removeFromSuperview()
        })
    }
}
