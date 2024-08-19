# calculator-fortran
A simple calculator I created in Fortran

[![Build Fortran Code](https://github.com/zanderlewis/calculator-fortran/actions/workflows/build.yml/badge.svg)](https://github.com/zanderlewis/calculator-fortran/actions/workflows/build.yml)

## How to run
1. Clone the repository:
```bash
git clone https://github.com/zanderlewis/calculator-fortran.git
cd calculator-fortran
```
2. Run the following commands:
```bash
gfortran calculator.f90 -o calculator
./calculator
```
3. Follow the on-screen instructions to use the calculator.

## Understanding the code

```fortran
character(len=20) :: result_str
character(len=*), parameter :: reset = char(27) // '[0m'
character(len=*), parameter :: red = char(27) // '[31m'
character(len=*), parameter :: yellow = char(27) // '[33m'
character(len=*), parameter :: green = char(27) // '[32m'
```
^ These lines define the colours used in the output of the program. ^

```fortran
print *, yellow // 'Enter first number: ' // reset
read *, num1
print *, yellow // 'Enter operator (+, -, *, /): ' // reset
read *, operator
print *, yellow // 'Enter second number: ' // reset
read *, num2
```
^ These lines prompt the user to enter the first number, operator, and second number. ^

```fortran
if (operator == '+') then
    result = num1 + num2
else if (operator == '-') then
    result = num1 - num2
else if (operator == '*') then
    result = num1 * num2
else if (operator == '/') then
    if (num2 == 0) then
        ! Prevent division by zero
        print *, red // 'Division by zero is prohibited' // reset
        stop
    end if
    result = num1 / num2
else
    print *, red // 'Invalid operator' // reset
    stop
end if
```
^ These lines calculate the result based on the operator entered by the user. ^

```fortran
write(result_str, '(F6.2)') result
print *, green // 'Result: ' // trim(result_str) // reset
```
^ These lines format and print the result to the console. ^
