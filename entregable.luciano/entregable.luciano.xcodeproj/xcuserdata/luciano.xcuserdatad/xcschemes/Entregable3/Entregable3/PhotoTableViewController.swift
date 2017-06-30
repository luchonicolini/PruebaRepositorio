//
//  FotografiaTableViewController.swift
//  Entregable3
//
//  Created by luciano on 6/29/17.
//  Copyright © 2017 luciano. All rights reserved.
//

import UIKit

class PhotoTableViewController: UITableViewController {
    
    
    
    var photo:[Photos] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
    
    // MARK: - Table view data source

    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photo.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ing", for: indexPath)
        if let photosCell = cell as? CeldaTableViewCell {
            photosCell.setup(photos: photo[indexPath.row])
        }
        return cell
    }

}
