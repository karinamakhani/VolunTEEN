//
//  CompanyTableViewController.swift
//  VolunTEEN
//
//  Created by Karina on 8/12/20.
//  Copyright © 2020 KWK. All rights reserved.
//

import UIKit

class CompanyTableViewController: UITableViewController {

    var listOfOpps : [PostOpp] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        let eachOpp = listOfOpps[indexPath.row]
        cell.textLabel?.text = eachOpp.description
        if eachOpp.remote {
            cell.textLabel?.text = "🏠" + eachOpp.description
        } else      {
            cell.textLabel?.text = eachOpp.description
            }


        // Configure the cell...

        return cell
    }


    

   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
