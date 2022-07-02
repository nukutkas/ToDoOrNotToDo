//
//  Checklist.swift
//  ToDoOrNotToDo
//
//  Created by Татьяна Кочетова on 29.06.2022.
//

import Foundation

class Checklist: NSObject {
    var name = ""
    var items = [ChecklistItem]()
    
    init(name: String) {
      self.name = name
      super.init()
    }
}
