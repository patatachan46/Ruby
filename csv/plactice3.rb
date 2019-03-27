require "csv"

test = CSV.open('animation.csv','w')
	test.puts ["A", "B", "C"]
	test.puts ["milk", "coffee", "water"]
test.close