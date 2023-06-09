//
//  ContentView.swift
//  MyNotebook
//
//  Created by Kim Keiser on 09/06/2023.
//

import SwiftUI

struct ContentView: View {
    var appTitle = "Note App"
    @State var note = "Note"
    
    var body: some View {
        ZStack {
            VStack {
                Text(appTitle)
                List {
                    Text(note)
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
