pragma solidity ^0.8.4;

import "../../token/ERC721/ERC721.sol";
import "../../access/Ownable.sol";

contract Marregi is ERC721, Ownable {
    constructor() ERC721("marregi", "MK") {}

    function _baseURI() internal pure override returns (string memory) {
        return "https://lh3.googleusercontent.com/";
    }

    function safeMint(address to, uint256 tokenId) public onlyOwner {
        _safeMint(to, tokenId);
    }
}