//
//  ViewController.swift
//  Companies
//
//  Created by Isai Yepez on 2/17/19.
//  Copyright © 2019 Isai Yepez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Companies"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named:"plus"), style: .plain, target: self, action: #selector(handleAddCompany))
        
        //view.backgroundColor = .blue
        //navigationController?.navigationBar.backgroundColor = .red
        setupNavigationStyle()
    }
    
    @objc func handleAddCompany() {
        print("company added")
    
    }
    
    func setupNavigationStyle(){
    
        navigationController?.navigationBar.isTranslucent = false
        let lightred = UIColor(displayP3Red: 247/255, green: 66/255, blue: 82/255, alpha: 1)
        navigationController?.navigationBar.barTintColor = lightred
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }
    
}

