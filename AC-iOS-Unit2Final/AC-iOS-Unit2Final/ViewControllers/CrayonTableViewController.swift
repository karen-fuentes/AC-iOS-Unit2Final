//
//  CrayonTableViewController.swift
//  AC-iOS-Unit2Final
//
//  Created by Karen Fuentes on 2/14/18.
//  Copyright © 2018 Karen Fuentes. All rights reserved.
//

import UIKit

class CrayonTableViewController: UITableViewController {
    let crayonArray = Crayon.allTheCrayons
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayonArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "crayonCell", for: indexPath)
        let currentCrayon = crayonArray[indexPath.row]
        
        if currentCrayon.name == "Black" {
            cell.textLabel?.textColor = .white
        }
        cell.textLabel?.text = currentCrayon.name
        cell.backgroundColor = UIColor(red: CGFloat(currentCrayon.red/255), green: CGFloat(currentCrayon.green/255), blue: CGFloat(currentCrayon.blue/255), alpha: 1.0)
        
        return cell
    }
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "CrayonDetailSegue" ,
            let destination = segue.destination as? CrayonDetailViewController,
            let crayonIndex = tableView.indexPathForSelectedRow?.row
        {
            destination.Crayon = crayonArray[crayonIndex]
            }
        }
    }


