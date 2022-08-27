//
//  HelloWorldModel.swift
//  Hello World
//
//  Created by BoiseITGuru on 8/27/22.
//

import Foundation
import FCL
import Flow

class HelloWorldModel: ObservableObject {
    @Published var greetingDisplay = ""
    @Published var greetingText = ""
    
    func getGreeting() async {
        greetingDisplay = "Hello, World!"
        
        do {
            let block = try await fcl.query {
                cadence {
                    Scripts.getGreeting.rawValue
                }

                gasLimit {
                    1000
                }
            }.decode()
            await MainActor.run {
                print(block)
            }
        } catch {
            // TODO: Error Handling
            print(error)
        }
    }
    
    func changeGreeting() {
        greetingDisplay = greetingText
        greetingText = ""
    }
}
