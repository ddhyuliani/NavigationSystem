//
//  ModalViewController.swift
//  NavigationUIKit
//
//  Created by Dini on 08/08/24.
//

import UIKit

class AllModalContent: UIViewController {
    
    var receivedText: String?
    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupLabel()
        setupDismissButton()
    }
    
    func setupLabel() {
        label.frame = CGRect(x: 20, y: 100, width: 300, height: 40)
        label.text = receivedText
        label.textColor = .black
        view.addSubview(label)
    }
    
    func setupDismissButton() {
        let button = UIButton(type: .system)
        button.setTitle("Dismiss", for: .normal)
        button.addTarget(self, action: #selector(dismissModal), for: .touchUpInside)
        button.frame = CGRect(x: 20, y: 160, width: 200, height: 40)
        view.addSubview(button)
    }
    
    @objc func dismissModal() {
        dismiss(animated: true)
    }
}
