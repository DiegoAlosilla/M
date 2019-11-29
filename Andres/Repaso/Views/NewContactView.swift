//
//  NewContactView.swift
//  Repaso
//
//

import SwiftUI

struct NewContactView: View {
    
    @ObservedObject var contactVM:ContactViewModel
    @Binding var showingModal : Bool
    @State var name : String
    
    var body: some View {
        VStack{
            TextField("Nombre",text:$name).padding()
            Button(action:{
                self.contactVM.addContact(name: self.name)
                self.showingModal.toggle()
            }){
                Text("Guardar")
            }
        }
    }
}


