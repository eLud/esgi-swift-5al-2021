//
//  Car.swift
//  ESGIDemo
//
//  Created by Ludovic Ollagnier on 29/10/2021.
//

import Foundation

struct Car {
    var brand: String
}

struct Parking {
    var cars: [Car] = []

    static var demoParking: Parking {
        var parking = Parking()
        parking.cars.append(Car(brand: "Peugeot"))
        return parking
    }
}
