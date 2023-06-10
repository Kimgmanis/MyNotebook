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

class NoteModel: ObservableObject, RandomAccessCollection {
    typealias Element = NoteData
    typealias Index = Array<NoteData>.Index
    
    @Published var data: [NoteData] = [
        NoteData(id: 0, title: "Note", description: "Just a note"),
        NoteData(id: 1, title: "Note", description: "Just a note"),
        NoteData(id: 2, title: "Note", description: "Just a note")
    ]
    
    var startIndex: Index { data.startIndex }
    var endIndex: Index { data.endIndex }
    
    func index(after i: Index) -> Index {
        data.index(after: i)
    }
    
    subscript(position: Index) -> Element {
        data[position]
    }
    
}
