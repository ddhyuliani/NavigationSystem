//
//  ViewController.swift
//  NavigationStarterUIKit
//
//  Created by Dini on 08/08/24.
//

import UIKit

class ViewController: UIViewController {
    
    var data = InputtedText.shared.text
    let textField = UITextField()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        setupTextField()
        setupNextButton()
    }
    
    // Programmatically add a TextField
    func setupTextField() {
        textField.frame = CGRect(x: 20, y: 100, width: 300, height: 40)
        textField.borderStyle = .roundedRect
        textField.placeholder = "Enter text"
        view.addSubview(textField)
    }
    func setupNextButton() {
        let button = UIButton(type: .system)
        button.setTitle("My Pet Race", for: .normal)
        button.addTarget(self, action: #selector(goToMyPetRaceView), for: .touchUpInside)
        button.frame = CGRect(x: 20, y: 160, width: 200, height: 40)
        view.addSubview(button)
    }
    
    @objc func goToMyPetRaceView() {
        
        // Pass the Text from textfield to the next VC Textfield
        
        // Navigate when pressed
    }
}

