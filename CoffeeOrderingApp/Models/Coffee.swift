//
//  Coffee.swift
//  CoffeeOrderingApp
//
//  Created by Diego Jurfest Ceccon on 14/08/20.
//  Copyright © 2020 ___DIEGOJURFESTCECCON___. All rights reserved.
//

import Foundation

struct Coffee {
    
    let name: String
    let imageUrl: String
    let price: Double
    
}

extension Coffee {
    static func all() -> [Coffee] {
        return [
            Coffee(name: "Macchiato", imageUrl: "Cappuccino", price: 2.5),
            Coffee(name: "Americano", imageUrl: "Americano", price: 2.1),
            Coffee(name: "Duplo", imageUrl: "Duplo", price: 1),
            Coffee(name: "Cappuccino", imageUrl: "Cappuccino", price: 2.5)
            
        ]
    }
}
