//
//  SecondViewController.swift
//  NavigationUIKit
//
//  Created by Dini on 08/08/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    var ModelOnSecond = InputtedText.shared.text
    let textField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupTextField()
        setupNextButton()
    }
    
    // Programmatically add a TextField and assign the data from the previous VC to the textField
    func setupTextField() {
        textField.frame = CGRect(x: 20, y: 100, width: 300, height: 40)
        textField.borderStyle = .roundedRect
        textField.text = ModelOnSecond
        view.addSubview(textField)
    }
    
    func setupNextButton() {
        let button = UIButton(type: .system)
        button.setTitle("Go to Third Layer", for: .normal)
        button.addTarget(self, action: #selector(goToThirdLayer), for: .touchUpInside)
        button.frame = CGRect(x: 20, y: 160, width: 200, height: 40)
        view.addSubview(button)
    }
    
    @objc func goToThirdLayer() {
        ModelOnSecond = textField.text ?? ""
        let thirdViewController = ThirdViewController()
        thirdViewController.modelOnThird = ModelOnSecond
        navigationController?.pushViewController(thirdViewController, animated: true)
    }
}
