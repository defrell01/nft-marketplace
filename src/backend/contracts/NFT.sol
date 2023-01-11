// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.4;
// nft-marketplace/node_modules/@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract NFT is ERC721URIStorage {
    uint256 public tokenCount;

    constructor() ERC721("Sennet", "SEN") {}

    function mint(string memory _tokenURI) external returns (uint256) {
        tokenCount++; // increment all the tokens count
        _safeMint(msg.sender, tokenCount); // tokenId = tokenCount, nft mints to the msg.sender
        _setTokenURI(tokenCount, _tokenURI);
        return (tokenCount);
    }
}
