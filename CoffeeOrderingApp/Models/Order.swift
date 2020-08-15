//
//  Order.swift
//  CoffeeOrderingApp
//
//  Created by Diego Jurfest Ceccon on 14/08/20.
//  Copyright © 2020 ___DIEGOJURFESTCECCON___. All rights reserved.
//

import Foundation

struct Order: Codable {
    let name: String
    let coffeeName: String
    let total: Double
    let size: String
    
    
}
