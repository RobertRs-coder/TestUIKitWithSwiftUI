//
//  TableViewController.swift
//  TestUIKitWithSwiftUI
//
//  Created by Roberto Rojo Sahuquillo on 24/10/22.
//

import UIKit
import SwiftUI

class TableViewController: UITableViewController {

    let datos = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Registrar la celda/celdas
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return datos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        let item = datos[indexPath.row]
        
        //Configuramos la celda
        cell.contentConfiguration = UIHostingConfiguration{
            //Esto es SwiftUI
//            VStack{
//                Text("\(item)")
//            }
            CellRowView(numero: item)
        }

        return cell
    }

}
