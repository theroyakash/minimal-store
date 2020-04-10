//
//  ItemRow.swift
//  Minimal Store
//
//  Created by Roy Akash on 10/04/20.
//  Copyright © 2020 theroyakash. All rights reserved.
//

import SwiftUI

struct ItemRow: View {
    
    var item: MenuItem
    
    var body: some View {
        
        NavigationLink(destination: ItemDetail(item: item)){
        
            VStack(alignment: .leading){
                Image(item.mainImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.top, 30)
                
                Text(item.name).padding(.top)
                Text("$\(item.price, specifier: "%.2f")").padding(.bottom)
            }
                
        }
    }
}
