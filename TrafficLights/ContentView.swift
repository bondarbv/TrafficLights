//
//  ContentView.swift
//  TrafficLights
//
//  Created by Bohdan on 20.01.2022.
//

import SwiftUI

struct ContentView: View {
    
    private let lightIsOff = 0.3
    private let lightIsOn: Double = 1
    @State var buttonTitle: String = "Start"
    
    @State private var currentLight = CurrentLight.red
    @State private var redLightOpacity = 0.3
    @State private var yellowLightOpacity = 0.3
    @State private var greenLightOpacity = 0.3
    
    enum CurrentLight {
        case red, yellow, green
    }
    
    private func changeColor() {
        switch self.currentLight {
        case .red:
            currentLight = .yellow
            greenLightOpacity = lightIsOff
            redLightOpacity = lightIsOn
        case .yellow:
            currentLight = .green
            redLightOpacity = lightIsOff
            yellowLightOpacity = lightIsOn
        case .green:
            currentLight = .red
            yellowLightOpacity = lightIsOff
            greenLightOpacity = lightIsOn
        }
    }
    
    var body: some View {
        VStack(spacing: 30) {
            ColorCircleView(color: .red, opacity: redLightOpacity)
            ColorCircleView(color: .yellow, opacity: yellowLightOpacity)
            ColorCircleView(color: .green, opacity: greenLightOpacity)
            Divider()
            Button (action: {
                            changeColor()
                            if buttonTitle == "Start" {
                               buttonTitle = "Next"
                            }
                        }) {
                            Text(self.buttonTitle)
                                .font(.largeTitle)
                                .foregroundColor(Color.white)
                                .frame(width: 100, height: 50)
                                .background(Color.blue)
                                .cornerRadius(20)

                        }

//            NextColorButton(action: {
//                changeColor()
//            }, title: "Start")
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
