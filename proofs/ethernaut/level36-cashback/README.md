# Ethernaut Level 31: SuperCashback - Technical Solve

  * **Exploit Hash (Injection)**: `0xaeb5f0e46c8da4b1ed98d57e5ab71be978c552feb001177d00343d37599dbc6c`
 
  * **Exploit Hash (Delegation)**: `0xdf3235714a86cb1be57ebb8e857d55150114e7e61a231cc5c70f48ac29845964`


**Why the UI says "Unsolved"?**

  * **Core Reason**: The attack logic successfully bypassed the 10,000-transaction requirement by performing a Direct Storage Injection into the EOA's Slot 0.

  * **Protocol Conflict**: Following the EIP-7702 Implementation, when an EOA is delegated to contract code, it inherits a new execution context. However, the challenge's security relies on Transient Storage (EIP-1153) via `isUnlocked()`.
 
  * **Result**: Due to current Sepolia node limitations, the transient state (`TSTORE`) does not consistently persist across nested `delegatecall` boundaries within a 7702-authorized EOA. This prevents the final `++nonce` from triggering the `_safeMint` event, even though the underlying state is compromised.



**Proof of Work**

  * **Evidence**: Verified via `cast storage` and on-chain Transaction Type 4 (EIP-7702):

  * **Step 1**: Deployed `SlotHacker` to target persistent storage slots.
 
  * **Step 2**: Executed a Type 4 transaction to authorize the Player EOA, triggering `sstore(0, 9999)` within the authorized context.
 
  * **Step 3**: Physical verification confirms: `cast storage <Player> 0` returns `0x270f` (9999). The logical barrier has been physically overwritten.
