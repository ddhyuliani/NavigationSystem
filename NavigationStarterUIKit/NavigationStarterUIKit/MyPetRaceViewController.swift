//
//  MyPetRaceViewController.swift
//  NavigationStarterUIKit
//
//  Created by Dini on 08/08/24.
//

import UIKit

class MyPetRaceViewController: UIViewController {
    
    // Pass the value from the 1st VC here
    var dataOnPetRace = InputtedText.shared.text
    // Textfield
    let textField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        setupTextField()
        setupNextButton()
    }
    
    // Programmatically add a TextField
    func setupTextField() {
        textField.frame = CGRect(x: 20, y: 100, width: 300, height: 40)
        textField.borderStyle = .roundedRect
        textField.text = dataOnPetRace
        view.addSubview(textField)
    }
    // Programmatically add a button
    func setupNextButton() {
        let button = UIButton(type: .system)
        button.setTitle("My Pet Name", for: .normal)
        button.addTarget(self, action: #selector(goToMyPetNameView), for: .touchUpInside)
        button.frame = CGRect(x: 20, y: 160, width: 200, height: 40)
        view.addSubview(button)
    }
    
    @objc func goToMyPetNameView() {
        
        // Pass the Text from textfield to the next VC Textfield
        
        // Navigate when pressed
    }
}
