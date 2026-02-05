//
//  ListViewModel.swift
//  ToDoList
//
//  Created by Prajakta Pathak on 2/3/26.
//

import Foundation
import Combine
import SwiftUI

class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = []

    init() {
        getItems()
    }

    func getItems() {
        let newItems = [
            ItemModel(title: "First item", isCompleted: true),
            ItemModel(title: "Second item"),
            ItemModel(title: "Third item", isCompleted: true),
            ItemModel(title: "Fourth item")]
        items.append(contentsOf: newItems)
    }

    func deleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }

    func moveItem(from source: IndexSet, to destination: Int) {
        items.move(fromOffsets: source, toOffset: destination)
    }

    func addItem(title: String) {
        items.append(ItemModel(title: title))
    }

    func updateItem(of item: ItemModel) {
        guard let index = items.firstIndex(where: {$0.id == item.id}) else { return }
        
        items[index] = item.update()
    }
}
