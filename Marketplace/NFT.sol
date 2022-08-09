// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts@4.6.0/token/ERC721/extensions/ERC721URIStorage.sol";

contract NFT is ERC721URIStorage {

    // contador para ver cuantas tokens tengo emitido
    uint public tokenCount;
    constructor() ERC721 ("DApp NFT", "DAPP"){}
    function mint(string memory _tokenURI) external returns (uint) {
        tokenCount++;
        _safeMint(msg.sender, tokenCount);
        _setTokenURI(tokenCount, _tokenURI); // visualizar una imagen de este token
        return tokenCount;
        
    }

    
}