//
//  Dao.swift
//  Entregable3
//
//  Created by luciano on 6/29/17.
//  Copyright © 2017 luciano. All rights reserved.
//


import Foundation
import TTMVC
import Alamofire

class PhotosDAO {
    
    func getPhotosFromAPI(query: String, termine:@escaping ([Photos])->Void) -> Void {
        
        var params: [String: String] = [:]
        params["term"]         = query
        params["image_size"]   = "3"
        params["consumer_key"] = "B7PV57oxjqU6qOlEnzrUDxyied2LWt81Vm9Dewuk"
        
        
        Alamofire
            .request("https://api.500px.com/v1/photos/search", parameters: params)
            .responseJSON(completionHandler: {
                myResponse in
                
                if let rootDictionary = myResponse.value as? [String: AnyObject] {
                    if let resultsArray = rootDictionary["photos"] as? [ [String: AnyObject] ] {
                        
                        var photosArray: [Photos] = []
                        
                        for photosDictionary in resultsArray {
                            
                            if let photo = Photos(dictionary: photosDictionary) {
                                photosArray.append(photo)
                            }
                        }
                        
                        termine(photosArray)
                    }
                }
            })
    }
    
}
