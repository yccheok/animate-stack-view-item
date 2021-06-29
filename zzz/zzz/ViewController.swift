//
//  ViewController.swift
//  zzz
//
//  Created by Yan Cheng Cheok on 29/06/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var purpleView: UIView!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var purpleViewHeightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var value: CGFloat = 200.0
    @IBAction func buttonClicked(_ sender: Any) {
        if value == 500 {
            value = 200.0
        } else {
            value = 500.0
        }
        
        UIView.animate(withDuration: 2) {
            self.purpleViewHeightConstraint.constant = self.value
            self.purpleView.setNeedsLayout()
            self.purpleView.layoutIfNeeded()
        }
    }
}

