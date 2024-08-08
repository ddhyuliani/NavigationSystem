//
//  MyPetNameViewController.swift
//  NavigationStarterUIKit
//
//  Created by Dini on 08/08/24.
//

import UIKit

class MyPetNameViewController: UIViewController {
    
    var receivedText: String?
    let label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLabel()
        goToRoot()
    }
    
    func setupLabel() {
        label.frame = CGRect(x: 20, y: 100, width: 300, height: 40)
        label.text = receivedText
        label.textColor = .black
        view.addSubview(label)
    }
    
    func goBackToRoot() {
        let button = UIButton(type: .system)
        button.setTitle("Go to My Pet", for: .normal)
        button.addTarget(self, action: #selector(goToRoot), for: .touchUpInside)
        button.frame = CGRect(x: 20, y: 160, width: 200, height: 40)
        view.addSubview(button)
    }
    
    @objc func goToRoot(){
        // Pop Back to Root View
    }
}
