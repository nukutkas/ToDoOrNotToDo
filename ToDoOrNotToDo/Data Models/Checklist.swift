//
//  Checklist.swift
//  ToDoOrNotToDo
//
//  Created by Татьяна Кочетова on 29.06.2022.
//

import Foundation

class Checklist: NSObject, Codable {
    var name = ""
    var items = [ChecklistItem]()
    var iconName = "No Icon"
    
    init(name: String) {
      self.name = name
      super.init()
    }
    
    func countUncheckedItems() -> Int {
      var count = 0
      for item in items where !item.checked {
        count += 1
      }
      return count
    }
}
