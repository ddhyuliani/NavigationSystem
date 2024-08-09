//
//  InputtedText.swift
//  NavigationUIKit
//
//  Created by Dini on 08/08/24.
//

import Foundation

class InputtedText {
    static let shared = InputtedText()
    
    var text: String = "Input Text"
    var items: [String] = ["Item 1", "Item 2", "Item 3"]
    
    private init(){ }
}
