//
//  CoffeeViewModel.swift
//  CoffeeOrderingApp
//
//  Created by Diego Jurfest Ceccon on 15/08/20.
//  Copyright © 2020 ___DIEGOJURFESTCECCON___. All rights reserved.
//

import Foundation

class CoffeeListViewModel: ObservableObject {
    var coffeeList: [CoffeeViewModel] = [CoffeeViewModel]()
}

struct CoffeeViewModel {
    var coffee: Coffee
    
    init(coffee: Coffee) {
        self.coffee = coffee
    }
    
    var name: String {
        return self.coffee.name
    }
    
    var imageUrl    : String {
        return self.coffee.imageUrl
    }
    
    var price: Double {
        return self.coffee.price
    }
    
    
}
