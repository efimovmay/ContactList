//
//  PersonTabBarController.swift
//  ContactList
//
//  Created by Aleksey on 25.01.2023.
//

import UIKit

let persons = Person.getPersons()

final class PersonTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sendDataToViewControllers()
    }
    
    
    private func sendDataToViewControllers() {
        guard let firstVC = viewControllers?[0] as? FirstTableViewController else { return }
        firstVC.persons = persons
        
        guard let secondVC = viewControllers?[1] as? SecondTableViewController else { return }
        secondVC.persons = persons
    }
}
