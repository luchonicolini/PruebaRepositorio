//
//  FotografiaTableViewController.swift
//  entregable.luciano
//
//  Created by Digital House on 19/6/17.
//  Copyright © 2017 luciano.com. All rights reserved.
//

import UIKit

class FotografiaTableViewController: UITableViewController {

    var fotografia:[Photography] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fotografia.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ID", for: indexPath)
        if let aCell = cell as? FotografiaTableViewCell {
            aCell.setup(product: fotografia[indexPath.row])
        }
        return cell
    }
    
}





