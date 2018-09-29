procedure clearScreen
    var ch: string (1)
    put "Press enter to clear screen"
    getch (ch)
    cls
end clearScreen

var num1:int
var num2:int
var interval:int

put "Please input the fisrt number."
get num1
clearScreen

put "Please input the second number."
get num2
clearScreen

put "Please input invterval at which to count."
get interval
clearScreen
if num1 < num2 then
    for decreasing i: num2..num1 by interval
	put i
    end for
elsif num1 > num2 then
    loop
	put "Number one is higher than number 2. Please try again."
	exit
    end loop
end if
