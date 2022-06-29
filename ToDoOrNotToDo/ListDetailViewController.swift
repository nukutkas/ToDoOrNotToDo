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
}
