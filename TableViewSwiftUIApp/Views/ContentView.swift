//
//  ContentView.swift
//  TableViewSwiftUIApp
//
//  Created by Konstantin on 01.11.2020.
//

import SwiftUI

struct ContentView: View {
    let persons: [Person] = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactsListsView(navName: "Persons list",
                              persons: persons)
                .tabItem {
                    Image(systemName: "rectangle.stack.badge.person.crop")
                    Text("Contacts")}
            
            DetailContactsListsView(persons: persons)
                .tabItem {
                    Image(systemName: "rectangle.stack.person.crop")
                    Text("Contacts Detail")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
