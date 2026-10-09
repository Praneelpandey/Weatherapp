//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Student on 08/10/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient (colors: [.blue, .white]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 10){
                Text("Cupertino ,CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
                
                VStack{
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    
                    Text("76°")
                        .foregroundColor(.white)
                        .font(.system(size: 80,weight: .medium))
                    
                    Spacer()
                        HStack{
                            VStack{
                                Text("TUE")
                                    .font(.system(size: 20, weight: .medium,design: .default))
                                    .foregroundColor(.white)
                                
                                
                                Image(systemName: "cloud.sun.fill")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 70,height: 70)
                                
                                Text("74°")
                                    .foregroundColor(.white)
                                    .font(.system(size: 30))
                                
                            }
                            
                            
                            VStack{
                                Text("WED")
                                    .font(.system(size: 20, weight: .medium,design: .default))
                                    .foregroundColor(.white)
                                
                                Image(systemName: "sun.max.fill")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 70,height: 70)
                                
                                Text("70°")
                                    .foregroundColor(.white)
                                    .font(.system(size: 30))
                                
                            }
                            
                            VStack{
                                Text("THU")
                                    .font(.system(size: 20, weight: .medium,design: .default))
                                    .foregroundColor(.white)
                                
                                Image(systemName: "wind")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 70,height: 70)
                                
                                Text("66°")
                                    .foregroundColor(.white)
                                    .font(.system(size: 30))
                            }
                            
                            VStack{
                                
                                Text("FRI")
                                    .font(.system(size: 20, weight: .medium,design: .default))
                                    .foregroundColor(.white)
                                
                                Image(systemName: "sunset.fill")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 70,height: 70)
                                
                                Text("60°")
                                    .foregroundColor(.white)
                                    .font(.system(size: 30))
                                
                            }
                            
                            VStack{
                                Text("SAT")
                                    .font(.system(size: 20, weight: .medium,design: .default))
                                    .foregroundColor(.white)
                                
                                Image(systemName: "moon.stars.fill")
                                    .renderingMode(.original)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 70,height: 70)
                                
                                Text("55°")
                                    .foregroundColor(.white)
                                    .font(.system(size: 30))
                                
                            }
                        }
                    }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
