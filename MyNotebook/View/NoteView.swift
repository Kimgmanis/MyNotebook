//
//  NoteView.swift
//  MyNotebook
//
//  Created by Kim Keiser on 09/06/2023.
//

import SwiftUI

struct NoteView: View {
    var noteTitle = "Note title"
    var noteDescription = "Note description"
    
    var body: some View {
        VStack {
            HStack{
                Text(noteTitle)
            }
            TextEditor(text: .constant(noteDescription))
        }
    }
}

struct NoteView_Previews: PreviewProvider {
    static var previews: some View {
        NoteView()
    }
}
