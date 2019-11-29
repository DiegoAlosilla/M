//
//  ContactViewModel.swift
//  Repaso
//
//

import SwiftUI

class ContactViewModel:ObservableObject{
    @Published var contacts = [Contact]()
    
    
    func addContact(name:String){
        var flag = false
        let contact = Contact(context: context)
        contact.name=name
        for i in contacts{
            if(i.name==contact.name){
                print("Ya contiene este nombre")
                flag=true
                break
            }
        }
        if(flag != true){
            contacts.append(contact)
            saveContext()
        }
    }
    
    func deleteContact(position: Int){
        
        let contact = contacts[position]
        
        contacts.remove(at: position)
        context.delete(contact)
        saveContext()
    }
    
    
    func saveContext(){
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
    }
    
    func getAllContacts(){
        do {
            self.contacts = try context.fetch(Contact.fetchRequest())
        } catch (let error) {
            print(error)
        }
    }
    
    init(){
        getAllContacts()
    }
    
}
