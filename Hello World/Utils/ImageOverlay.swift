//
//  ImageOverlay.swift
//  Boise's Finest DAO
//
//  Created by Brian Pistone on 7/8/22.
//

import SwiftUI

struct ImageOverlay: View {
    var text: String
    var font: Font
    
    var body: some View {
        ZStack {
            Text(text)
                .font(font)
                .padding(6)
                .foregroundColor(Color(hex: "4bb17b"))
        }
            .background(Color.black)
            .opacity(0.8)
            .cornerRadius(10.0)
            .padding(6)
    }
}
