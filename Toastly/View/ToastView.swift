//
//  ToastView.swift
//  Toastly
//
//  Created by Sayed Mahmudul Alam on 10/13/20.
//

import UIKit

class ToastView: UIView {
    
    // MARK: - IBOutlets
    @IBOutlet weak var containerView: UIView!
    @IBOutlet private(set) weak var messageLabel: UILabel!
    @IBOutlet weak var messageLabelTopConstraint: NSLayoutConstraint!
    @IBOutlet weak var messageLabelLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var messageLabelTrailingConstraint: NSLayoutConstraint!
    @IBOutlet weak var messageLabelBottomConstraint: NSLayoutConstraint!
    
    // MARK: - Properties
    var style: ToastStyle {
        get {
            return .init(
                backgroundColor: containerView.backgroundColor ?? .black,
                textColor: messageLabel.textColor ?? .white)
        }
        set(toastStyle) {
            containerView.backgroundColor = toastStyle.backgroundColor
            messageLabel.textColor = toastStyle.textColor
        }
    }
    
    var message: String {
        get {
            return messageLabel.text ?? ""
        }
        
        set(message) {
            messageLabel.text = message
        }
    }
    
    // MARK: - Initialisers
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    // MARK: - Methods
    func commonInit() {
        let bundle = Bundle(identifier: "com.smalam.Toastly")
        guard let viewFromXib = bundle?.loadNibNamed("ToastView", owner: self, options: nil)?.first as? UIView else {return}
        viewFromXib.frame = self.bounds
        viewFromXib.layer.cornerRadius = 8
        viewFromXib.layer.masksToBounds = true
        viewFromXib.translatesAutoresizingMaskIntoConstraints = false
        addSubview(viewFromXib)
        
        setConstraintsOnConstants()
    }
    
    private func setConstraintsOnConstants() {
        Constants.messageLabelTopConstraint = messageLabelTopConstraint.constant
        Constants.messageLabelBottomConstraint = messageLabelBottomConstraint.constant
        Constants.messageLabelLeadingConstraint = messageLabelLeadingConstraint.constant
        Constants.messageLabelTrailingConstraint = messageLabelTrailingConstraint.constant
    }
}
