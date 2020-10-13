//
//  ToastView.swift
//  Toastly
//
//  Created by Sayed Mahmudul Alam on 10/13/20.
//

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
        viewFromXib.layer.cornerRadius = 8
        viewFromXib.layer.masksToBounds = true
        addSubview(viewFromXib)
    }
}
