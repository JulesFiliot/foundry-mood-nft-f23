# MoodNFT: Dynamic NFT

MoodNFT is a project built on Solidity using the Foundry toolkit, leveraging the OpenZeppelin library. The primary objective of this project is to deploy a smart contract on the Ethereum blockchain, enabling users to mint Non-Fungible Tokens (NFTs) with a dynamic mood attribute by invoking the `mintNft` function.

The contract is deployed on the Sepolia testnet at the following address [0xD50d4bb637896E020c4A25e611eab359ceb9DB6D](https://sepolia.etherscan.io/address/0xD50d4bb637896E020c4A25e611eab359ceb9DB6D#code).

## Key Features

- **NFT Minting**: Users have the ability to mint an NFT, the image attribute of which symbolizes a cheerful smiley, representing a positive mood.
- **Mood Flip Functionality**: By calling the `flipMood` function, users can switch the NFT image from a happy smiley to a sad one, and vice versa, adding a dynamic element to the NFT.
- **ERC721 Compliance**: The smart contract adheres to the ERC721 standard, utilizing the OpenZeppelin's ERC721 contract for NFT creation.
- **On-Chain Metadata Storage**: In order to ensure permanent data availability, the metadata of the NFT is stored directly on the blockchain. This is achieved by encoding the data URI in base64.

## How to Use

To utilize the contract, it first needs to be deployed on the Ethereum blockchain. Post-deployment, the `mintNft` function can be invoked to mint a new NFT, which will initially exhibit a happy mood. The mood of the NFT can be altered by calling the `flipMood` function, passing the token ID of the NFT as an argument.
