//
//  Scripts.swift
//  Hello World
//
//  Created by BoiseITGuru on 8/27/22.
//

import Foundation

enum Scripts: String {
    case getGreeting =
        """
        import HelloWorld from 0xDeployer

        pub fun main(): String {
          return HelloWorld.greeting
        }
        """
}
