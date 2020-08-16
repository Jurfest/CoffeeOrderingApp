//
//  OrderTotalView.swift
//  CoffeeOrderingApp
//
//  Created by Diego Jurfest Ceccon on 15/08/20.
//  Copyright © 2020 ___DIEGOJURFESTCECCON___. All rights reserved.
//

// Responsible to display the total information

import SwiftUI

struct OrderTotalView: View {
    
    let total: Double
    
    
    
    var body: some View {
        HStack(alignment: .center) {
            Spacer()
            Text(String(format: "$%.2f", total)).font(.title).padding(10).foregroundColor(Color.green)
            Spacer()
        }
    }
}

struct OrderTotalView_Previews: PreviewProvider {
    static var previews: some View {
        OrderTotalView(total: 0)
    }
}
