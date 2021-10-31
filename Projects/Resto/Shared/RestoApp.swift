//
//  RestoApp.swift
//  Shared
//
//  Created by Ludovic Ollagnier on 29/10/2021.
//

import SwiftUI

@main
struct RestoApp: App {

    @State private var annuaire = Annuaire()

    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView(listeResto: $annuaire.restos)
                }
                .tabItem {
                    Text("Annuaire")
            }
                Text("\(annuaire.restos.count)")
                    .tabItem {
                        Text("Else")
                    }
                Text("\(annuaire.restos.count)")
                    .tabItem {
                        Text("Else")
                    }
                Text("\(annuaire.restos.count)")
                    .tabItem {
                        Text("Else")
                    }
            }
        }
    }
}
