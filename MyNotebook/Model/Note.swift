//
//  Note.swift
//  MyNotebook
//
//  Created by Kim Keiser on 09/06/2023.
//

import Foundation

struct Note: Hashable, Codable {
    var id: Int
    var title: String
    var description: String
}
