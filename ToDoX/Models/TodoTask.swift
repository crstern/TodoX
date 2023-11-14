//
//  TodoTask.swift
//  ToDoX
//
//  Created by Cristian Stern on 04.11.2023.
//

import Foundation
import SwiftUI

struct TodoTask: Identifiable, Codable{
    var id: UUID
    var title: String
    var description: String
    var dueDate: Date
    var priority: TodoTaskPriority
    var isDone: Bool
    
    
    init(id: UUID = UUID(), title: String, description: String = "", isDone: Bool = false, dueDate: Date = Date(timeIntervalSinceNow: 60 * 60 * 24), priority: TodoTaskPriority = .medium) {
        self.id = id
        self.title = title
        self.description = description
        self.isDone = isDone
        self.dueDate = dueDate
        self.priority = priority
    }
}

extension TodoTask{
    var priorityColor: Color{
        switch self.priority {
        case .low:
            return Color.yellow
        case .high:
            return Color.red
        default:
            return Color.black
        }
    }
}

extension TodoTask{
    mutating func changeStatus(){
        self.isDone = !self.isDone
    }
}

extension TodoTask{
    static let sampleData: [TodoTask] = [
        TodoTask(title: "Learn iOS dev", priority:.high),
        TodoTask(title: "Make coffee"),
        TodoTask(title: "Make food", isDone: true),
        TodoTask(title: "Play Guitar", description: "Learn some cool song, like Smells like teen spirits or smth.")
    ]
}
