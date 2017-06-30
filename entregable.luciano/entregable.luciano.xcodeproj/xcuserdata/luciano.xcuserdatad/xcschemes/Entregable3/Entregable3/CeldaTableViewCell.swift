//
//  CeldaTableViewCell.swift
//  Entregable3
//
//  Created by luciano on 6/29/17.
//  Copyright © 2017 luciano. All rights reserved.
//

import UIKit
import Kingfisher

class CeldaTableViewCell: UITableViewCell {
    
    //view
    
    @IBOutlet weak var imagenPerfil: UIImageView!
    
    @IBOutlet weak var imagenFondo: UIImageView!
    
    //label
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var idLabel: UILabel!
    
    @IBOutlet weak var viewlabel: UILabel!
    
    //revisar image
    override var imageView: UIImageView {
    self.imagenPerfil.layer.cornerRadius = self.imagenPerfil.frame.size.width / 2
    
        return self.imagenPerfil
    }


    
    func setup(photos: Photos) -> Void {
        
        idLabel.text = photos.camera
        usernameLabel.text = photos.username
        viewlabel.text = photos.name
        
        if let photoURL = photos.photoURL {
            let url = URL(string: photoURL)
            imagenFondo.kf.setImage(with: url)
        } else {
            imagenFondo.image = nil
        }
        
        if let avatarURL = photos.avatarURL {
            let url = URL(string: avatarURL)
            imageView.kf.setImage(with: url)
        } else {
            imageView.image = nil
        }
        
    }
    
}


    


