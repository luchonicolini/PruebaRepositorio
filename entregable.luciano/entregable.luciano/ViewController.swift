//
//  ViewController.swift
//  entregable.luciano
//
//  Created by Digital House on 19/6/17.
//  Copyright © 2017 luciano.com. All rights reserved.
//

import UIKit

class PrimerViewController: UIViewController {

    @IBOutlet weak var buscador: UITextField!
    @IBOutlet weak var boton: UIButton!
    
    private var results: [Photography] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


    @IBAction func funcboton(_ sender: Any) {
        if let searchTerm = buscador.text {
            let productService = ProductService()
            productService.getProductsFromDAO(query: searchTerm, termine: { (products) in
                self.results = products
                self.performSegue(withIdentifier: "ID", sender: nil)
            })
        }
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? FotografiaTableViewController {
            destination.fotografia = results
        }
    }
    
}

    







