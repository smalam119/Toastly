//
//  ToastPositions.swift
//  Toastly
//
//  Created by Sayed Mahmudul Alam on 5/12/21.
//

import UIKit

public enum ToastPositions {
    case top
    case bottom
    case center
    case custom(x: CGFloat, y: CGFloat)
    
    // MARK: - Methods
    
    /// Calculates the origin of the ToastView.
    /// - Parameters:
    ///   - toastViewWidthHeight: Width and Height tuple of the ToastView.
    ///   - navigationBarHeight: Navigation bar height of the ViewController the ToastView will be displayed over.
    ///   - viewControllerFrame: Frame of the ViewController the ToastView will be displayed over.
    /// - Returns: The origin of the ToastView.
    func getOrigin(toastViewWidthHeight: (width: CGFloat, height: CGFloat), navigationBarHeight: CGFloat?, viewControllerFrame: CGRect) -> CGPoint {
        switch self {
        case .top:
            return CGPoint(x: getToastViewCenterXAxis(toastViewWidth: toastViewWidthHeight.width, viewControllerWidth: viewControllerFrame.width), y: getYAxisForTopPosition(navigationBarHeight: navigationBarHeight))
        case .center:
            return CGPoint(x: getToastViewCenterXAxis(toastViewWidth: toastViewWidthHeight.width, viewControllerWidth: viewControllerFrame.width), y: getToastViewCenterYAxis(toastViewHeight: toastViewWidthHeight.height, viewControllerHeight: viewControllerFrame.height))
        case .bottom:
            return CGPoint(x: getToastViewCenterXAxis(toastViewWidth: toastViewWidthHeight.width, viewControllerWidth: viewControllerFrame.width), y: getYAxisForBottomPosition(toastViewHeight: toastViewWidthHeight.height, viewControllerHeight: viewControllerFrame.height))
        case .custom(let x, let y):
            return CGPoint(x: x,y: y)
        }
    }
    
    /// Calculates the X axis of the ToastView origin
    /// - Parameters:
    ///   - toastViewWidth: Width of the ToastView
    ///   - viewControllerWidth: Width of the ViewController the ToastView will be displayed over.
    /// - Returns: The X axis of the ToastView origin
    private func getToastViewCenterXAxis(toastViewWidth: CGFloat, viewControllerWidth: CGFloat) -> CGFloat {
        return (viewControllerWidth - toastViewWidth) / 2
    }
    
    /// Calculates the Y axis of the ToastView origin
    /// - Parameters:
    ///   - toastViewHeight: Height of the ToastView
    ///   - viewControllerHeight: Height of the ViewController the ToastView will be displayed over.
    /// - Returns: The Y axis of the ToastView origin
    private func getToastViewCenterYAxis(toastViewHeight: CGFloat, viewControllerHeight: CGFloat) -> CGFloat {
        return (viewControllerHeight - toastViewHeight) / 2
    }
    
    /// Calculates the Y axis if the position is Top
    /// - Parameter navigationBarHeight: Navigation bar height of the ViewController the ToastView will be displayed over.
    /// - Returns: The Y axis if the position is Top
    private func getYAxisForTopPosition(navigationBarHeight: CGFloat?) -> CGFloat {
        let navbarHeight = navigationBarHeight ?? Constants.defaultNavigationBarHeight
        let window = UIApplication.shared.keyWindow
        let topPadding = window?.safeAreaInsets.top
        let safeAreaTopInset = CGFloat(topPadding ?? Constants.defaultSafeAreaTopInset)
        let y = navbarHeight + safeAreaTopInset + Constants.defaultToastViewTopMargin
        return y
    }
    
    /// Calculates The Y axis if the position is Bottom
    /// - Parameters:
    ///   - toastViewHeight: Height of the ToastView
    ///   - viewControllerHeight: Height of the ViewController the ToastView will be displayed over.
    /// - Returns: The Y axis if the position is Bottom
    private func getYAxisForBottomPosition(toastViewHeight: CGFloat, viewControllerHeight: CGFloat) -> CGFloat {
        let window = UIApplication.shared.keyWindow
        let bottomPadding = window?.safeAreaInsets.bottom
        let safeAreaBottomInset = CGFloat(bottomPadding ?? Constants.defaultSafeAreaTopInset)
        let y = (viewControllerHeight - (toastViewHeight + safeAreaBottomInset + Constants.defaultToastViewBottomMargin))
        return y
    }
}
