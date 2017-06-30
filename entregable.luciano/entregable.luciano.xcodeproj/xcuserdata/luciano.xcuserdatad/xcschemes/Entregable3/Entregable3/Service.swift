//
//  Service.swift
//  Entregable3
//
//  Created by luciano on 6/29/17.
//  Copyright © 2017 luciano. All rights reserved.
//

import Foundation

class PhotosService {
    
    func getPhotosFromAPI(query: String, termine:@escaping ([Photos])->Void) -> Void {
        
        let photosDAO = PhotosDAO()
        
        photosDAO.getPhotosFromAPI(query: query, termine: { myPhotos in
            termine(myPhotos)
        })
    }
    
}

