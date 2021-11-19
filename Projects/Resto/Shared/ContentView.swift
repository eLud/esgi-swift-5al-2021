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

    @AppStorage("lastName") var lastName: String = "No lastName"

    var body: some View {
        List() {
            Text("Resto 1")
            Section {
                Text(readInUserDefaults())
                Button("Save firstName") {
                    persistInUserDefaults()
                }
            }
            Section {
                Text(lastName)
                Button("Save lastName") {
                    lastName = "Ollagnier"
                }
            }

            Section {
                Button("Save Restos") {
                    saveJSON(from: listeResto)
                }
            }
        }
        .searchable(text: $search)
    }

    func persistInUserDefaults() {
        let def = UserDefaults.standard
        def.set("Ludovic", forKey: "firstName")
    }

    func readInUserDefaults() -> String {
        let def = UserDefaults.standard
        let inDefaults = def.string(forKey: "firstName")
        return inDefaults ?? "No firstName"
    }

    func saveJSON(from data : [Resto]) {
        let encoder = JSONEncoder()
        let data = try? encoder.encode(data)

        guard let url = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else { return }
        let fullUrl = url.appendingPathComponent("backup.json")

        try? data?.write(to: fullUrl)
        // let data = Data(contentsOf: fullURL)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(listeResto: .constant([]))
    }
}
