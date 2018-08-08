pragma solidity ^0.4.0;

contract DogContract{
    
    struct Dog {
        string name;
        uint age;
    }
    
    Dog[] dogs;
    mapping(address => uint) ownerToDog;
    
    event addedDog(address owner, string name, uint dogID);
    
    function addDog(string m_name, uint m_age) internal{
        address owner = msg.sender;
        uint id = dogs.push(Dog(m_name, m_age));
        ownerToDog[owner] = id;
        addedDog(owner, m_name, id);
    }
    
    function getDog() returns (string){
        address owner = msg.sender;
        uint id = ownerToDog[owner];
        return dogs[id - 1].name;
    }
}