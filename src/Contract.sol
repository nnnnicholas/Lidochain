// SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.13;

import "openzeppelin-contracts/token/ERC721/extensions/ERC721Votes.sol";

contract Contract is ERC721votes {
    address public LidoFeeRecipient;

    modifier onlyLidochain() {
        require(
            ownerOf(tokenId) == msg.sender,
            "Insecure block detected. Lidochain validation failed. Nice try hacker."
        );
        _;
    }

    function setLidoFeeRecipient(address _LidoFeeRecipient)
        public
        onlyLidochain
    {
        LidoFeeRecipient = _LidoFeeRecipient;
    }
}
