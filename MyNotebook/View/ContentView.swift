//
//  ContentView.swift
//  MyNotebook
//
//  Created by Kim Keiser on 09/06/2023.
//

import SwiftUI

struct ContentView: View {
    // Notes model class obj
    @ObservedObject var noteModel = NoteModel()
    var appTitle = "Notes"
    
    var body: some View {
        NavigationView {
            //Notes array from NoteModel
            List(noteModel.data, id: \.id) { note in
                HStack {
                    VStack {
                        // Displays title of note and loads NoteView w relevent data
                        NavigationLink(note.title, destination: NoteView(noteTitle: note.title, noteDescription: note.description, data: note, noteModel: noteModel))
                    }
                }
            }
            .navigationTitle(appTitle)
            // Add note button
            .navigationBarItems(trailing: Button(action: addNewNote) {
                Image(systemName: "plus")
            })
        }
    }
    // Creates new note and adds to note data array
    func addNewNote() {
        let newNote = NoteData(id: noteModel.data.count, title: "New Note", description: "Description")
        noteModel.data.append(newNote)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let noteModel = NoteModel()
        // loads notes
        return ContentView().environmentObject(noteModel)
    }
}

