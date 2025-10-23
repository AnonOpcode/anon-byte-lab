# anon-byte-lab
Solidity R&amp;D. Testnet only. No mainnet risk, no transferable token, no transferable value. Gas &amp; invariant focus.
Archive predecessor → github.com/Chloe-72/Personal-GasLab-72

# anon-byte-lab | Anti-Fragile Protocol
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](./LICENSE)
[![Foundry](https://img.shields.io/badge/built%20with-foundry-ff0420.svg)](https://foundry.paradigm.xyz)
[![Slither](https://img.shields.io/badge/static%20analysis-slither-50fa7b.svg)](https://github.com/crytic/slither)

&gt; Solidity R&D · Testnet only · No transferable token · No mainnet risk  
&gt; Predecessor archived: [Personal-GasLab-72](https://github.com/Chloe-72/Personal-GasLab-72)

## Canonical Source (immutable)
| Contract  | Network | Address                                                                 | Tx Hash                                                                                                                       | Bytecode Hash (keccak256)                                                                 |
|-----------|---------|-------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------|---------------------------|
| Leave.sol | Sepolia | [0xce857be75339f0701fce0717bc8816a7ec6006b5](https://sepolia.etherscan.io/address/0xce857be75339f0701fce0717bc8816a7ec6006b5) | [0x52ef824ba40ab59fbf21a4ff5ed2b5ef73b259cabc4413bc161cfc7eeb54b18c](https://sepolia.etherscan.io/tx/0x52ef824ba40ab59fbf21a4ff5ed2b5ef73b259cabc4413bc161cfc7eeb54b18c) | `0xc470cd1694314a0f1e448bc568b5c1b9b68c0075ee4c5666840f72679db1e280` |

## CTF Track (alive-hash continuous)
| Day | Platform | Level | Chain | Short Hash | URL |
|----|----------|-------|--------|------------|-----|
| 01 | Ethernaut | Fallback | Sepolia | 0x486c2...c917 | [txn](https://sepolia.etherscan.io/tx/0x486c2...c917) |

**Truth-source:** `lifecycle/final/&lt;contract&gt;.sol`  
**No proxy, no delegatecall; selfdestruct only if explicitly listed in table above.**

## Repo Structure
anti-fragile-protocol/
├─ lifecycle/
│  ├─ drafts/          # early iterations
│  ├─ final/           # byte-to-byte match with on-chain
│  └─ reviews/         # self & external review notes
├─ src/                # symlinks → lifecycle/final (forge root)
├─ test/               # invariant + unit (local anvil)
├─ scripts/            # deploy & verify
└─ audits/             # third-party PDFs (when ready)

## Quickstart
```bash
# install
forge install

# build & test
forge build
forge test

# static analysis
slither . --fail-high --ignore-compile

Risk Disclaimer
Testnet only; no mainnet deployment endorsed by this repo.
No transferable token or value; gas-research focus.
Bytecode hashes are keccak256(bytecode) after solc optimisation.
For immutable guarantee, verify exact hash above; any diff → new file + new row.
License
MIT — see LICENSE
