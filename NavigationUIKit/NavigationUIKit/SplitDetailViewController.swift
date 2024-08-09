//
//  SplitDetailViewController.swift
//  NavigationUIKit
//
//  Created by Dini on 08/08/24.
//

import UIKit

class SplitDetailViewController: UIViewController {
    var selectedItem: String?
    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupLabel()
    }
    
    func setupLabel() {
        label.frame = CGRect(x: 20, y: 100, width: 300, height: 40)
        label.text = selectedItem
        label.textColor = .black
        view.addSubview(label)
    }
}
