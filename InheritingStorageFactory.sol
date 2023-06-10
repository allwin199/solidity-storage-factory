// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import { SimpleStorage } from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage {
    // This contract inherits from the SimpleStorage contract.

    function store(uint256 _favouriteNumber) public override {
        // Override the store function from the SimpleStorage contract.

        // Add five to the provided favourite number and store it in the myFavouriteNumber variable.
        myFavouriteNumber = _favouriteNumber + 5;
    }
}
