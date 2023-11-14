//
//  MainView.swift
//  ToDoX
//
//  Created by Cristian Stern on 13.11.2023.
//

import SwiftUI

struct MainView: View {
    @State var projects: [Project]
    
    var body: some View {
        TabView{
            TodoListView(project: Project.defaultProject)
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            ProjectsView(projects: $projects)
                .tabItem{
                    Label("Projects", systemImage: "list.bullet.clipboard")
                }
        }
    }
}

#Preview {
    MainView(projects: [Project.defaultProject])
}
