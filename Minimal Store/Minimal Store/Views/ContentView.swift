//
//  ContentView.swift
//  Minimal Store
//
//  Created by Roy Akash on 10/04/20.
//  Copyright © 2020 theroyakash. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    let menu = Bundle.main.decode([MenuSection].self, from: "minimstore.json")
    
    var body: some View {
        NavigationView{
            List{
                ForEach(menu){ section in
                    Section(header: Text(section.name)){
                        ForEach(section.items){ item in
                            ItemRow(item: item)
                        }
                    }
                }
            }.onAppear{
                UITableView.appearance().separatorStyle = .none
                
            }.onDisappear{
                UITableView.appearance().separatorStyle = .none
                
            }
            
        .navigationBarTitle(Text("Order Now"))
        .listStyle(GroupedListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
