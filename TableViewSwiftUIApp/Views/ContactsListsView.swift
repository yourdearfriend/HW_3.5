//
//  ContactsLists.swift
//  TableViewSwiftUIApp
//
//  Created by Konstantin on 01.11.2020.
//

import SwiftUI

struct ContactsListsView: View {
    
    let navName: String
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                NavigationLink(
                    destination: ContactView(person: person)) {
                Text("\(person.fullname)")
                }
            }
            .navigationBarTitle(Text(navName))
        }
    }
    
}

struct ContactsLists_Previews: PreviewProvider {
    static var previews: some View {
        ContactsListsView(navName: "Persons List",
                      persons: Person.getContactList())
    }
}
