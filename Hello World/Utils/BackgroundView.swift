//
//  BackgroundView.swift
//  Hello World
//
//  Created by BoiseITGuru on 8/27/22.
//

import SwiftUI

struct BackgroundView: View {
    @EnvironmentObject var fclModel: FCLModel
    var body: some View {
        fclModel.defualtBackgroundColor
            .ignoresSafeArea()
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
