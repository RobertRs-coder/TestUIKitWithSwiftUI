//
//  ViewController.swift
//  TestUIKitWithSwiftUI
//
//  Created by Roberto Rojo Sahuquillo on 22/10/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Home"
    }


    @IBAction func onTapViewController(_ sender: UIButton) {
        let swiftUIVC = UIHostingController(rootView: SwiftUIViewTest())
        self.navigationController?.pushViewController(swiftUIVC, animated: true)
    }
    
    
    @IBAction func onTapTableViewController(_ sender: UIButton) {
        
    }
    
}

