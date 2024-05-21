// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{
    //type visibility name
    // SimpleStorage public simpleStorage;
    SimpleStorage[] public listOfStorage;

    function createSimpleStorageContract() public {
        // simpleStorage = new SimpleStorage();
        SimpleStorage newSimpleStorage = new SimpleStorage();
        listOfStorage.push(newSimpleStorage);
    }
}