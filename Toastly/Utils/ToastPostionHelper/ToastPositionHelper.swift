//
//  ToastPositionHelper.swift
//  Toastly
//
//  Created by Sayed Mahmudul Alam on 10/15/20.
//

import UIKit

class ToastPositionHelper {
    
    // MARK: - Properties
    var position: ToastPositions?
    var toastViewWidthHeight: (width: CGFloat, height: CGFloat)
    var navigationBarHeight: CGFloat?
    var viewControllerFrame: CGRect
    var topPadding: CGFloat?
    var bottomPadding: CGFloat?
    
    // MARK: - Initialisers
    required init(position: ToastPositions, toastViewWidthHeight: (width: CGFloat, height: CGFloat), navigationBarHeight: CGFloat?, viewControllerFrame: CGRect) {
        self.position = position
        self.toastViewWidthHeight = toastViewWidthHeight
        self.navigationBarHeight = navigationBarHeight
        self.viewControllerFrame = viewControllerFrame
        
        let window = UIApplication.shared.keyWindow
        topPadding = window?.safeAreaInsets.top
        bottomPadding = window?.safeAreaInsets.bottom
    }
    
    // MARK: - Functions
    func getOrigin() -> CGPoint {
        switch position {
        case .top:
            return CGPoint(x: getToastViewCenterXAxis(), y: getYAxisForTopPosition())
        case .custom(let x, let y):
            return CGPoint(x: x,y: y)
        default: break
        }
        
        return CGPoint(x: getToastViewCenterXAxis(), y: getYAxisForTopPosition())
    }
    
    /// Returns the X axis for center
    private func getToastViewCenterXAxis() -> CGFloat {
        let width = toastViewWidthHeight.width
        return (viewControllerFrame.width - width) / 2
    }
    
    /// Returns Y axis if the position is Top
    private func getYAxisForTopPosition() -> CGFloat {
        let navbarHeight = navigationBarHeight ?? Constants.defaultNavigationBarHeight
        let safeAreaTopInset = CGFloat(topPadding ?? Constants.defaultSafeAreaTopInset)
        let y = navbarHeight + safeAreaTopInset + Constants.defaultToastViewTopMargin
        return y
    }
}
