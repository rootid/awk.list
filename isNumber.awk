#!/usr/bin/awk -f

#find out all the numbers from the file and sum the numbers
### ? 0/1
BEGIN {
    signs = "^[+-]?"
    digits= "[0-9]+"
    fraction = "[.][0-9]+"
    exponent = "([eE]" signs digits ")?"
    number_regex = signs "(" digits "|" fraction ")" exponent "$"
    sum = 0
    }

    $0 ~ number_regex { 
            sum += $0 
        }

END {
        printf("The sum of all the numbers is %4d \n",sum)
    }
