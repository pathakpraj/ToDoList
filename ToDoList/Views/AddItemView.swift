//
//  AddItemView.swift
//  ToDoList
//
//  Created by Prajakta Pathak on 1/29/26.
//

import SwiftUI

struct AddItemView: View {
    @State var textFieldText: String = ""
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ScrollView {
            VStack {
                TextField("Add description...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(10)
                    .padding()
                    .padding(.top, 20)

                Button(action: {

                }, label: {
                    Text("Save".uppercased())
                        .foregroundStyle(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                        .padding()
                })

            }
        }
        .navigationTitle("Add an Item!")

    }
}

#Preview {
    AddItemView()
}
