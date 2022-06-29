//
//  AllListsViewController.swift
//  ToDoOrNotToDo
//
//  Created by Татьяна Кочетова on 27.06.2022.
//

import UIKit

class AllListsViewController: UITableViewController {
    
    let cellIdentifier = "ChecklistCell"
    
    var lists = [Checklist]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        
        var list = Checklist(name: "Birthdays")
        lists.append(list)
        
        list = Checklist(name: "Groceries")
        lists.append(list)
        
        list = Checklist(name: "Cool Apps")
        lists.append(list)
        
        list = Checklist(name: "To Do")
        lists.append(list)
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lists.count
    }
    
    
    override func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: cellIdentifier, for: indexPath)
        let checklist = lists[indexPath.row]
         cell.textLabel!.text = checklist.name
         cell.accessoryType = .detailDisclosureButton
        return cell
    }
    
    
    override func tableView(
        _ tableView: UITableView,
        didSelectRowAt indexPath: IndexPath
    ) {
        performSegue(withIdentifier: "ShowChecklist", sender: nil)
    }
    
}
