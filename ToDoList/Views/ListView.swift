//
//  ListView.swift
//  ToDoList
//
//  Created by Prajakta Pathak on 1/29/26.
//

import SwiftUI

struct ListView: View {
    @State var items: [String] = [
        "First item!",
        "Second item!",
        "Third item!",
        "Fourth item!",
        "Fifth item!"
]

    var body: some View {
            List {
                ForEach(items, id: \.self){ item in
                    ListRowView(title: item)
                }
            }
            .listStyle(.plain)
            .navigationTitle("To Do List")
            .navigationBarItems(leading: EditButton())
            .navigationBarItems(trailing: NavigationLink("Add", destination: AddItemView()))
    }
}

#Preview {
    NavigationStack {
        ListView()
    }
}
