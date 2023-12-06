//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Vishwas Sharma on 06/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var num = 0
    var body: some View {
        VStack {
          
            Text("\(num)")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.purple)
            HStack {
                Button("Increment!") {
                    num += 1
                }
                .buttonStyle(.bordered)
                
                Button("Decrement"){
                    num -= 1                }
            }
             .buttonStyle(.borderedProminent)
            
            
            
            
            
        }
        
    }
}

#Preview {
    ContentView()
}
