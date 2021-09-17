//
//  ContentView.swift
//  Shared
//
//  Created by Ludovic Ollagnier on 03/09/2021.
//

import SwiftUI

struct ContentView: View {

    @State var isOn: Bool = false

    var body: some View {
        ZStack {
            ColorView(color: isOn ? .yellow : .white)
            VStack {
                Button("Toggle light") {
                    isOn.toggle()
                }
                Toggle(isOn: $isOn) {
                    Text("Color")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.dark)
            ContentView()
            ContentView()
                .environment(\.sizeCategory, .accessibilityExtraExtraLarge)
        }
    }
}
