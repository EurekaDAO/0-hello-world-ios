//
//  HelloWorldView.swift
//  Hello World
//
//  Created by BoiseITGuru on 8/27/22.
//

import SwiftUI

struct HelloWorldView: View {
    @EnvironmentObject var fclModel: FCLModel
    @ObservedObject var helloWorld = HelloWorldModel()
    
    var body: some View {
        VStack {
            HStack(spacing: 4) {
                Text("Emerald")
                    .font(.title)
                Image("EC_Education")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 40)
                Text("Academy")
                    .font(.title)
            }
            Text(helloWorld.greetingDisplay)
                .font(.title)
                .frame(maxWidth: .infinity, maxHeight: 200)
                .background(Color(hex: "00344b"))
                .cornerRadius(15)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(fclModel.defualtAccentColor, lineWidth: 3)
                )
                .padding(.bottom, 4)
            
            Button(action: { Task { await helloWorld.getGreeting() } }) {
                Text("Get Greeting")
                    .font(.title2)
                    .foregroundColor(fclModel.defaultTextColor)
            }
                .frame(maxWidth: .infinity, maxHeight: 40)
                .background(fclModel.defualtAccentColor)
                .cornerRadius(15)
                .buttonStyle(PlainButtonStyle())
                .padding(.bottom, 20)
            
            TextField("  Change Greeting", text: $helloWorld.greetingText)
                .submitLabel(.send)
                .onSubmit {
                    guard helloWorld.greetingText.isEmpty == false else { return }
                    helloWorld.changeGreeting()
                }
                .frame(maxWidth: .infinity, maxHeight: 50)
                .cornerRadius(15)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(fclModel.defualtAccentColor, lineWidth: 3)
                )
            
            Spacer()
            
            Button(action: { fclModel.signOut() }) {
                Text("Sign Out")
                    .font(.title2)
                    .foregroundColor(fclModel.defaultTextColor)
            }
                .frame(maxWidth: .infinity, maxHeight: 40)
                .background(fclModel.defualtAccentColor)
                .cornerRadius(15)
                .buttonStyle(PlainButtonStyle())
        }
        .padding(20)
        .background(fclModel.defualtBackgroundColor)
    }
}

struct HelloWorldView_Previews: PreviewProvider {
    static var previews: some View {
        HelloWorldView()
    }
}
