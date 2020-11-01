//
//  DetailContactsLists.swift
//  TableViewSwiftUIApp
//
//  Created by Konstantin on 01.11.2020.
//

import SwiftUI

struct DetailContactsListsView: View {
    let persons: [Person]
    
    var body: some View {
        VStack{
            NavigationView {
                ScrollView(.vertical, showsIndicators: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/) {
                    ForEach(persons) { person in
                        Section {
                            Text(person.fullname)
                        }
                        .frame(maxWidth: .infinity)
                        .background(Color(.systemGray3))
                        
                        VStack(alignment: .leading, spacing: 0) {
                            ContactRowView(text: person.email, image: "mail")
                            Divider()
                            ContactRowView(text: person.phone, image: "phone.circle")
                        }
                        .padding(.horizontal)
                    }
                }.navigationBarTitle("Contact List")
            }
        }
    }
}

struct DetailContactsLists_Previews: PreviewProvider {
    static var previews: some View {
        DetailContactsListsView(persons: Person.getContactList())
    }
}
