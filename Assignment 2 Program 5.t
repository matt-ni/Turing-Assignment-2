procedure clearScreen
    var ch : string (1)
    put "Press ENTER to clear screen:"
    getch (ch)
    cls
end clearScreen

var words : array 1 .. 5 of string
var order : string
var x : string
var count : int
count := 0
x := "x"
loop
    for i : 1 .. 5
	put "Please enter word", i, ": "
	get words (i)
	exit when words (i) = x or count > 4
	count := count + 1
	clearScreen
    end for
    loop
	if words (1) = x then
	    put "You didn't even enter a word."
	    return
	else
	    put "What order do you want the words listed in?"
	    get order
	    if order = "Forwards" then
		for i : 1 .. count
		    put words (i)
		end for
		return
	    elsif order = "forwards" then
		for i : 1 .. count
		    put words (i)
		end for
		return
	    elsif order = "Backwards" then
		for decreasing i : count .. 1
		    put words (i)
		end for
		return
	    elsif order = "backwards" then
		for decreasing i : count .. 1
		    put words (i)
		end for
		return
	    else
		put "Not a valid order. Try again."
		return
	    end if
	end if
    end loop
end loop
