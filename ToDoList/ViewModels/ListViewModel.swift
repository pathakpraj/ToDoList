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
    let itemsKey: String = "items_key"

    @Published var items: [ItemModel] = [] {
        didSet {
            saveItems()
        }
    }

    init() {
        getItems()
    }

    func getItems() {
        guard let data = UserDefaults.standard.value(forKey: itemsKey),
              let saveditems = try? JSONDecoder().decode([ItemModel].self, from: data as! Data)
        else { return }

        items.append(contentsOf: saveditems)
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

    func saveItems() {
        let encodedItems = try? JSONEncoder().encode(items)
        UserDefaults.standard.set(encodedItems, forKey: itemsKey)
    }
}
