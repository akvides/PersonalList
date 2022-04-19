//
//  PersonalListViewController.swift
//  PersonalList
//
//  Created by Василий Полторак on 19.04.2022.
//

import UIKit

class PersonalListViewController: UITableViewController {

    let persons = DataManager().persons

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)

        var content = cell.defaultContentConfiguration()
        content.text = persons[indexPath.row].fullName
        
        cell.contentConfiguration = content

        return cell
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailController = segue.destination as? DetailViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else {return}
        detailController.person = persons[indexPath.row]
    }
    
}
