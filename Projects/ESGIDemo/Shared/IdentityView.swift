//
//  IdentityView.swift
//  ESGIDemo
//
//  Created by Ludovic Ollagnier on 29/10/2021.
//

import SwiftUI

struct IdentityView: View {

    @State private var firstName: String = "Hello"
    @State private var progress: Double = 0.0

    var body: some View {
        ZStack {
            DemoView(firstName: $firstName, progress: $progress)
        }
    }
}

struct DemoView: View {

    @Binding var firstName: String
    @Binding var progress: Double

    var body: some View {
        VStack {
            Text(firstName)
            TextField("First Name", text: $firstName)
            TextField("First Name", text: $firstName)
            TextField("First Name", text: $firstName)
            TextField("First Name", text: $firstName)
            CleanButton(stringToClean: $firstName)
            Slider(value: $progress)
            Text("\(progress)")
        }
    }
}

struct CleanButton: View {

    @Binding var stringToClean: String

    var body: some View {
        VStack {
            Button("Empty") {
                stringToClean = ""
            }
            Text(stringToClean)
        }
    }
}

struct IdentityView_Previews: PreviewProvider {
    static var previews: some View {
        IdentityView()
    }
}

