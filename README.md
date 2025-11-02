# anon-byte-lab
## Anti-Fragile Commitment
&gt; Sepolia-only CTF logbook | Ethernaut → DVD → Paradigm  
&gt; 72 h max silence | 0.1 ETH burn on-chain | No mainnet, no token, no value. 
&gt; Predecessor repo **archived** → activity moved **here** (same burn rule, no token, no mainnet).

## Verified Progress (short-hash + URL)
| Day | Platform | Level | Chain | Short Hash | Txn |
|----:|----------|--------|--------|------------|-----|
| 00 | Ethernaut | Hello Ethernaut | Sepolia | `0x486c206` | [view](https://sepolia.etherscan.io/tx/0x486c2064880165979fc5412c1deb1e4ac33e0e5f7516cbf685ed4947c9175bd6) |
| 01 | Ethernaut | Fallback | Sepolia | `0xce20c9e` | [view](https://sepolia.etherscan.io/tx/0xce20c9efcd810fbd1e0def37fd24c42be9e23eca140e7e600a60b3718ef47122) |
| 02 | Ethernaut | Fallout  | Sepolia | `0x7888476` | [view](https://sepolia.etherscan.io/tx/0x7888476ef2158c0b9053a69a67ec40691804a44998a1032d07f284b976c5d8a6) |
| 04 | Ethernaut | Telephone | Sepolia | `0xfbad6e7` | [view](https://sepolia.etherscan.io/tx/0xfbad6e7505b2305aa1ac9c1f476053317b8f55df81562dcc0798e89813519b72) |
## Repo Structure (source-first, immutable)
lifecycle/final/   ← byte-to-byte match on-chain
lifecycle/draft/   ← WIP, may be discarded
reviews/           ← self audit notes (md + pdf)
src/               ← symlink → lifecycle/final
test/              ← invariant + unit (anvil fork)
scripts/           ← deploy & verify one-liner
audits/            ← third-party reports (when ready)

## Quickstart (testnet only)
```bash
# install
forge install

# build & test
forge build
forge test

# static analysis
slither . --fail-high --ignore-compile

Risk & Disclaimer
No mainnet deployment endorsed by this repository.
No transferable token or monetary value involved.
Bytecode hash in table is keccak256(runtime) after solc optimisation.
Any diff → new file + new row; no proxy, no delegate-call.

License
MIT — see LICENSE
