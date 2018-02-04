pragma solidity ^0.4.17;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Calculator.sol";

contract TestCalculator {
    Calculator calculator = Calculator(DeployedAddresses.Calculator());

    // Testing the add function
    function testAdd() public {
        uint number1 = 1;
        uint number2 = 2;

        uint result = calculator.calculate(1, number1, number2);

        uint expected = number1 + number2; 

        Assert.equal(result, expected, "Addition of 1 and 2 should be 3");
    }

    // Testing the subtract function
    function testSubtract() public {
        uint number1 = 5;
        uint number2 = 2;

        uint result = calculator.calculate(2, number1, number2);

        uint expected = number1 - number2; 

        Assert.equal(result, expected, "Subtraction of 5 and 2 should be 3");
    }

    // Testing the add function
    function testMultiply() public {
        uint number1 = 2;
        uint number2 = 4;

        uint result = calculator.calculate(3, number1, number2);

        uint expected = number1 * number2; 

        Assert.equal(result, expected, "Mulitplication of 2 and 4 should be 8");
    }

    // Testing the add function
    function testDivide() public {
        uint number1 = 12;
        uint number2 = 4;

        uint result = calculator.calculate(4, number1, number2);

        uint expected = number1 / number2; 

        Assert.equal(result, expected, "Division of 4 into 12 should be 3");
    }
}