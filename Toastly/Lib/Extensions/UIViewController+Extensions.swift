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
    /// Consumable method to show the Toast, used by a app project.
    /// - Parameters:
    ///   - message: Text that will be displayed on the ToastView.
    ///   - position: Position of the ToastView.
    ///   - duration: Amout of time the ToastView will be shown.
    ///   - toastStyle: Style of the ToastView
    public func showToast(message: String, position: ToastPositions = .top, duration: ToastDuration = .short, toastStyle: ToastStyle = .init()) {
        let toastView = ToastView()
        toastView.message = message
        toastView.style = toastStyle
        toastView.alpha = 1
        toastView.layoutIfNeeded()
        let messageLabelVerticalMargin = Constants.messageLabelLeadingConstraint + Constants.messageLabelTrailingConstraint
        let messageLabelHorizontalMargin = Constants.messageLabelTopConstraint + Constants.messageLabelBottomConstraint
        toastView.frame.origin = position.getOrigin(toastViewWidthHeight: (toastView.messageLabel.frame.width + messageLabelVerticalMargin, height: toastView.messageLabel.frame.height + messageLabelHorizontalMargin), navigationBarHeight: (navigationController?.navigationBar.frame.height), viewControllerFrame: view.frame)
        view.addSubview(toastView)
        UIView.animate(withDuration: 2.0, delay: duration.duration, options: .curveEaseOut, animations: {
            toastView.alpha = 0.0
        }, completion: { _ in
            toastView.removeFromSuperview()
        })
    }
}
