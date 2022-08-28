//
//  ContentView.swift
//  Hello World
//
//  Created by BoiseITGuru on 8/27/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var fclModel: FCLModel
    
    var body: some View {
        if !fclModel.loggedIn {
            SignIn()
        } else {
            HelloWorldView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
