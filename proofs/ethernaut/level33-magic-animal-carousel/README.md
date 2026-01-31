# Ethernaut Level 25: Motorbike - Technical Solve

  * **Exploit Hash**: `0xf678917bb65af23992e7fa7528c3801757b2bf99996a794f8de7a1cc96f43105`

### Why the UI says "Unsolved"?


  * **Core Reason**: The attack was successfully executed, triggering the `SELFDESTRUCT` opcode in the `Engine` contract via `delegatecall`.
 
  * **EVM Update**: However, following the **Ethereum Dencun Upgrade (EIP-6780)**, `SELFDESTRUCT` no longer clears contract bytecode unless the contract was created in the same transaction.
 
  * **Result**: Because the `Engine` contract was created in a previous block, the code remains in state, preventing the `isSolved()` check from returning true.

### Proof of Work

  * **Evidence**: As shown in `trace.txt` and `screenshot.png`:
  
  * **Step 1**: `initialize()` called successfully.
 
  * **Step 2**: `upgradeToAndCall()` redirected logic to the attacker contract.

  * **Step 3**: Internal trace confirms: `← [SelfDestruct]`.
