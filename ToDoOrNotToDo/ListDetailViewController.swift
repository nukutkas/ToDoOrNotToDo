//
//  ListDetailViewController.swift
//  ToDoOrNotToDo
//
//  Created by Татьяна Кочетова on 29.06.2022.
//

import UIKit

protocol ListDetailViewControllerDelegate: AnyObject {
  func listDetailViewControllerDidCancel(
    _ controller: ListDetailViewController)

  func listDetailViewController(
    _ controller: ListDetailViewController,
    didFinishAdding checklist: Checklist
  )

  func listDetailViewController(
    _ controller: ListDetailViewController,
    didFinishEditing checklist: Checklist
  )
}

class ListDetailViewController: UITableViewController, UITextFieldDelegate {
  @IBOutlet var textField: UITextField!
  @IBOutlet var doneBarButton: UIBarButtonItem!

  weak var delegate: ListDetailViewControllerDelegate?

  var checklistToEdit: Checklist?
    
    override func viewDidLoad() {
      super.viewDidLoad()

      if let checklist = checklistToEdit {
        title = "Edit Checklist"
        textField.text = checklist.name
        doneBarButton.isEnabled = true
      }
    }
    
    // MARK: - Actions
    @IBAction func cancel() {
      delegate?.listDetailViewControllerDidCancel(self)
    }

    @IBAction func done() {
      if let checklist = checklistToEdit {
        checklist.name = textField.text!
        delegate?.listDetailViewController(
          self,
          didFinishEditing: checklist)
      } else {
        let checklist = Checklist(name: textField.text!)
        delegate?.listDetailViewController(
          self,
          didFinishAdding: checklist)
      }
    }

}
