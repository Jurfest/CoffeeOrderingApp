//
//  ContentView.swift
//  CoffeeOrderingApp
//
//  Created by Diego Jurfest Ceccon on 14/08/20.
//  Copyright © 2020 ___DIEGOJURFESTCECCON___. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var orderListVM = OrderListViewModel()
    
    
    
    
    var body: some View {
        
        NavigationView {
            OrderListView(orders: self.orderListVM.orders)
            
            .navigationBarTitle("Coffee Orders")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
