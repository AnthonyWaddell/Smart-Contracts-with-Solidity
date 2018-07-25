pragma solidity ^0.4.0;

contract identity{
    string name;
    uint age;
    
    function getName() view returns (string){
        return name;
    }
    
    function getAge() view returns(uint){
        return age;
    }
    
    function setName(string m_input){
        name = m_input;
    }
    
    function setAge(uint m_age){
        age = m_age;
    }
}