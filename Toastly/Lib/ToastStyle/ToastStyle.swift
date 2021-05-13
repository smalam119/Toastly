//
//  ToastStyle.swift
//  Toastly
//
//  Created by Sayed Mahmudul Alam on 10/21/20.
//

import UIKit

public struct ToastStyle {
    
    // MARK: - Properties
    let backgroundColor: UIColor?
    let textColor: UIColor?
    let font: UIFont?
    
    // MARK: - Initialiser
    public init(backgroundColor: UIColor = .black, textColor: UIColor = .white, font: UIFont = UIFont.systemFont(ofSize: 17)) {
        self.backgroundColor = backgroundColor
        self.textColor = textColor
        self.font = font
    }
}
