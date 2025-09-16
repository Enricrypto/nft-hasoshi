🥷 Hasoshi NFT

Hasoshi is an experimental ERC-721 collection built with OpenZeppelin
 smart contracts. It combines simplicity, transparency, and extendability, making it a great foundation for experimenting with NFT mechanics or building a full NFT project.

✨ Features

ERC-721 Standard – Fully compliant, ensuring compatibility with marketplaces like OpenSea and Blur.

Enumerable Extension – Track and iterate over tokens owned by an address or across the whole collection.

Metadata & Strings – Supports token URIs with on-chain string conversion utilities.

Ownable Access Control – Only the contract owner can perform admin operations (e.g., minting).

🚀 Tech Stack

Solidity ^0.8.19

OpenZeppelin Contracts

Forge (Foundry) for testing and deployment

📖 Usage

Mint new NFTs directly from the contract.

Extend functionality with custom mint logic (public sale, whitelist, etc.).

Integrate with frontends using libraries like Wagmi or Viem.

🛠️ Development
# Install dependencies
forge install OpenZeppelin/openzeppelin-contracts

# Compile
forge build

# Test
forge test

🔮 Vision

Hasoshi is designed as a playground for experimenting with NFT mechanics — from metadata handling to minting strategies. It can be adapted into a full NFT drop, integrated into a DeFi primitive, or extended with staking, royalties, and more.
