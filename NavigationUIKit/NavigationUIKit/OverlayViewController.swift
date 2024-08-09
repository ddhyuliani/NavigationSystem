//
//  OverlayViewController.swift
//  NavigationUIKit
//
//  Created by Dini on 08/08/24.
//

import UIKit

class OverlayViewController: UIViewController {
    
    let textField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupTextField()
        setupButtons()
    }
    
    func setupTextField() {
        textField.frame = CGRect(x: 20, y: 100, width: 300, height: 40)
        textField.borderStyle = .roundedRect
        textField.placeholder = "Enter text"
        view.addSubview(textField)
    }
    
    func setupButtons() {
        let buttonTitles = ["Show Form Sheet", "Show Full Screen", "Show Alert"]
        let buttonSelectors: [Selector] = [#selector(showFormSheet), #selector(showFullScreen), #selector(showAlert)]
        
        for (index, title) in buttonTitles.enumerated() {
            let button = UIButton(type: .system)
            button.setTitle(title, for: .normal)
            button.addTarget(self, action: buttonSelectors[index], for: .touchUpInside)
            button.frame = CGRect(x: 20, y: 160 + index * 60, width: 200, height: 40)
            view.addSubview(button)
        }
    }
    
    // Modal 3/4
    @objc func showFormSheet() {
        let modalVC = AllModalContent()
        modalVC.receivedText = textField.text
        modalVC.modalPresentationStyle = .formSheet
        present(modalVC, animated: true)
    }
    
    // Modal Full Screen
    @objc func showFullScreen() {
        let modalVC = AllModalContent()
        modalVC.receivedText = textField.text
        modalVC.modalPresentationStyle = .fullScreen
        present(modalVC, animated: true)
    }
    
    // Alert & actionSheet
    @objc func showAlert() {
        // Alert
        let alert = UIAlertController(title: "Alert", message: "This is an alert.", preferredStyle: .alert)
        
        // ActionSheet
        //let alert = UIAlertController(title: "Alert", message: "This is an alert.", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel))
        present(alert, animated: true)
    }
}
