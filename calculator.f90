program calculator
    implicit none
    character :: operator
    real :: num1, num2, result
    print *, 'Enter first number: '
    read *, num1
    print *, 'Enter operator: '
    read *, operator
    print *, 'Enter second number: '
    read *, num2

    if (operator == '+') then
        result = num1 + num2
    else if (operator == '-') then
        result = num1 - num2
    else if (operator == '*') then
        result = num1 * num2
    else if (operator == '/') then
        result = num1 / num2
    else
        print *, 'Invalid operator'
        stop
    end if

    print *, 'Result: ', result
end program calculator