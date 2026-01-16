#Todo List (Remix Deployment)

A smart contract-based Todo List created using Solidity and deployed via Remix IDE.

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
5. Add tasks and test the ‘’getMyTasks’, getSortedTasks’ and ‘getTasksByStatus functions.
