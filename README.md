## 🐦 Twitter DApp – Solidity Learning Project

This repository contains my learning journey of Solidity, Smart Contracts, and basic Web3 development, culminating in the creation of a simplified Twitter-style decentralized application (DApp).
Throughout this project, I built multiple smart contracts to understand the foundations of Ethereum development.

## 📚 What I Learned in This Project

I followed a structured learning path covering:

✅ Core Solidity Basics

What is Solidity?

Variables & Data Types

Functions & Visibility

Arrays & Mappings

Structs

Loops

Require statements

Modifiers

Events

Inheritance

Importing OpenZeppelin libraries

Contract-to-Contract Interaction

Deploying to Testnets

## 🛠️ Smart Contracts Built
1. Calculator Contract

Basic arithmetic functions

Public state variables

Understanding of gas costs

2. Hello World Contract

Introduction to storage and function return types

3. Twitter Contract (Main Project)

A simplified Twitter-like DApp where users can:

## ✨ Features

Create tweets

Limit tweet length

Like / Unlike tweets

Get total likes

Fetch single and all tweets

Add user profile (display name, bio)

Add events for front-end listening

Contract inheritance using Ownable

Modify tweet rules

Deploy contract to Sepolia Testnet

## 📦 Bonus Concepts Covered

Custom modifiers

Struct arrays

Mappings of struct arrays

Emitting events for every action

Tracking tweet authors

Using block.timestamp

## 🧩 Topics Covered — Full Timeline
### 🔥 Solidity Fundamentals

Variables

Data types

Functions

Visibility (public, private, external, internal)

Require & error handling

Events

Arrays & mappings

Structs

Loops

Modifiers

## 🏗️ Smart Contract Architecture

Building a calculator

Building a full Twitter smart contract

Adding interactions and logic

## 🚀 Advanced Concepts

Inheritance (Ownable)

Contract Modifiers

Mappings of Arrays

Events & their use in DApps

Contract-to-contract interaction

Deploying to blockchain

Creating a DApp frontend

## 🏛️ Tech Stack
Layer	Tool
Smart Contracts	Solidity ^0.8.25
Security / Ownership	OpenZeppelin Ownable
Development	Remix IDE
Networks	Remix VM, Sepolia Testnet
JSON Output	ABI + Bytecode (artifacts folder)
## 📂 Folder Structure
/contracts
   ├── Twitter.sol
   ├── Profile.sol
   ├── Calculator.sol
   ├── Hello.sol

/artifacts
    ├── <contract>.json
    ├── <contract>_metadata.json
    ├── build-info/

/.states
README.md

## 🚀 What This Project Demonstrates

✔ Understanding of foundational smart contract development
✔ Ability to create modular contracts
✔ Ability to deploy to testnets
✔ Working knowledge of Solidity patterns
✔ Clear grasp of events, mappings, modifiers, inheritance
✔ End-to-end DApp logic for a real-world use-case (Twitter)

## 🎯 Next Steps

This project lays a strong foundation for:

Building full-stack Web3 DApps using React + Ethers.js

Writing more advanced contracts (NFTs, Tokens, Marketplaces)

Using Hardhat / Foundry for professional development & testing

Deploying production-ready smart contracts
