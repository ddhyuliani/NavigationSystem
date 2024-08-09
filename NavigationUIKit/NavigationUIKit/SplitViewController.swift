//
//  SplitViewController.swift
//  NavigationUIKit
//
//  Created by Dini on 08/08/24.
//

import UIKit

class SplitViewController: UITableViewController {
    
    // get the array of text from the Singleton Model
    let model = InputtedText.shared.items
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Master"
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") ?? UITableViewCell(style: .default, reuseIdentifier: "Cell")
        cell.textLabel?.text = model[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let splitDetailVC = SplitDetailViewController()
        splitDetailVC.selectedItem = model[indexPath.row]
        showDetailViewController(splitDetailVC, sender: nil)
    }
}
