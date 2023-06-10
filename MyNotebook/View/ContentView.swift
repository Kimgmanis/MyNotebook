//
//  ContentView.swift
//  MyNotebook
//
//  Created by Kim Keiser on 09/06/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var noteModel = NoteModel()
    var appTitle = "Notes"
    
    var body: some View {
        NavigationView {
            List(noteModel.data, id: \.id) { note in
                HStack {
                    VStack {
                        NavigationLink(note.title, destination: NoteView(noteTitle: note.title, noteDescription: note.description, data: note, noteModel: noteModel))
                    }
                }
            }
            .navigationTitle(appTitle)
            .navigationBarItems(trailing: Button(action: addNewNote) {
                Image(systemName: "plus")
            })
        }
    }
    
    func addNewNote() {
        let newNote = NoteData(id: noteModel.data.count, title: "New Note", description: "Description")
        noteModel.data.append(newNote)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let noteModel = NoteModel()
        return ContentView().environmentObject(noteModel)
    }
}

