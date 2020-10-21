//
//  ToastStyle.swift
//  Toastly
//
//  Created by Sayed Mahmudul Alam on 10/21/20.
//

import UIKit

public struct ToastStyle {
    
    // Properties
    var backgroundColor: UIColor?
    var textColor: UIColor?
    
    // Initialiser
    public init(backgroundColor: UIColor = .black, textColor: UIColor = .white) {
        self.backgroundColor = backgroundColor
        self.textColor = textColor
    }
}
