procedure clearScreen
    var ch : string(1)
    put "Press ENTER to clear screen:"
    getch (ch)
    cls
end clearScreen

var number,count,sum,avg,startint:int
var numbers: array 1..20 of int

sum := 0
count := 0
avg := 0

loop
put "Type a positive integer to start and a negative number to stop."
    get startint
    if startint > 0 then
	loop
	    put "Input a number."
	    get number 
	    exit when number < 0
	    count:=count+1
	    numbers(count):=number
	    sum := sum + number
	    clearScreen
	end loop
	put "The sum of the numbers was ", sum
	put "The average of the numbers was ", sum/count
	exit
    elsif startint < 0 then
	put "Thank you for using this program love u bby"
	exit
    end if
end loop
