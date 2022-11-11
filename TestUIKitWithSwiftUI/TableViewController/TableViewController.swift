//
//  TableViewController.swift
//  TestUIKitWithSwiftUI
//
//  Created by Roberto Rojo Sahuquillo on 24/10/22.
//

import UIKit
import SwiftUI

class TableViewController: UITableViewController {

    let data = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Register cell
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

        let item = data[indexPath.row]
        
        //Configure cell
        cell.contentConfiguration = UIHostingConfiguration{
            //This is SwiftUI
//            VStack{
//                Text("\(item)")
//            }
            CellRowView(numero: item)
        }
        return cell
    }
}
