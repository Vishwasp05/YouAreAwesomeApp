//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Vishwas Sharma on 06/12/23.
//

import SwiftUI

struct ContentView: View {
    let messageArray = ["Picture 1", "Picture 2", "Picture 3", "Picture 4", "Picture 5", "Picture 6", "Picture 7", "Picture 8", "Picture 9"]
    @State private var textField = ""
    @State private var imageName = ""
    @State private var lastMessageNumber = -1
    @State private var lastImageNumer = -1
    
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
                    Button("Change Image"){
                        
                        
//                        imageName = (imageName == "image0" ? "image1" : "image0")
                        //TODO: Update the imageNum var
                        var messageNumber = Int.random(in: 0...messageArray.count - 1)
                        while messageNumber == lastMessageNumber {
                            messageNumber = Int.random(in: 0...messageArray.count - 1)
                        }
                        textField = messageArray[messageNumber]
                        lastMessageNumber = messageNumber
                        
                        var imageNumber = Int.random(in: 0...9)
                        while imageNumber == lastImageNumer {
                            imageNumber = Int.random(in: 0...9)
                        }
                        imageName = "image\(imageNumber)"
                        lastImageNumer = imageNumber
                         
                         
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
