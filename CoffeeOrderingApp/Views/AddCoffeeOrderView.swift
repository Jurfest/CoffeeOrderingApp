//
//  AddCoffeeOrderView.swift
//  CoffeeOrderingApp
//
//  Created by Diego Jurfest Ceccon on 15/08/20.
//  Copyright © 2020 ___DIEGOJURFESTCECCON___. All rights reserved.
//

import SwiftUI

struct AddCoffeeOrderView: View {
    
    @ObservedObject private var addCoffeeOrderVM = addCoffeOrderViewModel()
    
    
    var body: some View {
        NavigationView {
            
            VStack {
                Form {
                    
                    Section(header: Text("INFORMATION").font(.body)) {
                        TextField("Enter name", text: self.$addCoffeeOrderVM.name)
                    }
                    
                    Section(header: Text("SELECT COFFEE").font(.body)) {
                        
                        ForEach(addCoffeeOrderVM.coffeeList, id: \.name) { coffee in
                            
                            CoffeeCellView(coffee: coffee, selection: self.$addCoffeeOrderVM.coffeeName)
                            
                        }
                        
                    }
                    
                    Section(header: Text("SELECT COFFEE").font(.body), footer: OrderTotalView(total: self.addCoffeeOrderVM.total)) {
                        Picker("", selection: self.$addCoffeeOrderVM.size) {
                            Text("Small").tag("Small")
                            
                            Text("Medium").tag("Medium")
                            
                            Text("Large").tag("Large")
                        }.pickerStyle(SegmentedPickerStyle())
                    }
                    
                }
                
                HStack {
                Button("Place Order") {
                    self.addCoffeeOrderVM.placeOrder()
                }
                }.padding(EdgeInsets(top: 12, leading: 100, bottom: 12, trailing: 100)).foregroundColor(Color.white).background(Color(red: 46/255, green: 204/255, blue: 133/255)).cornerRadius(10).padding(.bottom)
                
                

            }
            
            .navigationBarTitle("Add Order")
            
            
        }
        
    }
}

struct AddCoffeeOrderView_Previews: PreviewProvider {
    static var previews: some View {
        AddCoffeeOrderView()
    }
}

struct CoffeeCellView: View {
    
    let coffee: CoffeeViewModel
    @Binding var selection: String
    
    var body: some View {
        HStack {
            Image(coffee.imageUrl)
                .resizable().frame(width: 100, height: 100).cornerRadius(16)
            Text(coffee.name).font(.title).padding([.leading], 20)
            Spacer()
            Image(systemName: self.selection == self.coffee.name ? "checkmark" : "").padding()
        }.onTapGesture {
            self.selection = self.coffee.name
            
        }
    }
}
