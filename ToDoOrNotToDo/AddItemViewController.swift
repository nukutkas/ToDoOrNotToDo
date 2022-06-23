//
//  AddItemViewController.swift
//  ToDoOrNotToDo
//
//  Created by Татьяна Кочетова on 23.06.2022.
//

import UIKit

class AddItemViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .never
    }
    @IBAction func cancel(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    @IBAction func done(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}
