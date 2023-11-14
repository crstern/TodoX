//
//  TaskView.swift
//  ToDoX
//
//  Created by Cristian Stern on 04.11.2023.
//

import SwiftUI

struct TaskView: View {
    @Binding var task: TodoTask
    @State var isPresentingEditView: Bool = false
    
    var icon: String { task.isDone ? "checkmark.square" : "square" }
    
    var body: some View {
        HStack{
            Image(systemName: icon)
                .onTapGesture {
                    task.changeStatus()
                }
            Text(task.title)
        }
        .foregroundStyle(task.priorityColor)
    }
}



#Preview {
    TaskView(task: .constant(TodoTask.sampleData[0]))
        .previewLayout(.sizeThatFits)
}
