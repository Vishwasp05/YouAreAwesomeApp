//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Vishwas Sharma on 06/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var textField = ""
    @State private var imageName = ""
    @State private var imageNum = 0
    var body: some View {
        ZStack {
            
            
            VStack {
                Spacer()
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 25.0))
                    .shadow(radius: 30)
                    .padding()
                    
                
                
                
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
                        
                        textField = (textField == "" ? "Change 1" : "Change 2")
//                        imageName = (imageName == "image0" ? "image1" : "image0")
                        imageName = "image\(imageNum)"
                        if imageNum == 10 {
                            imageNum = 0
                        }else {
                            imageNum += 1
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
