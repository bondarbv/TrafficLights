//
//  ColorCircleView.swift
//  TrafficLights
//
//  Created by Bohdan on 20.01.2022.
//

import SwiftUI

struct ColorCircleView: View {
    
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .fill(LinearGradient(gradient: Gradient(colors: [color, .black]), startPoint: .top, endPoint: .bottom))
            .frame(width: 150, height: 150)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.black, lineWidth: 4))
    }
}

struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircleView(color: .red, opacity: 1)
    }
}
