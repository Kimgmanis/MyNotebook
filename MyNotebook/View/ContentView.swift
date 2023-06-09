//
//  ContentView.swift
//  MyNotebook
//
//  Created by Kim Keiser on 09/06/2023.
//

import SwiftUI

struct ContentView: View {
    var appTitle = "Notes"
    
    var body: some View {
        NavigationView {
            // Using NoteData id to find the note objects
            List(NoteModel.data, id: \.id) { object in
                // format
                HStack {
                    VStack {
                        // Link to note on title
                        NavigationLink(object.title, destination: NoteView(data: object))
                    }
                }
                .navigationTitle(appTitle)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
