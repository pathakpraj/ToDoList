//
//  ListView.swift
//  ToDoList
//
//  Created by Prajakta Pathak on 1/29/26.
//

import SwiftUI

struct ListView: View {
    @State var items: [ItemModel] = [
        ItemModel(title: "First item", isCompleted: true),
        ItemModel(title: "Second item"),
        ItemModel(title: "Third item", isCompleted: true),
        ItemModel(title: "Fourth item")
]

    var body: some View {
            List {
                ForEach(items){ item in
                    ListRowView(item: item)
                }
                .onDelete(perform: deleteItems)
                .onMove(perform: moveItem)
            }
            .listStyle(.plain)
            .navigationTitle("To Do List 📝")
            .navigationBarItems(leading: EditButton())
            .navigationBarItems(trailing: NavigationLink("Add", destination: AddItemView()))
    }

    func deleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }

    func moveItem(from source: IndexSet, to destination: Int) {
        items.move(fromOffsets: source, toOffset: destination)
    }
}

#Preview {
    NavigationStack {
        ListView()
    }
}
