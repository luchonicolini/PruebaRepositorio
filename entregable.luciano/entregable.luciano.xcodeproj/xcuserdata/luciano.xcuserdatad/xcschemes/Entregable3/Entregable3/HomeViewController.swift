//
//  HomeViewController.swift
//  Entregable3
//
//  Created by luciano on 6/29/17.
//  Copyright © 2017 luciano. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
   
    //agregado
    let progressAlert: UIAlertController = UIAlertController(title: "Cargando Contenido", message: "Espere, por favor", preferredStyle: UIAlertControllerStyle.alert)
    let loadingIndicator: UIActivityIndicatorView = UIActivityIndicatorView()

    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var search: UITextField!
    
    private var results: [Photos] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    
    }
    
    @IBAction func searchButton(_ sender: UIButton) {
        
        if let searchTerm = search.text {
            let photoService = PhotosService()
            photoService.getPhotosFromAPI(query: searchTerm, termine: { (photos) in
                self.results = photos
                self.performSegue(withIdentifier: "river", sender: nil)
            })
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PhotoTableViewController {
            destination.photo = self.results
        }
    }
    
    
    
}

