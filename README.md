# 💎 Emerald Academy

## 🚩 Challenge 0: Hello World - iOS/iPadOS

> :warning: **The FCL-Swift SDK currently has an error connecting to the Dev-Wallet, this tutorial will only deploy to testnet until that is resolved**

🎫 Deploy a simple HelloWorld contract to learn the basics of the Flow blockchain and Cadence. You'll use:

- The local Flow emulator to deploy smart contracts.
- The local Flow dev wallet to log in to test accounts.
- A template Swift iOS/iPadOS app with sample scripts and transactions to interact with your contract.

🌟 The final deliverable is a DApp that lets users read and change a greeting field on Flow testnet.

💬 Meet other builders working on this challenge and get help in the [Emerald City Discord](https://discord.gg/emeraldcity)!

---

## Video Walkthrough

Coming Soon!

---

## 📦 Checkpoint 0: Install && Deploy

Required:

- [Git](https://git-scm.com/downloads)
- [Node](https://nodejs.org/dist/latest-v16.x/)  (🧨 Use Node v16 or a previous version as v17 may cause errors 🧨). You know you have installed it if you type `node -v` in your terminal and it prints a version.
- [Flow CLI](https://docs.onflow.org/flow-cli/install/)  (🧨 Make sure to install the correct link for your system 🧨). You know you have installed it if you type `flow version` in your terminal and it prints a version.

> First open a terminal 📱, clone this repository, and switch to the newly created directory.

```sh
git clone https://github.com/EurekaDAO/0-hello-world-ios.git
cd 0-hello-world-ios
```

> Next we need to copy or rename `flow.json.example` to `flow.json`.

```sh
mv flow.json.example flow.json
```

> Now 🔐 Generate a **deployer address** by typing `flow keys generate --network=testnet` into a terminal. Make sure to save your public key and private key somewhere, you will need them soon.

<img src="https://i.imgur.com/HbF4C73.png" alt="generate key pair" />

> 👛 Create your **deployer account** by going to <https://testnet-faucet.onflow.org/>, pasting in your public key from above, and clicking `CREATE ACCOUNT`:

<img src="https://i.imgur.com/73OjT3K.png" alt="configure testnet account on the website" width="400" />

> After it finishes, click `COPY ADDRESS` and make sure to save that address somewhere. You will need it!
> ⛽️ Add your new testnet account to your `flow.json` by modifying the following lines of code. Paste your address you copied above to where it says "YOUR GENERATED ADDRESS", and paste your private key where it says "YOUR PRIVATE KEY".

```json
"accounts": {
  "emulator-account": {
    "address": "f8d6e0586b0a20c7",
    "key": "5112883de06b9576af62b9aafa7ead685fb7fb46c495039b1a83649d61bff97c"
  },
  "testnet-account": {
    "address": "YOUR GENERATED ADDRESS",
    "key": {
      "type": "hex",
      "index": 0,
      "signatureAlgorithm": "ECDSA_P256",
      "hashAlgorithm": "SHA3_256",
      "privateKey": "YOUR PRIVATE KEY"
    }
  }
},
"deployments": {
  "emulator": {
    "emulator-account": [
      "HelloWorld"
    ]
  },
  "testnet": {
    "testnet-account": [
      "HelloWorld"
    ]
  }
}
```

> 🚀 Deploy your HelloWorld smart contract:

```sh
flow project deploy --network=testnet
```

<img src="https://i.imgur.com/GBFs2Uz.png" alt="deploy contract to testnet" />

> You can use `flow project deploy --update` to deploy a new contract any time.

📱 Open `Hello World.xcodeproj` in Xcode and update line 18 of `Hello World > View Models > FCLModel.swift with the newly created Testnet account so we can interact with your new contract.

Lastly, run the app in the simulator or on your iOS/iPadOS Device.

---

## 👛 Checkpoint 1: Wallets

We'll be using the **Blocto** testnet wallet for testing.

> Click the "Log In" button and notice a window appears asking for your email address. Enter your email address to create or log in to your Blocto account. A 6 digit code will be emailed to you to complete the login process.

<img src="https://i.imgur.com/8P4iUHe.png" alt="login page" /> <img src="https://i.imgur.com/WD7GY00.png" alt="blocto email" /> <img src="https://i.imgur.com/zJCJs2W.png" alt="blocto email" />

---

## 📘 Checkpoint 2: Reading the Greeting

> 👀 Click the `Get Greeting` button to see your greeting:

<img src="https://i.imgur.com/PsK32ap.png" alt="get greeting" />

---

## ✏️ Checkpoint 3: Changing the Greeting

> ✏️ Change the greeting! Type a new greeting into the input and click the `Send` button on the keyboard. You should see a transaction pop up:

<img src="https://i.imgur.com/XByQNZ3.png" alt="transaction popup" />

> 👀 Click "APPROVE" and then wait a moment before clicking the `Get Greeting` button again to allow the transaction to finalize. You should now see your new greeting:

<img src="https://i.imgur.com/cOW1PXB.png" alt="new greeting" />

---

## 📝 Make Edits

🔏 You can also check out your smart contract `HelloWorld.cdc` in `cadence/HelloWorld.cdc`.

💼 Take a quick look at how your contract gets deployed in `flow.json`.

📝 The app is written in SwiftUI, most changes to the design/frontend can be made in the `Views` directory.

## ⚔️ Side Quests

> 🏃 Head to your next challenge [here](https://github.com/EurekaDAO/1-non-fungible-token-ios).
> 💬 Meet other builders working on this challenge and get help in the [💎 Emerald City Discord](https://discord.gg/emeraldcity)!
> 👉 Problems, questions, comments on the stack? Post them to the [💎 Emerald City Discord](https://discord.gg/emeraldcity).
