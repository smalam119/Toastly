//
//  ToastDuration.swift
//  Toastly
//
//  Created by Sayed Mahmudul Alam on 5/12/21.
//

import Foundation

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
