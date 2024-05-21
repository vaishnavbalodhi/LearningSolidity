// SPDX-License-Identifier: MIT 
pragma solidity ^0.8.19; //stating solidity version

// ^0.8.19 or above/newer 
// >=0.8.0 <0.9.0; version in a range

// contract SimpleStorage {
//     //Basic types: boolean, uint, int, address, bytes
//     uint256 favNum1 = 88; //max size can be 256 bits. by default uint is set to 256 
//     bool favNum2 = false;
//     int256 favNum3 = -88;
//     string favNum4 = "eighty eight";
//     address favNum5 = 0x34DF8e6f2CB7D7f7b3dc2E9cD902221f850c085e;
//     bytes32 favNum6 = "cat";
// }

contract SimpleStorage {
    // uint public favNum; //initialized to 0 by default if no value is given //pulblic -> visibility
    uint myfavNum; 

    uint256[] listoffavNum;

    struct Person{
        uint favNum;
        string name;
    }

    // Person public Jod = Person(7, "Jod");
    // Person public Jod = Person({favNum: 7, name: "Jod"});

    Person[] public People; //any size
    // Person[4] public People; //upto 4

    function store(uint _favNum) public {
        myfavNum = _favNum;
        // uint256 n = 10; //scope of this var is inside this function and cannot be accessed elsewhere
    }

    //view: can read but cannot modify state
    function retrieve() public view returns(uint256){
        return myfavNum;
    }
    // //pure: can neither read nor modify state
    // function retrieve() public pure returns(uint256){
    //     return 7;
    // }

    // Jod -> 7
    mapping (string=>uint) public nameToFavNum;

    // The memory keyword is used to declare data that is temporary and exists only during the execution of a function.  It is similar to the concept of RAM in a computer. When you declare a variable in memory, space is allocated for it at runtime, and it is automatically deallocated when the function execution ends.
    // memory -> temporary, can be modified
    // calldata -> temporary, cannot be modified
    // storage -> permanent cannot be modified 

    //Data location can only be specified for array, struct or mapping types. string is an array of bytes.
    function addPerson(string memory _name, uint256 _favNum) public {
        // Person memory newPerson = Person(_favNum, _name);
        // People.push(newPerson);
        People.push(Person(_favNum, _name));
        nameToFavNum[_name] = _favNum;
    }
}

contract SimpleStorage2 {}
contract SimpleStorage3 {}
contract SimpleStorage4 {}