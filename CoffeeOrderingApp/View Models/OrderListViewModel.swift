//
//  OrderListViewModel.swift
//  CoffeeOrderingApp
//
//  Created by Diego Jurfest Ceccon on 14/08/20.
//  Copyright © 2020 ___DIEGOJURFESTCECCON___. All rights reserved.
//

import Foundation

class OrderListViewModel: ObservableObject {
    
    @Published var orders = [OrderViewModel]()
    
    init() {
        fetchOrders()
    }
    
    func fetchOrders() {
        Webservice().getAllOrders { orders in
            if let orders = orders {
                self.orders = orders.map(OrderViewModel.init)
            }
            
        }
    }
    
    
}

class OrderViewModel: Identifiable {
    
    let id = UUID()
    
    
    var order: Order
    
    init(order: Order) {
        self.order = order
    }
    
    var name: String {
        return self.order.name
    }
    
    var size: String {
        return self.order.size
    }
    
    var coffeeName: String {
        return self.order.coffeeName
    }
    
    var totalPrice: Double {
        return self.order.total
    }
    
}
