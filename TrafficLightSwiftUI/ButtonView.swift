//
//  ButtonView.swift
//  TrafficLightSwiftUI
//
//  Created by Anton Kuzmin on 21.04.2023.
//

import SwiftUI

struct ButtonView: View {
    let action: () -> Void
    let buttonText: String
    
    var body: some View {
        Button(action: action) {
            Text(buttonText)
                .frame(width: 200, height: 50)
        }
        .font(.title)
        .foregroundColor(.white)
        .background {
            Color.blue
        }
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .overlay(RoundedRectangle(cornerRadius: 10).stroke(.white, lineWidth: 4))
        .frame(width: 300, height: 50)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(action: {}, buttonText: "SOME TEXT")
    }
}
