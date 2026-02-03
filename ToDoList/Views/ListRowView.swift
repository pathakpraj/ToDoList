//
//  ListRowView.swift
//  ToDoList
//
//  Created by Prajakta Pathak on 1/29/26.
//

import SwiftUI

struct ListRowView: View {
     let item: ItemModel

    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle.fill" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
                .font(.headline)
            Spacer()
        }
        .frame(height: 55)
        .font(.title2)
        .padding()
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    Group {
        ListRowView(item: ItemModel(title: "This is first item!!", isCompleted: true))
        ListRowView(item: ItemModel(title: "This is second item!!", isCompleted: false))
    }
}
