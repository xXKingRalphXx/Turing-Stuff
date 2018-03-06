setscreen("graphics:900,1000")

var x, y, len, count, flag : int
x := 0
y := 750
len := 100
count := 0
flag := 0

loop
	for i : 1 .. len
		% when flag is 0, we're drawing the line at y
		% when flag is 1, we're drawing the line at y+len
		drawline(x+len*count, y+len*(flag div -1), x+len*count+i, y+len*(flag div -1), black)
		delay(10)
	end for

	count := count+1

	for i : 1 .. len
		if count mod 2 = 0 then
			drawline(x+len*count, y-len, x+len*count, y-len+i, black)
		else 
			drawline(x+len*count, y, x+len*count, y-i, black)
		end if
		delay(10)
	end for

	if flag = 0 then
		flag := 1
	else
		flag := 0
	end if
end loop
