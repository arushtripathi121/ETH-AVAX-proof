// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract MyContract {

    uint public percentageObtained;
    string public resultMessage;
    string public grade;

    function calculatePercentage(uint _obtainedMarks, uint _totalMarks) public {
        require(_totalMarks > 0, "Total marks must be greater than zero");
        require(_obtainedMarks <= _totalMarks, "Obtained marks must not exceed total marks");

       
        percentageObtained = (_obtainedMarks * 100) / _totalMarks;

        if (percentageObtained < 30) {
            resultMessage = "fail";
        } else {
            resultMessage = "pass";
        }
    }

    function generateResult() public {
        require(percentageObtained <= 100, "Something went wrong, calculate the percentage first");
        assert(percentageObtained >= 0 && percentageObtained <= 100);

        if (percentageObtained >= 90) {
            grade = "A+";
        } else if (percentageObtained >= 80) {
            grade = "A";
        } else if (percentageObtained >= 70) {
            grade = "B+";
        } else if (percentageObtained >= 60) {
            grade = "B";
        } else if (percentageObtained >= 50) {
            grade = "C+";
        } else if (percentageObtained >= 40) {
            grade = "C";
        } else if (percentageObtained >= 30) {
            grade = "D";
        } else {
            grade = "F";
        }
    }
}
