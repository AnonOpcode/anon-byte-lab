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
| 03 | Ethernaut | Coin Flip | Sepolia | `0xa5420b8` | [view](https://sepolia.etherscan.io/tx/0xa5420b876b0079110bc2a789da3fd876f5f8a6099f077fe65b303b9907fcff6b) |
| 04 | Ethernaut | Telephone | Sepolia | `0xfbad6e7` | [view](https://sepolia.etherscan.io/tx/0xfbad6e7505b2305aa1ac9c1f476053317b8f55df81562dcc0798e89813519b72) |
| 05 | Ethernaut | Token | Sepolia | `0xf31d823` | [view](https://sepolia.etherscan.io/tx/0xf31d8238a01eed020d6f6f21eddeacd90b419ff5024ada0a9e7037cd307483af) |
| 06 | Ethernaut | Delegation | Sepolia | `0x1700b5a` | [view](https://sepolia.etherscan.io/tx/0x1700b5a1bb7b4afc0c15d75c463a0465a2ab795be27e0eae22c2f6e83d340555) |
| 08 | Ethernaut | Vault | Sepolia | `0x4a984b5` | [view](https://sepolia.etherscan.io/tx/0x4a984b5a26e7ff8a221f2cb45d7c89933969e55a43d84c3dabda7151d3a1e733) |
| 09 | Ethernaut | King | Sepolia | `0x6fc8a07` | [view](https://sepolia.etherscan.io/tx/0x6fc8a0757d32db3dcea37dd16a2aab080b06e6a0dd44c1cf04e044d8bff663bf) |
| 11 | Ethernaut | Elevator | Sepolia | `0x598ff31` | [view](https://sepolia.etherscan.io/tx/0x598ff3183df229824c5a9650ce92c60e2a721d7c810dd925bdec45578d91f67a) |
| 21 | Ethernaut | Shop | Sepolia | `0x5a101cd` | [view](https://sepolia.etherscan.io/tx/0x5a101cd5563609def38641c0137e2712bc1fd3d64e799a8f536ca9bd3839491a) |
| 22 | Ethernaut | Dex | Sepolia | `0x7cd069d` | [view](https://sepolia.etherscan.io/tx/0x7cd069d8ec834fe75186d935091ceb7f0a9b36f9ad81f6d010d96e09c123fa93) |
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
