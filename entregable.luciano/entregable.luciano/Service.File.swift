//
//  Service.File.swift
//  entregable.luciano
//
//  Created by Digital House on 19/6/17.
//  Copyright © 2017 luciano.com. All rights reserved.
//

import Foundation

class ProductService {
    
    func getProductsFromDAO(query: String, termine: @escaping ([Photography])-> Void) -> Void {
        
        let productDAO = ProductDAO()
        
        productDAO.getRemoteProducts(query: query, termine: { (products) in
            termine(products)
        })
    }
    
}
