//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Khant Phone Naing  on 05/11/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(
                isNight1: isNight
            )
            VStack(spacing: 8) {
                
                CityTextView(cityName: "Cupertino, USA")
                
                MainWeatherStatusView(
                    imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                    temperature: 75
                )
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", temperature: 77)
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", temperature: 88)
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind.snow", temperature: 77)
                    WeatherDayView(dayOfWeek: "FRI", imageName: "sunset.fill", temperature: 77)
                    WeatherDayView(dayOfWeek: "SAT", imageName: "snow", temperature: 77)
                }
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time", textColor: .blue, backgroundColor: .white)
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
    
    var dayOfWeek : String
    var imageName : String
    var temperature : Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundStyle(.white)
            Image(systemName: imageName)
//                .renderingMode(.original)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 28, weight: .medium))
                .foregroundStyle(.white)
        }
    }
}

struct BackgroundView: View {
    
    var isNight1: Bool
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: [isNight1 ? .black : .blue, isNight1 ? .gray : Color("lightBlue")]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .ignoresSafeArea()
//        ContainerRelativeShape()
//            .fill(
//                isNight1 ? Color.black.gradient : Color.blue.gradient
//            )
//            .ignoresSafeArea()
    }
}

struct CityTextView : View {
    
    var cityName : String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundStyle(.white)
            .padding()
    }
}

struct MainWeatherStatusView : View {
    
    var imageName : String
    var temperature : Int
    
    var body : some View {
        VStack {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundStyle(.white)
        }.padding(.bottom, 40)
    }
}


