procedure clearScreen
    var ch : string (1)
    put "Press enter to clear screen"
    getch (ch)
    cls
end clearScreen

var num1 : int
var num2 : int
var interval : int
var input1 : string
var input2 : string
var input3 : string

loop
    loop
	put "Please input the first number."
	get input1
	if strintok (input1) then
	    num1 := strint (input1)
	    exit
	else
	    put "Not a number."
	    exit
	end if
    end loop
    clearScreen
    loop
	put "Please input the second number."
	get input2
	if strintok (input2) then
	    num2 := strint (input2)
	    exit
	else
	    put "Not a number."
	    exit
	end if
    end loop
    clearScreen
    loop
	put "Please input invterval at which to count."
	get input3
	if strintok (input3) then
	    interval := strint (input3)
	    exit
	else
	    put "Not a number."
	    exit
	end if
    end loop
    clearScreen
    if strintok (input1) and strintok (input2) and strintok (input3) then
	exit
    else
	put "You didn't put a number in one of those, what the heck bro"
	return
    end if
end loop
if num1 < num2 then
    for i: num1..num2 by interval
	put i
    end for
elsif num1 > num2 then
    for i: num2..num1 by interval
	put i
    end for
end if
