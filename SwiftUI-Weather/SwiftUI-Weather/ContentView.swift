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
            LinearGradient(
                gradient: Gradient(colors: [.blue, Color("lightblue")]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("Cupertino, CA")
                .font(.system(size: 32, weight: .medium, design: .default))
                .foregroundColor(.white)
                .padding(.top, 20)
                
    
                VStack(spacing: 10) {
                    Image(systemName: "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 160, height: 160)
                    
                    Text("76°")
                        .foregroundColor(.white)
                        .font(.system(size: 70, weight: .medium))
                }
                
                Spacer()
                
    
                HStack(spacing: 16) {
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: "74°")
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: "70°")
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind.snow", temperature: "66°")
                    WeatherDayView(dayOfWeek: "FRI", imageName: "sunset.fill", temperature: "60°")
                    WeatherDayView(dayOfWeek: "SAT", imageName: "moon.stars.fill", temperature: "55°")
                }
                
                Spacer()
                Button {
                    print("tapped")
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 65)
                        .background(Color.white)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .cornerRadius(10)
                }
                
                Spacer()
            }
            .padding(.horizontal)
        }
    }
}

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var temperature: String
    
    var body: some View {
        VStack(spacing: 8) {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 45, height: 45)
            
            Text(temperature)
                .foregroundColor(.white)
                .font(.system(size: 22, weight: .medium))
        }
    }
}

#Preview {
    ContentView()
}
