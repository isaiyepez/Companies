//
//  ViewController.swift
//  Companies
//
//  Created by Isai Yepez on 2/17/19.
//  Copyright © 2019 Isai Yepez. All rights reserved.
//

import UIKit

class CompaniesController: UITableViewController {
    
    var companies = [
        Company(name: "Apple", founded: Date()),
        Company(name: "Facebook", founded: Date()),
        Company(name: "Microsoft", founded: Date()),
        Company(name: "Google", founded: Date())
    ]
    
    func addCompany(company: Company) {
        
        //1 - modify your array
        companies.append(company)
        //2 - insert a new index path into tableView
        let newIndexPath = IndexPath(row: companies.count - 1, section: 0)
        tableView.insertRows(at: [newIndexPath], with: .automatic)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Test ADD", style: .plain, target: self, action: #selector(addCompany))
        
        navigationItem.title = "Companies"
        tableView.backgroundColor = .darkBlue
        tableView.separatorColor = .white
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named:"plus"), style: .plain, target: self, action: #selector(handleAddCompany))
        //tableView.separatorStyle = .none
        tableView.tableFooterView = UIView()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "CellId")
        //view.backgroundColor = .blue
        //navigationController?.navigationBar.backgroundColor = .red
        
    }
    
    @objc func handleAddCompany() {
        let createCompanyController = CreateCompanyController()
        //createCompanyController.view.backgroundColor = .green
        let navController = CustomNavigationController(rootViewController: createCompanyController)
        createCompanyController.companiesController = self
        present(navController, animated: true, completion: nil)
        
    
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = .lightBlue
        
        return view
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellId", for: indexPath)
        cell.backgroundColor = .tealColor
        let company = companies[indexPath.row]
        cell.textLabel?.text = company.name
        cell.textLabel?.textColor = .white
        cell.textLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return companies.count
    }
}

