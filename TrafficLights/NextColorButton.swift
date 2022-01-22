//
//  NextColorButton.swift
//  TrafficLights
//
//  Created by Bohdan on 22.01.2022.
//

import SwiftUI

struct NextColorButton: View {
    
    let action: () -> Void
    let title: String
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.largeTitle)
                .foregroundColor(Color.white)
                .frame(width: 100, height: 50)
                .background(Color.blue)
                .cornerRadius(20)
        }
    }
}

struct NextColorButton_Previews: PreviewProvider {
    static var previews: some View {
        NextColorButton(action: {}, title: "Next")
    }
}
