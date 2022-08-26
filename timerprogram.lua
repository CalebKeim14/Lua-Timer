function wait(seconds)
	local start = os.time()
	repeat until  os.time() > start + seconds
end

function setTimer()
	print("Set a timer please")
	io.write(">>>| ")
	x = tonumber(io.read())
	wait(x)
	exitFunction()
end

function exitFunction()
	print("Timer is done! Type '0' and press enter")
	print("To exit.")
	y = io.read()
	if y == "0" then
		os.exit()
	else
		print("")
		exitFunction()
	end
end

setTimer()