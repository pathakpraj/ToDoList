//
//  ListRowView.swift
//  ToDoList
//
//  Created by Prajakta Pathak on 1/29/26.
//

import SwiftUI

struct ListRowView: View {
    @State var title: String

    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
                .foregroundColor(.blue)
            Text("This is first item!")
                .font(.headline)
            Spacer()
        }
        .frame(height: 55)
        .padding()
    }
}

#Preview {
    ListRowView(title: "This is first item!!")
}
