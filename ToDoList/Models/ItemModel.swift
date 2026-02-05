//
//  ItemModel.swift
//  ToDoList
//
//  Created by Prajakta Pathak on 2/3/26.
//

import Foundation

struct ItemModel: Identifiable, Codable {
    let id: String
    var title : String
    var isCompleted : Bool

    init(id: String = UUID().uuidString, title: String, isCompleted: Bool = false) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }

    func update() -> ItemModel {
        return ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
