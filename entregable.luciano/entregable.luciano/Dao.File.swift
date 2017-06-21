//
//  Dao.File.swift
//  entregable.luciano
//
//  Created by Digital House on 19/6/17.
//  Copyright © 2017 luciano.com. All rights reserved.
//

import Foundation
import Alamofire

class ProductDAO {
    
    func getRemoteProducts(query: String, termine: @escaping ([Photography])->Void) -> Void {
        
        var params: [String: String] = [:]
        params[""] = query
        
        Alamofire
            .request("https://api.mercadolibre.com/sites/MLA/search", parameters: params)
            .responseJSON(completionHandler: { (myResponse) in
                
                if let rootDictionary = myResponse.value as? [String: AnyObject] {
                
                    if let resultsArray = rootDictionary[""] as? [ [String: AnyObject] ] {
                        var productsArray: [Photography] = []
                    
                        for productDictionary in resultsArray {
                        
                            if let artist = Photography(dictionary: productDictionary) {
                                productsArray.append(artist)
                            }
                        }

                        termine(productsArray)
                    }
                }
            })
    }
    
}
