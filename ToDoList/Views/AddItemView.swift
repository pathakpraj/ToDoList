//
//  AddItemView.swift
//  ToDoList
//
//  Created by Prajakta Pathak on 1/29/26.
//

import SwiftUI

struct AddItemView: View {
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    @Environment(\.presentationMode) var presentationMode

    @State var alertText = ""
    @State var showAlert: Bool = false

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
                    saveButtonPressed()
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
        .navigationTitle("Add an Item! ✏️")
        .alert(isPresented: $showAlert) {
            getAlert()
        }

    }

    private func saveButtonPressed() {
        if textIsValid() {
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
    }

    private func textIsValid() -> Bool {
        if textFieldText.count < 3 {
            alertText = "Please enter a longer description."
            showAlert.toggle()
            return false
        } else {
            return true
        }
    }

    private func getAlert() -> Alert {
        Alert(title: Text(alertText))
    }
}

#Preview {
    AddItemView()
        .environmentObject(ListViewModel())
}
