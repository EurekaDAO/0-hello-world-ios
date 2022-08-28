//
//  SignIn.swift
//  Boise's Finest DAO
//
//  Created by Brian Pistone on 7/8/22.
//

import SwiftUI
import FCL
import Flow

struct SignIn: View {
    @EnvironmentObject var fclModel: FCLModel
    
    var body: some View {
        ZStack {
            BackgroundView()
            VStack {
                Text("0-HELLO-WORLD")
                    .font(.largeTitle)
                    .foregroundColor(fclModel.defualtAccentColor)
                    .padding(.bottom, 20)
                
                Image("EC_Education")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom, 100)
                
                Button(action: { Task { await fclModel.authn() } }) {
                    Text("Log In")
                        .font(.title2)
                        .foregroundColor(fclModel.defaultTextColor)
                }
                    .frame(maxWidth: .infinity, maxHeight: 40)
                    .background(fclModel.defualtAccentColor)
                    .cornerRadius(15)
                    .buttonStyle(PlainButtonStyle())

                if fclModel.env == .mainnet || fclModel.env == .testnet {
                    Picker("Wallet Provider", selection: $fclModel.provider, content: {
                        Text("Blocto").tag(FCLProvider.blocto)
                        Text("Dapper").tag(FCLProvider.dapper)
                    }).onChange(of: fclModel.provider, perform: { _ in
                        fclModel.changeWallet()
                    })
                }
            }
            .padding(.horizontal, 20)
        }
    }
}

struct SignIn_Previews: PreviewProvider {
    static var previews: some View {
        SignIn()
    }
}
