//
//  EditProjectView.swift
//  ToDoX
//
//  Created by Cristian Stern on 13.11.2023.
//

import SwiftUI

struct EditProjectView: View {
    @Binding var project: Project
    
    var body: some View {
        Form{
            Section(header: Text("Project information")){
                TextField("Name", text: $project.name)
            }
            
        }
    }
}

#Preview {
    EditProjectView(project: .constant(Project.defaultProject))
}
