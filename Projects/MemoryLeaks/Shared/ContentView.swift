//
//  ContentView.swift
//  Shared
//
//  Created by Ludovic Ollagnier on 17/09/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button("Populate") {
            for _ in 0...10_000 {
                let father = Human(name: "Father")
                let child = Human(name: "Child")

                father.child = child
                child.father = father
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
