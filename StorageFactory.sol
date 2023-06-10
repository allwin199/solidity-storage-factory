// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import { SimpleStorage } from "./SimpleStorage.sol";

contract StorageFactory{
    // This storage factory contract will deploy the SimpleStorage contract.
    // By importing SimpleStorage, we have access to all its contents.

    //type visibility variableName
    SimpleStorage[] public listOfsimpleStorageContracts;

    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorage = new SimpleStorage();
        listOfsimpleStorageContracts.push(newSimpleStorage);
        // Create a new instance of the SimpleStorage contract
        // Assign the newly created instance to the simpleStorage variable
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        SimpleStorage mySimpleStorage = listOfsimpleStorageContracts[_simpleStorageIndex];
        mySimpleStorage.store(_simpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        SimpleStorage mySimpleStorage = listOfsimpleStorageContracts[_simpleStorageIndex];
        return mySimpleStorage.showFavouriteNumber();
    }

}
