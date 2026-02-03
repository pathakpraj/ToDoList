//
//  ItemModel.swift
//  ToDoList
//
//  Created by Prajakta Pathak on 2/3/26.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    var title : String
    var isCompleted : Bool = false
}
