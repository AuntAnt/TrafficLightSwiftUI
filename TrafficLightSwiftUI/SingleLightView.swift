//
//  SingleLightView.swift
//  TrafficLightSwiftUI
//
//  Created by Anton Kuzmin on 21.04.2023.
//

import SwiftUI

struct SingleLightView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 120, height: 120)
            .foregroundColor(color.opacity(opacity))
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct SingleLightView_Previews: PreviewProvider {
    static var previews: some View {
        SingleLightView(color: .red, opacity: 0.3)
    }
}
