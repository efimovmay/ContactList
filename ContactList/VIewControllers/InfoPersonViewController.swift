//
//  ViewController.swift
//  ContactList
//
//  Created by Aleksey on 20.01.2023.
//

import UIKit

final class InfoPersonViewController: UIViewController {
   
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        settingsUI()
    }

    private func settingsUI() {
        title = person.fullName
        phoneLabel.text = person.phone
        emailLabel.text = person.email
    }
}

