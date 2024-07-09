MyContract
Overview
MyContract calculates percentages, determines pass/fail, and generates grades.

Functions
calculatePercentage(uint _obtainedMarks, uint _totalMarks): Compute percentage and set pass/fail message.
generateResult(): Set grade based on the percentage.
Usage
Deploy the Contract.
Call calculatePercentage(85, 100) to set percentage.
Call generateResult() to get the grade.
State Variables
percentageObtained: The percentage score.
resultMessage: "pass" or "fail".
grade: The letter grade.
