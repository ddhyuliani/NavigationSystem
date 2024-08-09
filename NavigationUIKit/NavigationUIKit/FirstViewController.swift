//
//  FirstViewController.swift
//  NavigationUIKit
//
//  Created by Dini on 08/08/24.
//

import UIKit

class FirstViewController: UIViewController {
    
    // define the textField constant to UITextField
    let textField = UITextField()
    
    // get the array of text from the Singleton Model
    var model = InputtedText.shared.text
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
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
        button.setTitle("Go to Second Layer", for: .normal)
        button.addTarget(self, action: #selector(goToSecondLayer), for: .touchUpInside)
        button.frame = CGRect(x: 20, y: 160, width: 200, height: 40)
        view.addSubview(button)
    }
    
    @objc func goToSecondLayer() {
        // Assign the data that will be passed, where to get it
        model = textField.text ?? ""
        
        // Initialize the NextVC
        let secondViewController = SecondViewController()
        
        // Assign the data on the next VC
        secondViewController.ModelOnSecond = model
        
        // Navigate to the next VC
        navigationController?.pushViewController(secondViewController, animated: true)
    }
}
