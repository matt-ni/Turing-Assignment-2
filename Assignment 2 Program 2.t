procedure clearScreen
    var ch : string(1)
    put "Press ENTER to clear screen:"
    getch (ch)
    cls
end clearScreen

var f:real

put "Please enter a temperature in Fahrenheit."
get f
clearScreen
put (f-32)/1.8

put"This temperature is..."
if (f-32)/1.8 <= 0 then
    put "Cold!"
elsif (f-32)/1.8 < 30 then
    put "Comfortable!"
elsif (f-32)/1.8 < 40 then
    put "Too hot!"
elsif (f-32)/1.8 > 40 then
    put "Boiling!"
end if 
