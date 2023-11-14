//
//  Project.swift
//  ToDoX
//
//  Created by Cristian Stern on 13.11.2023.
//

import Foundation

struct Project: Identifiable{
    var id: UUID
    var name: String
    var tasks: [TodoTask] = []
    
    init(id: UUID = UUID(), name: String, tasks: [TodoTask] = []) {
        self.id = id
        self.name = name
        self.tasks = tasks
    }
}

extension Project{
    static var defaultProject: Project = Project(name: "Main tasks", tasks: TodoTask.sampleData)
}
