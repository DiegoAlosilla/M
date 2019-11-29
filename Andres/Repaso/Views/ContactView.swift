//
//  ContactView.swift
//  Repaso
//
//

import SwiftUI

struct ContactView: View {
    
    @EnvironmentObject var contactVM:ContactViewModel
    @State var showingModal = false
    
    
    var body: some View {
        Button(action: {
            self.showingModal.toggle()
            
        }){
            Text("Agregar contacto")
            
        }.sheet(isPresented: $showingModal, content:{
            NewContactView(contactVM: self.contactVM, showingModal: self.$showingModal, name: "")
        })
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
