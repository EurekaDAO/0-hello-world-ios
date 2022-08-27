//
//  Transactions.swift
//  Hello World
//
//  Created by BoiseITGuru on 8/27/22.
//

import Foundation

enum Transactions: String {
    case changeGreeting =
        """
        import HelloWorld from 0xDeployer

        transaction(newGreeting: String) {
          prepare(signer: AuthAccount) {

          }

          execute {
            HelloWorld.changeGreeting(newGreeting: newGreeting)
          }
        }
        """
}
