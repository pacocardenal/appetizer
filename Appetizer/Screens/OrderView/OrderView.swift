//
//  OrderView.swift
//  Appetizer
//
//  Created by Paco Cardenal on 06/04/2021.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems = MockData.orderItems
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(orderItems) { appetizer in
                            AppetizerListCell(appetizer: appetizer)
                        }
                        .onDelete(perform: deleteItems)
                    }
                    .listStyle(PlainListStyle())
                    
                    Button {
                        print("Order placed")
                    } label: {
                        APButton(title: "$99.99 - Place Order")
                    }
                    .padding(.bottom, 30)
                }
                if orderItems.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order.\n Please add an appetizer.")
                }
            }
            .navigationTitle("📝 Orders")
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
