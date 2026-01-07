# Ethernaut Level 25: Motorbike - Technical Solve

**Exploit Hash:** `0xf678917bb65af23992e7fa7528c3801757b2bf99996a794f8de7a1cc96f43105`

### Why the UI says "Unsolved"?

The attack was successfully executed, triggering the `SELFDESTRUCT` opcode in the `Engine` contract via `delegatecall`. 

However, following the **Ethereum Dencun Upgrade (EIP-6780)**, `SELFDESTRUCT` no longer clears contract bytecode unless the contract was created in the same transaction.

### Proof of Work

As shown in `trace.txt` and `screenshot.png`:

*  `initialize()` called successfully.
  
*  `upgradeToAndCall()` redirected logic to the attacker contract.
  
*  Internal trace confirms: `← [SelfDestruct]`.
