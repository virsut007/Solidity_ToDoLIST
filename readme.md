# 🔗 Decentralized To-Do List (DApp)

A full-stack Web3 application that runs entirely on the Ethereum Blockchain (Sepolia Testnet). 
Users can add, complete, and delete tasks, with every action saved permanently on-chain.

## 🚀 Live Demo
**https://soliditytodolist.vercel.app/**

---

## 🛠️ Tech Stack
* **Frontend:** HTML5, CSS3, JavaScript (Vanilla)
* **Blockchain Interaction:** Ethers.js (v5.7)
* **Smart Contract:** Solidity (v0.8.0)
* **Network:** Sepolia Testnet
* **Wallet:** MetaMask
* 
## Features
- Add Tasks: Create tasks with description, category, and due date.
- Delete Tasks: Delete the created tasks.
- Update Task: update task description.
- Priority System: Assign Low, Medium, or High priority (0,1,2)
- Sorting: On-chain Bubble Sort to view tasks by importance (High to Low).
- Manage Status: Mark tasks as completed.


## Contract Details
- Compiler Version: Solidity ^0.8.19
- License: MIT

## How to Test in Remix
1. Go to [Remix IDE](https://remix.ethereum.org).
2. Upload `TodoList.sol` into the `contracts` folder.
3. Compile the file (Ctrl + S).
4. Deploy using "Remix VM (Cancun)".
5. Add tasks and test the `getMyTasks`, `getSortedTasks` and `getTasksByStatus` functions.
