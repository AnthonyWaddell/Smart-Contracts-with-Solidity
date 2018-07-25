pragma solidity ^0.4.0;

// Practice file to help understand structs and arrays. The task is involves 
// adding as many people as desired to an array and then calculating the 
// average age of everyone in the array. 
contract personTracker{
    
    // Struct to identfy a person
    struct m_person{
        string name;
        uint age;
    }
    
    // Array to hold people
    m_person[] people;
    
    // Add a person to the array
    function addPerson(string m_name, uint m_age){
        people.push(m_person(m_name, m_age));
    }
    
    // Determine the average age of everyone in the array
    function getAverageAge() returns(uint){
        uint length = people.length;
        uint m_total;
        uint m_average;
        for (uint start = 0; start < length; start++){
            m_total += people[start].age;
        }
        m_total *= 1000;
        m_total /= length;
        m_total /= 1000;
        return m_total;
    }
}