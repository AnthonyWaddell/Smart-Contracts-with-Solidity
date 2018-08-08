pragma solidity ^0.4.0;

// Practice file to help understand inheritance in solidity. 

// Requires DogContract.sol
import './DogContract.sol';

contract Kennel is DogContract{
    
    modifier costs(uint value){
        require(msg.value >= value); 
            _;
    }
    
    // To transfer ownership of dog object
    function transferDog(address _newOwner) payable costs(100) {
        address owner = msg.sender; // get address of old owner
        require(owner != _newOwner); // Stop execution is sending dog to ourself
        uint dogID = ownerToDog[owner]; // get dog id of owner
        delete ownerToDog[owner]; // delete old owner
        ownerToDog[_newOwner] = dogID;
        assert(ownerToDog[owner] == 0);
    }
    
    // To allow a Kennel to add dogs, even if they don't "own" them
    function addKennelDog(string m_name, uint m_age){
        addDog(m_name, m_age);
    }
}
