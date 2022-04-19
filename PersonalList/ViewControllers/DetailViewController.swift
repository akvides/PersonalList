//
//  DetailViewController.swift
//  PersonalList
//
//  Created by Василий Полторак on 19.04.2022.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var mailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = person.fullName
        phoneLabel.text = "Phone: \(person.phone)"
        mailLabel.text = "Email: \(person.mail)"
        
    }

}
