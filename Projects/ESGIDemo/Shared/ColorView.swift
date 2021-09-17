//
//  ColorView.swift
//  ColorView
//
//  Created by Ludovic Ollagnier on 03/09/2021.
//

import SwiftUI

struct ColorView: View {

    var color: Color

    var body: some View {
        color
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ColorView(color: .blue)
            ColorView(color: .white)
            ColorView(color: .red)
        }
    }
}
