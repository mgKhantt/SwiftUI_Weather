//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Khant Phone Naing  on 05/11/2024.
//

import SwiftUI


struct WeatherButton : View {
    
    var title : String
    var textColor : Color
    var backgroundColor : Color
    
    var body: some View {
        VStack(spacing: 20) {
            Text(title)
                .frame(width: 280, height: 50)
                .background(backgroundColor)
                .font(.system(size: 20, weight: .bold, design: .default))
                .cornerRadius(8)
            
            Text(title)
                .frame(width: 280, height: 50)
                .background(backgroundColor)
                .font(.system(size: 20, weight: .bold, design: .default))
                .cornerRadius(8)
        }.foregroundStyle(.white)
    }
}



#Preview {
    WeatherButton(title: "Test", textColor: .white, backgroundColor: .blue)
}

