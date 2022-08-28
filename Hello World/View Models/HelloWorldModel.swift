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
        do {
            let block = try await fcl.query {
                cadence {
                    Scripts.getGreeting.rawValue
                }

                gasLimit {
                    1000
                }
            }.decode(String.self)
            await MainActor.run {
                greetingDisplay = block ?? "Error Parsing Response"
            }
        } catch {
            // TODO: Error Handling
            print(error)
        }
    }
    
    func changeGreeting() async {
        do {
            let txId = try await fcl.mutate {
                cadence {
                    Transactions.changeGreeting.rawValue
                }

                arguments {
                    [.string(greetingText)]
                }

                gasLimit {
                    1000
                }
            }
            await MainActor.run {
                self.greetingText = ""
            }
        } catch {
            print(error)
        }
    }
}
