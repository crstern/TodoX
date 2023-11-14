//
//  TodoListView.swift
//  ToDoX
//
//  Created by Cristian Stern on 04.11.2023.
//

import SwiftUI

struct TodoListView: View {
    @State var project: Project
    
    var body: some View {
        NavigationStack{
            List($project.tasks){ $task in
                NavigationLink(destination: EditTaskView(task: $task)){
                    TaskView(task: $task)
                }
            }.navigationTitle(project.name)
        }
    }
}

#Preview {
    TodoListView(project: Project.defaultProject)
}
