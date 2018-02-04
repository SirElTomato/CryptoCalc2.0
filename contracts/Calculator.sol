pragma solidity ^0.4.17;

contract Calculator {

    enum Operations { Add, Subtract, Multiply, Divide } 

    function calculate (uint operation, uint number1, uint number2) public pure returns (uint) {
        if (operation == 1) {
            return add(number1, number2);
        }
        if (operation == 2) {
            return subtract(number1, number2);
        }
        if (operation == 3) {
            return multiply(number1, number2);
        }
        if (operation == 4) {
            return divide(number1, number2);
        }
    }

    function add(uint number1, uint number2) public pure returns (uint) {
        return number1 + number2; 
    }

    function subtract(uint number1, uint number2) public pure returns (uint) {
        return number1 - number2; 
    }

    function multiply(uint number1, uint number2) public pure returns (uint) {
        return number1 * number2; 
    }

    function divide(uint number1, uint number2) public pure returns (uint) {
        return number1 / number2; 
    }
}

