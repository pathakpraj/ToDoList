//
//  ListView.swift
//  ToDoList
//
//  Created by Prajakta Pathak on 1/29/26.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List {
            Text("One")
            Text("Two")
            Text("Three")
            Text("Four")
            Text("Five")
        }
        .navigationTitle("To Do List")
    }
}

#Preview {
    NavigationStack {
        ListView()
    }
}
