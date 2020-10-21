//
//  ViewController.swift
//  ToastlyExample
//
//  Created by Sayed Mahmudul Alam on 10/13/20.
//

import UIKit
import Toastly

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.showToast(message: "This is a Toast This is a Toast This is a Toast This is a Toast This is a Toast ", position: .bottom, toastStyle: ToastStyle(backgroundColor: .yellow, textColor: .black))
    }
}

