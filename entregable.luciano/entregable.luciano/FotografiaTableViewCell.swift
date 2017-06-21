//
//  FotografiaTableViewCell.swift
//  entregable.luciano
//
//  Created by Digital House on 19/6/17.
//  Copyright © 2017 luciano.com. All rights reserved.
//

import UIKit
import Kingfisher

class FotografiaTableViewCell: UITableViewCell {

    @IBOutlet weak var ImagenFondo: UIImageView!
   
    func setup(product: Photography) {
       
        if let imageUrl = product.image_url {
            let url = URL(string: imageUrl)
            ImagenFondo.kf.setImage(with: url)
        } else {
            ImagenFondo.image = nil
            ImagenFondo.backgroundColor = UIColor.red
        }
    }


}




