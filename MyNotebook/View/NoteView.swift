//
//  NoteView.swift
//  MyNotebook
//
//  Created by Kim Keiser on 09/06/2023.
//

import SwiftUI

struct NoteView: View {
    @State var noteTitle = "Title"
    @State var noteDescription = "Note description"
    var data: NoteData
    
    var body: some View {
        VStack {
            Text(data.title).bold()
            HStack {
                Text(data.description)
                Spacer()
            }
            Spacer()
        }
    }
}
    
    struct NoteView_Previews: PreviewProvider {
        static var previews: some View {
            NoteView(data: NoteModel.data[0])
        }
    }
