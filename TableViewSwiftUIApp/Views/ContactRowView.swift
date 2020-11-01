//
//  SwiftUIView.swift
//  TableViewSwiftUIApp
//
//  Created by Konstantin on 01.11.2020.
//

import SwiftUI

struct ContactRowView: View {
    let text: String
    let image: String
    
    var body: some View {
        HStack {
            Image(systemName: image)
                .foregroundColor(.blue)
            Text(image == "phone.circle" ? "Phone: " : "Email: ")
                .frame(width: 60)
            Text(text)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ContactRowView(text: "88005553535", image: "phone.circle")
    }
}
