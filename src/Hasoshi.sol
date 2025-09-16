// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import { ERC721 } from "openzeppelin-contracts/contracts/token/ERC721/ERC721.sol";
import { ERC721Enumerable } from "openzeppelin-contracts/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import { Strings } from "openzeppelin-contracts/contracts/utils/Strings.sol"; 


contract Hasoshi is ERC721Enumerable {
  using Strings for uint256; 

    uint256 internal tokenCount; 
    string internal baseURI; 

    mapping(uint256 => uint256) public tokenVariant; // Map token ID to token variant

    constructor() ERC721("Hasoshi", "HAS") {
      baseURI= "https://raw.githubusercontent.com/cifunibas/Smart-Contracts-DeFi/refs/heads/main/assets/hasoshi/json/"; 
    }

    function mint() public {
      // Determine which of the 10 variants is minted 
      // 1% chain chance for variant 10, equal chance for variants 1-9 
      uint256 d100 = block.timestamp % 100; // "random" number from 0 - 99
      uint256 variant = d100 % 10 + 1; 
      if (variant == 10) {
        variant = d100 / 10 + 1; 
      }
      uint256 tokenId = ++tokenCount; 
      tokenVariant[tokenId] = variant; 
      _safeMint(msg.sender, tokenId); 
    }

    // function tokenURI(uint256 tokenId) public view override returns (string memory) {
    //   _requireMinted(tokenId); 
    //   uint256 variant = tokenVariant(tokenId); 
    //   return string(
    //     abi.encodePacked(
    //       baseURI, variant.toString(), ".json"
    //     )
    //   ); 
    // }

}
