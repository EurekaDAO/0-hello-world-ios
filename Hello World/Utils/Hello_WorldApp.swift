//
//  Hello_WorldApp.swift
//  Hello World
//
//  Created by BoiseITGuru on 8/27/22.
//

import SwiftUI

@main
struct Hello_WorldApp: App {
    @StateObject var fclModel = FCLModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(fclModel)
        }
    }
}
