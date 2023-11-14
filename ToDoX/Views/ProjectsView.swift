//
//  ProjectsView.swift
//  ToDoX
//
//  Created by Cristian Stern on 13.11.2023.
//

import SwiftUI

struct ProjectsView: View {
    @Binding var projects: [Project]
    
    var body: some View {
        NavigationStack{
            List($projects){ $project in
                NavigationLink(destination: TodoListView(project: project)){
                    Text(project.name)
                }
            }.navigationTitle("Projects")
        }
    }
}

#Preview {
    ProjectsView(projects: .constant([Project.defaultProject]))
}
