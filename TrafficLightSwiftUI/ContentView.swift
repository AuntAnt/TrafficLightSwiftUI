//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Anton Kuzmin on 21.04.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var redOpacity = 0.3
    @State private var yellowOpacity = 0.3
    @State private var greenOpacity = 0.3
    @State private var buttonText = "START"
    @State private var lightCondition: LightCondition = .red
    
    var body: some View {
        VStack {
            SingleLightView(color: .red, opacity: redOpacity)
            SingleLightView(color: .yellow, opacity: yellowOpacity)
            SingleLightView(color: .green, opacity: greenOpacity)
            
            Spacer()
            
            ButtonView(action: switchLight, buttonText: buttonText)
        }
        .padding()
    }
    
    private func switchLight() {
        if buttonText == "START" {
            buttonText = "NEXT"
        }
        
        setOpacity(by: lightCondition)
    }
    
    private func setOpacity(by condition: LightCondition) {
        switch condition {
        case .red:
            greenOpacity = 0.3
            redOpacity = 1
            lightCondition = .yellow
        case .yellow:
            redOpacity = 0.3
            yellowOpacity = 1
            lightCondition = .green
        case .green:
            yellowOpacity = 0.3
            greenOpacity = 1
            lightCondition = .red
        }
    }
}

// MARK: - Light state
extension ContentView {
    private enum LightCondition {
        case red
        case yellow
        case green
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
