//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Vishwas Sharma on 06/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var textField = ""
    var body: some View {
        ZStack {
            VStack {
                Spacer()
                Text("\(textField)")
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .frame(width: 300 ,height: 150)
                //                    .border(Color.black)
                //                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                Spacer()
                //                Divider()
                HStack {
                    Spacer()
                    Button("Change Text"){
                        if textField == "" {
                            textField = "You are Great!"
                        } else if textField == "You are Great!"{
                            textField = "You are awesome!"
                        } else {
                            textField = ""
                        }
                                      }
                    
                    Spacer()
                    //                    Divider()
                    
                    
                }
                .buttonStyle(.borderedProminent)
                .padding(.horizontal)
                
                
                  
                
                
            }
            
            
        }
        .background(Gradient(colors: [.red, .blue, .cyan])).opacity(0.85 )
        
    }
}

#Preview {
    ContentView()
}
