pragma solidity ^0.4.0;

// Practice file to help understand inheritance in solidity. 

// Requires DogContract.sol
import './DogContract.sol';

contract Kennel is DogContract{
    
    // To transfer ownership of dog object
    function transferDog(address _newOwner){
        address owner = msg.sender; // get address of old owner
        uint dogID = ownerToDog[owner]; // get dog id of owner
        delete ownerToDog[owner]; // delete old owner
        ownerToDog[_newOwner] = dogID;
    }
    
    // To allow a Kennel to add dogs, even if they don't "own" them
    function addKennelDog(string m_name, uint m_age){
        addDog(m_name, m_age);
    }
}