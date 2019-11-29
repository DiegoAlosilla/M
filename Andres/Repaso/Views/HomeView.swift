//
//  ContentView.swift
//  Repaso
//
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView{
            ContactView().tabItem{
                Text("Contactos")
            }
            SavedContactView().tabItem{
                Text("Guardados")
            }
            
        }
    }
}

