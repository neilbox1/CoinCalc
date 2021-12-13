//
//  ContentView.swift
//  FinalProj
//
//  Created by Me on 12/12/21.
//

import SwiftUI
import Coinpaprika

struct ContentView: View {
    
    @State var textValue: String = ""
    @State var textValueResult: String = "0.007"
    var body: some View {
        
        ZStack {
            LinearGradient(gradient:  Gradient(colors: [.orange, .white]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
            VStack {
                //Header Content
                VStack{
                    Image(systemName: "bitcoinsign.circle")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200, alignment: .center)
                        .foregroundColor(.white)
                    Text("CoinCalc")
                        .font(.system(size: 70, weight: .medium))
                        .foregroundColor(.black)
                    
                }
                //Main Content
                VStack{
                    Text("Enter Your amount:")
                        .font(.system(size: 20, weight: .medium))
                        .foregroundColor(.black)
                        .frame(width: 200, height: 50, alignment: .center)
                    TextField("0.00054", text: $textValue)
                      .padding(10)
            
                      .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 1))
                      .frame(width: 200, height: 50, alignment: .center)
                    Text("The result is:")
                        .font(.system(size: 20, weight: .medium))
                        .foregroundColor(.black)
                        .frame(width: 200, height: 50, alignment: .center)
                    TextField("0.00054", text: $textValueResult)
                      .padding(10)
            
                      .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 1))
                      .frame(width: 200, height: 50, alignment: .center)
                }
              
                Button(action: {

                }) {
                    Text("Calculate")
                        .fontWeight(.bold)
                            .font(.title)
                            .padding()
                            .foregroundColor(.black)
                            .padding(25)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(Color.black, lineWidth: 3)
                            .frame(width: 300, height: 75, alignment: .center)
                            )
                }
                
               
                    
                    Spacer()
                
            }
            }
        }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
