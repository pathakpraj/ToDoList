//
//  ListView.swift
//  ToDoList
//
//  Created by Prajakta Pathak on 1/29/26.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var listViewModel: ListViewModel

    var body: some View {
        ZStack {
            if listViewModel.items.isEmpty {
                NoItemsView()
            } else {
                List {
                    ForEach(listViewModel.items){ item in
                        ListRowView(item: item)
                            .onTapGesture {
                                listViewModel.updateItem(of: item)
                            }
                    }
                    .onDelete(perform: listViewModel.deleteItems)
                    .onMove(perform: listViewModel.moveItem)
                }
                .listStyle(.plain)
            }
        }
        .navigationTitle("To Do List 📝")
        .navigationBarItems(leading: EditButton())
        .navigationBarItems(trailing: NavigationLink("Add", destination: AddItemView()))
        }
}

#Preview {
    NavigationStack {
        ListView()
    }
    .environmentObject(ListViewModel())
}
