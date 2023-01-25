//
//  FirstTableViewController.swift
//  ContactList
//
//  Created by Aleksey on 23.01.2023.
//

import UIKit

final class FirstTableViewController: UITableViewController {

    var persons: [Person]!
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "1", for: indexPath)

        let person = persons[indexPath.row]
        cell.textLabel?.text = person.fullName

        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoVC = segue.destination as? InfoPersonViewController else { return }
        
        if let indexPath = tableView.indexPathForSelectedRow {
            infoVC.person = persons[indexPath.row]
        }
    }
}
