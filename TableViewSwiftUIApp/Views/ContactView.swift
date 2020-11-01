//
//  ContactView.swift
//  TableViewSwiftUIApp
//
//  Created by Konstantin on 01.11.2020.
//

import SwiftUI

struct ContactView: View {
    let person: Person
    
    
    var body: some View {
        VStack {
            VStack(spacing: 10) {
                Image(systemName: "person")
                    .resizable()
                    .frame(width: 100, height: 100, alignment: .center)
                    .padding(.top)
                
                Divider()
                VStack(alignment: .leading){
                    ContactRowView(text: person.phone,
                                          image: "phone.circle")
                    
                    Divider()
                    
                    ContactRowView(text: person.email,
                                          image: "mail")
                        .padding(.init(top: 0,
                                       leading: 0,
                                       bottom: 10,
                                       trailing: 0))
                }
            }
            .padding([.leading, .trailing])
            .frame(maxWidth: .infinity)
            .background(Color(.white)
                            .cornerRadius(15))
            .padding([.horizontal, .top])
            .navigationTitle(person.fullname)

            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        .background(Color(.systemGray6))
        
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView(person: Person(id: 1,
                                   name: "User",
                                   surname: "Surname",
                                   phone: "88005553535",
                                   email: "test@test.com"))
    }
}
