program calculator
    implicit none
    ! Define variables
    character(len=1) :: operator
    real :: num1, num2, result
    character(len=20) :: result_str
    character(len=*), parameter :: reset = char(27) // '[0m'
    character(len=*), parameter :: red = char(27) // '[31m'
    character(len=*), parameter :: yellow = char(27) // '[33m'
    character(len=*), parameter :: green = char(27) // '[32m'
    ! End of variable definition

    ! Main program
    print *, yellow // 'Enter first number: ' // reset
    read *, num1
    print *, yellow // 'Enter operator (+, -, *, /): ' // reset
    read *, operator
    print *, yellow // 'Enter second number: ' // reset
    read *, num2

    if (operator == '+') then
        result = num1 + num2
    else if (operator == '-') then
        result = num1 - num2
    else if (operator == '*') then
        result = num1 * num2
    else if (operator == '/') then
        if (num2 == 0) then
            print *, red // 'Division by zero is prohibited' // reset
            stop
        end if
        result = num1 / num2
    else
        print *, red // 'Invalid operator' // reset
        stop
    end if

    write(result_str, '(F6.2)') result
    print *, green // 'Result: ' // trim(result_str) // reset
    ! End of main program
end program calculator