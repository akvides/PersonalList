//
//  ExtendedPersonalListViewController.swift
//  PersonalList
//
//  Created by Василий Полторак on 19.04.2022.
//

import UIKit

class ExtendedPersonalListViewController: UITableViewController {

    let persons = DataManager().persons
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        
        let person = persons[indexPath.section]
        
        var content = cell.defaultContentConfiguration()

        if indexPath.row == 0 {
            content.text = person.phone
            content.image = UIImage(systemName: "phone")
        } else {
            content.text = person.mail
            content.image = UIImage(systemName: "tray")

        }

        cell.contentConfiguration = content
        
        return cell
    }
    
}
