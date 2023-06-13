//
//  ContentView.swift
//  grafikler
//
//  Created by Osman Esad on 13.06.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            Home()
                .navigationTitle("Satış Grafikleri")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
