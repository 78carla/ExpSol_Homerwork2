// This code implements a function that will delete items (one at a time) from a dynamic array without leaving gaps in the array. 
// The items to be deleted are chosen random. 

// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract deleteArrayItem {
    //Define a dynamic array
    uint[] public myArray;

    // Function to get the gas left + hardhat-gas-reporter  + slider
   //gasleft();

    //Function that returns the array
    function getArray() public view returns (uint[] memory) {
        return myArray;
    }

    // Function to add the element to the array (one by one)
    function addToArray(uint _value) public{
        myArray.push(_value);
    }

    
    // Function to delete an element from the array
    function deleteFromArray(uint _index) public {
        require(_index < myArray.length, "Index out of bounds"); // Check if index is within bounds

        // Swap the element to be deleted with the last element in the array
        myArray[_index] = myArray[myArray.length - 1];
        // Reduce the array's length by 1 to remove the last element (which was duplicated in the swap)
        myArray.pop();
    }

    // Function to get the current length of the array
    function getArrayLength() public view returns (uint) {
        return myArray.length;
    }

    //*More impletementation not required for the task*//

    // Function to add element to the array
    //function addMultipleItemToArray(uint _index, uint[] memory _value) public {
    //    for (uint i = 0; i < _index; i++) {
    //        addToArray(_value[i]);
    //    }
    //}

     // Function to delete multiple elements from the array at random indexes
    //function deleteMultipleFromArray(uint[] memory _indexes) public {
    //    for (uint i = 0; i < _indexes.length; i++) {
    //        deleteFromArray(_indexes[i]);
    //    }
    //}


}
