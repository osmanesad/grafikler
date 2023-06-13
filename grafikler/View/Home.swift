//
//  Home.swift
//  grafikler
//
//  Created by Osman Esad on 13.06.2023.
//

import SwiftUI
import Charts

struct Home: View {
    @State private var graphType: GraphType = .donut
    var body: some View {
        VStack{
            Picker("", selection: $graphType){
                ForEach(GraphType.allCases, id: \.rawValue) { type in
                    Text(type.rawValue)
                        .tag(type)
                    
                }
            }
            .pickerStyle(.segmented)
            .labelsHidden()
            
            Chart {
                
                ForEach(coffeeSales) {sales in
                    if graphType == .bar {
                        
                    } else {
                        
                    }
                }
            }
            
            Spacer(minLength: 0)
        }
        .padding()
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
