//
//  ThirdViewController.swift
//  NavigationUIKit
//
//  Created by Dini on 08/08/24.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var modelOnThird = InputtedText.shared.text
    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupLabel()
        goBackToRoot()
    }
    
    func setupLabel() {
        label.frame = CGRect(x: 20, y: 100, width: 300, height: 40)
        label.text = modelOnThird
        label.textColor = .black
        view.addSubview(label)
    }
    
    func goBackToRoot() {
        let button = UIButton(type: .system)
        button.setTitle("Go Back to Root", for: .normal)
        button.addTarget(self, action: #selector(goToRoot), for: .touchUpInside)
        button.frame = CGRect(x: 20, y: 160, width: 200, height: 40)
        view.addSubview(button)
    }
    
    @objc func goToRoot(){
        navigationController?.popToRootViewController(animated: true)
    }
}
