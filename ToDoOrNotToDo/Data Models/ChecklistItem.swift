//
//  ChecklistItem.swift
//  ToDoOrNotToDo
//
//  Created by Татьяна Кочетова on 21.06.2022.
//

import Foundation

class ChecklistItem: NSObject, Codable {
    var text = ""
    var checked = false
    var dueDate = Date()
    var shouldRemind = false
    var itemID = -1
    
    override init() {
      super.init()
      itemID = DataModel.nextChecklistItemID()
    }

}
