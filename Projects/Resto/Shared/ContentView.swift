//
//  ContentView.swift
//  Shared
//
//  Created by Ludovic Ollagnier on 29/10/2021.
//

import SwiftUI

struct ContentView: View {

    @Binding var listeResto: [Resto]
    @State private var search: String = ""

    var body: some View {
        List() {
            Text("Resto 1")
        }
        .searchable(text: $search)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(listeResto: .constant([]))
    }
}
