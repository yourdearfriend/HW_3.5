//
//  File.swift
//  TableViewSwiftUIApp
//
//  Created by Konstantin on 01.11.2020.
//
import SwiftUI

struct Person: Identifiable {
    var id: Int
    let name: String
    let surname: String
    var phone: String
    var email: String
    
    var fullname: String {
        "\(name) \(surname)"
    }
}

extension Person {
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        let ids = DataManager.shared.ids
        
        let minCount = min(names.count, surnames.count, emails.count, phones.count, ids.count)
        
        for index in 0..<minCount {
            let person = Person(id: ids[index],
                                name: names[index],
                                surname: surnames[index],
                                phone: phones[index],
                                email: emails[index])
            persons.append(person)
        }
        return persons
    }
}

