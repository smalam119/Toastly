//
//  Enums.swift
//  Toastly
//
//  Created by Sayed Mahmudul Alam on 10/28/20.
//

import UIKit

public enum ToastDuration {
    case long
    case short
    case custom(duration: TimeInterval)
    
    var duration: TimeInterval {
        switch self {
        case .long:
            return 3.5
        case .short:
            return 2.0
        case let .custom(duration: duration):
            return duration
        }
    }
}

public enum ToastPositions {
    case top
    case bottom
    case center
    case custom(x: CGFloat, y: CGFloat)
}
