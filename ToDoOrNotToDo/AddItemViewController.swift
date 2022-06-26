//
//  AddItemViewController.swift
//  ToDoOrNotToDo
//
//  Created by Татьяна Кочетова on 23.06.2022.
//

import UIKit

protocol AddItemViewControllerDelegate: AnyObject {
  func addItemViewControllerDidCancel(
    _ controller: AddItemViewController)
  func addItemViewController(
    _ controller: AddItemViewController,
    didFinishAdding item: ChecklistItem
  )
}

class AddItemViewController: UITableViewController, UITextFieldDelegate {
    @IBOutlet var textField: UITextField!
    @IBOutlet var doneBarButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .never
    }
    
    override func viewWillAppear(_ animated: Bool) {
      super.viewWillAppear(animated)
      textField.becomeFirstResponder()
    }
    @IBAction func cancel(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    @IBAction func done(_ sender: Any) {
        print("Contents of the text field: \(textField.text!)")
        
        navigationController?.popViewController(animated: true)
    }
    
    // MARK: - Table View Delegates
    override func tableView(
      _ tableView: UITableView,
      willSelectRowAt indexPath: IndexPath
    ) -> IndexPath? {
      return nil
    }
    
    // MARK: - Text Field Delegates
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let oldText = textField.text!
          let stringRange = Range(range, in: oldText)!
          let newText = oldText.replacingCharacters(
            in: stringRange,
            with: string)
          if newText.isEmpty {
            doneBarButton.isEnabled = false
          } else {
            doneBarButton.isEnabled = true
          }
        // doneBarButtonisEnabled = !newText.isEmpty
          return true
    }

    func textFieldShouldClear(_ textField: UITextField) -> Bool {
      doneBarButton.isEnabled = false
      return true
    }
}
