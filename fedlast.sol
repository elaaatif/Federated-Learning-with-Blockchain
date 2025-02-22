// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract FLConsent {
    mapping(address => bool) public consentGiven;

    event ConsentSigned(address participant);

    function signConsent() external {
        require(!consentGiven[msg.sender], "Already signed");
        consentGiven[msg.sender] = true;
        emit ConsentSigned(msg.sender);
    }

    function hasSignedConsent(address participant) external view returns (bool) {
        return consentGiven[participant];
    }
}
