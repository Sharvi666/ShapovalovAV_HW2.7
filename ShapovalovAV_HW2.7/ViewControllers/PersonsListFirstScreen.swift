//
//  PersonsListFirstScreen.swift
//  ShapovalovAV_HW2.7
//
//  Created by Arthur on 08.09.2020.
//  Copyright © 2020 Arthur. All rights reserved.
//

import UIKit

class PersonsListFirstScreen: UITableViewController {
    
    var personsList = Person.getPersonsList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fullNameFirstScreen", for: indexPath)
        let person = personsList[indexPath.row]
        cell.textLabel?.text = person.fullName
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailInfoVC = segue.destination as? DetailInfoContacts else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        detailInfoVC.navigationItem.title = personsList[indexPath.row].fullName
        detailInfoVC.person = personsList[indexPath.row]
    }
}
