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
    end for
    loop
	put "What order do you want the words listed in?"
	get order
	if order = "Forwards" then
	    for i : 1 .. count
		put words (i)
	    end for
	    return
	elsif order = "Backwards" then
	    for decreasing i : count .. 1
		put words (i)
	    end for
	    return
	else
	    put "Not a valid order."
	    exit
	end if
    end loop
end loop
