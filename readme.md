{\rtf1\ansi\ansicpg1252\cocoartf2867
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red79\green122\blue61;}
{\*\expandedcolortbl;;\cssrgb\c37609\c54466\c30476;}
\paperw11900\paperh16840\margl1440\margr1440\vieww13020\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26\fsmilli13200 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 #Todo List (Remix Deployment)\
\
A smart contract-based Todo List created using Solidity and deployed via Remix IDE.\
\
## Features\
- Add Tasks: Create tasks with description, category, and due date.\
- Delete Tasks: Delete the created tasks.\
- Update Task: update task description.\
- Priority System: Assign Low, Medium, or High priority (0,1,2)\
- Sorting: On-chain Bubble Sort to view tasks by importance (High to Low).\
- Manage Status: Mark tasks as completed.\
\
\
## Contract Details\
- Compiler Version: Solidity ^0.8.19\
- License: MIT\
\
## How to Test in Remix\
1. Go to [Remix IDE](https://remix.ethereum.org).\
2. Upload `TodoList.sol` into the `contracts` folder.\
3. Compile the file (Ctrl + S).\
4. Deploy using "Remix VM (Cancun)".\
5. Add tasks and test the \'91\'92getMyTasks\'92, getSortedTasks\'92 and \'91getTasksByStatus functions.}