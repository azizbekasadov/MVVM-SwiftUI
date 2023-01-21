//
//  ContentView.swift
//  MVVM + SwiftUI
//
//  Created by Azizbek Asadov on 21/01/23.
//

import SwiftUI

public struct ContentView: View {
    @StateObject private var productListVM: ProductListViewModel = .init()
    
    public var body: some View {
        NavigationView {
            List(productListVM.products) { product in
                Text(product.title)
            }.task {
                do {
                    try await productListVM.fetchProducts()
                } catch {
                    print(error.localizedDescription)
                }
            }
        }.navigationTitle(Text("Products List"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
