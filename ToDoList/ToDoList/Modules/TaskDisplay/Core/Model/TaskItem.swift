//
//  TaskItem.swift
//  ToDoList
//
//  Created by Никита Данилович on 04.05.2023.
//
import UIKit

enum TaskStatus: String, CaseIterable {
    case active = "Active"
    case completed = "Completed"
}

struct TaskItem: Hashable {
    var status: TaskStatus
    var title: String
    var description: String?
    
    mutating func changeTaskDetails(title: String, description: String?) {
        self.title = title
        self.description = description
    }
    
    mutating func changeTaskStatus(with status: TaskStatus) {
        self.status = status
    }
}
