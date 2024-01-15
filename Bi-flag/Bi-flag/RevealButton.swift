//
//  RevealButton.swift
//  Bi-flag
//
//  Created by Minyu Wang on 15/01/2024.
//

import SwiftUI

struct RevealButton: View {
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 240, height: 50)
            .background(backgroundColor.gradient)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold))
            .cornerRadius(10)
    }
}

struct RevealButton_Previews: PreviewProvider {
    static var previews: some View {
        RevealButton(title: "Button", textColor: .black, backgroundColor: .gray)
    }
}
