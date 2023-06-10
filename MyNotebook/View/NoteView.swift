//
//  NoteView.swift
//  MyNotebook
//
//  Created by Kim Keiser on 09/06/2023.
//

import SwiftUI

struct NoteView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var noteTitle: String
    @State var noteDescription: String
    var data: NoteData
    var noteModel: NoteModel
    
    var body: some View {
        VStack {
            Text("Title")
            TextField("Title", text: $noteTitle)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Text("Description")
            ScrollView {
                TextEditor(text: $noteDescription)
                    .padding()
                    .frame(height: 800)
            }
            
            Button("Save") {
                saveNote()
                // returns back to content view
                presentationMode.wrappedValue.dismiss()
            }
            .padding()
            
            Spacer()
        }
        .onAppear {
            noteTitle = data.title
            noteDescription = data.description
        }
    }
    
    func saveNote() {
        guard let index = noteModel.data.firstIndex(of: data) else {
            return
        }
        noteModel.data[index].title = noteTitle
        noteModel.data[index].description = noteDescription
    }
}


struct NoteView_Previews: PreviewProvider {
    static var previews: some View {
        let noteModel = NoteModel()
        return NoteView(noteTitle: "", noteDescription: "", data: noteModel.data[0], noteModel: noteModel)
    }
}

