//
//  ProductListViewModel.swift
//  MVVM + SwiftUI
//
//  Created by Azizbek Asadov on 21/01/23.
//

import SwiftUI

public final class ProductListViewModel: ObservableObject {
    @Published public var products: [ProductViewModel] = []
    
    public func fetchProducts() async throws {
        let service = API()
        let products = try await service.getAllProducts()
        self.products = products.map(ProductViewModel.init)
    }
}
