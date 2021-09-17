//
//  Human.swift
//  MemoryLeaks
//
//  Created by Ludovic Ollagnier on 17/09/2021.
//

import Foundation

class Human {
    let name: String

    var father: Human?
    var child: Human?

    init(name: String) {
        self.name = name
    }
}
