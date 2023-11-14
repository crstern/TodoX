//
//  EditTaskView.swift
//  ToDoX
//
//  Created by Cristian Stern on 08.11.2023.
//

import SwiftUI

struct EditTaskView: View {
    @Binding var task: TodoTask
    var body: some View {
        Form{
            TextField("Title", text: $task.title)
            TextField("Details", text: $task.description, axis:.vertical).lineLimit(1...10)
            DatePicker("Due date", selection: $task.dueDate, displayedComponents: [.date])
            
        }
    }
}

#Preview {
    EditTaskView(task: .constant(TodoTask.sampleData[0]))
}
