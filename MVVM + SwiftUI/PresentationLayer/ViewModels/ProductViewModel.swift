//
//  ProductViewModel.swift
//  MVVM + SwiftUI
//
//  Created by Azizbek Asadov on 21/01/23.
//

import Foundation

public struct ProductViewModel: Identifiable {
    public let product: Product
    
    public var id: Int { product.id }
    public var title: String { product.title }
}
