//
//  Contacts.swift
//  ContactList
//
//  Created by Aleksey on 23.01.2023.
//

struct Persons {
    let name: [String]
    let surename: [String]
    let phone: [String]
    let email: [String]
    
    var fullName: [String] {
        name + surename
    }
}


class DataStore {
    let name = ["Erick",
                "Peter",
                "Mary",
                "Elfrieda",
                "Edwina",
                "Scott",
                "Myron",
                "Jeremy",
                "John",
                "Patricia"]
    
    let surename = ["Briggs",
                    "Palmer",
                    "Griffith",
                    "Craig",
                    "Hill",
                    "McKenzie",
                    "Richardson",
                    "Bond", "Harris",
                    "Stewart"]
    
    let phone = ["Erick", "", "", "", "", "", "", "", "", ""]
    let email = ["Erick", "", "", "", "", "", "", "", "", ""]
    
    
}
