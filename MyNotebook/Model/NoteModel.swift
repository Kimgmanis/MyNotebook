//
//  NoteModel.swift
//  MyNotebook
//
//  Created by Kim Keiser on 09/06/2023.
//

import UIKit

// Data structure
struct NoteData: Hashable {
    var id: Int
    var title: String
    var description: String
    
}

class NoteModel: NSObject {
    // Array with sample data
    static let data: [NoteData] = [
        NoteData(id: 0, title: "Note", description: "Just a note"),
        NoteData(id: 1, title: "Note", description: "Just a note"),
        NoteData(id: 2, title: "Note", description: "Just a note")
    ]
}
