//
//  Photo.File.swift
//  Entregable3
//
//  Created by luciano on 6/29/17.
//  Copyright © 2017 luciano. All rights reserved.
//

import Foundation
import TTMVC

class Photos: TTGenericDTO {
    
    var photoURL: String?
    var avatarURL: String?
    var username: String?
    var camera: String?
    var name: String?
    var city: String?
    var userid: Int64?
    
    override func loadFromDictionary(_ dictionary: [String : AnyObject]) {
        super.loadFromDictionary(dictionary)
        
        self.photoURL = dictionary["image_url"] as? String
        self.camera   = dictionary["camera"]    as? String
        self.name     = dictionary["name"]      as? String
        
        self.userid   = dictionary["id"]        as? Int64
        
        if let userDictionary = dictionary["user"] {
            self.avatarURL = userDictionary["userpic_https_url"] as? String
            self.username = userDictionary["fullname"] as? String
            self.city     = userDictionary["city"]      as? String
        }
        
    }
    
}

