//
//  Rsto.swift
//  Resto
//
//  Created by Ludovic Ollagnier on 29/10/2021.
//

import Foundation

struct Resto: Codable {
    var name: String
    var note: Float

    var isOpen: Bool
}

struct Annuaire: Codable {
    var restos: [Resto] = []

    init() {
        let resto1 = Resto(name: "Resto1", note: 5, isOpen: true)
        let resto2 = Resto(name: "Resto2", note: 8, isOpen: false)
        let resto3 = Resto(name: "Resto3", note: 2, isOpen: true)
        restos = [resto1, resto2, resto3]
    }
}
