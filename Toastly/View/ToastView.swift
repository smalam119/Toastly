//
//  ToastView.swift
//  Toastly
//
//  Created by Sayed Mahmudul Alam on 10/13/20.
//

import UIKit

import UIKit

public class ToastView: UIView {
    
    // MARK: - Initialisers
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    // MARK: - Functions
    public func commonInit() {
        let bundle = Bundle(identifier: "com.smalam.Toastly")
        guard let viewFromXib = bundle?.loadNibNamed("ToastView", owner: self, options: nil)?.first as? UIView else {return}
        viewFromXib.frame = self.bounds
        addSubview(viewFromXib)
    }
}

extension UIViewController {
    public func showToast() {
        let toast = ToastView(frame: CGRect(x: 20.0, y: 100.0, width: 150.0, height: 35))
        self.view.addSubview(toast)
    }
}
