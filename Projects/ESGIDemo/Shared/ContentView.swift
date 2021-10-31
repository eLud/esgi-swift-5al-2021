//
//  ContentView.swift
//  Shared
//
//  Created by Ludovic Ollagnier on 03/09/2021.
//

import SwiftUI

struct ContentView: View {

    @State var isOn: Bool = false

    var parking: Parking

    @State var progress: Double = 0.5
    @State var total: Double = 1.5

    var body: some View {
        ZStack {
            ColorView(color: isOn ? .yellow : .white)
            VStack {
                ProgressView(value: progress, total: total) {
                    Text("Téléchargement")
                } currentValueLabel: {
                    Text("\(progress)Mo / \(total)Mo" + "- In progress")
                }

                Button("\(parking.cars.count)") {
                    isOn.toggle()
                }
                HStack(spacing: 50.0) {
                    Image(systemName: "pc")
                        .resizable()
                        .aspectRatio(contentMode: .fit)

                    Text("Label")
                        .padding(20)
                        .background(Color.red)
                        .cornerRadius(20)
                }
                Toggle(isOn: $isOn) {
                    Text("Color")
                        .bold()
                        .redacted(reason: .privacy)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(parking: Parking.demoParking)
            ContentView(parking: Parking.demoParking)
                .preferredColorScheme(.dark)
            ContentView(parking: Parking.demoParking)
                .environment(\.sizeCategory, .accessibilityExtraExtraLarge)
        }
    }
}
