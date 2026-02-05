//
//  NoItemsView.swift
//  ToDoList
//
//  Created by Prajakta Pathak on 2/5/26.
//

import SwiftUI

struct NoItemsView: View {
    @EnvironmentObject var viewModel: ListViewModel

    var body: some View {
        ScrollView {
            VStack {
                Text("You are all caught up! 🎉")
                    .foregroundStyle(Color.accentColor)
                    .italic()
                    .font(.headline)
                NavigationLink("Add New item", destination: AddItemView())
                    .frame(width: 200, height: 55)
                    .foregroundStyle(.white)
                    .background(Color.accentColor)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .cornerRadius(10)

            }
            .padding(.vertical, 100)
        }
    }
}

#Preview {
    NoItemsView()
}
