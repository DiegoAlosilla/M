//
//  SavedContactView.swift
//  Repaso
//
//

import SwiftUI

struct SavedContactView: View {
    
    @EnvironmentObject var contactVM:ContactViewModel
    
    var body: some View {
        List{
            ForEach(self.contactVM.contacts, id : \.self){
                contact in
                Text(contact.name!)
                
            }.onDelete(perform: removeContact)
        }
    }
    
    func removeContact(at offsets: IndexSet) {
        for index in offsets {
            contactVM.deleteContact(position: index)
        }
    }
}


