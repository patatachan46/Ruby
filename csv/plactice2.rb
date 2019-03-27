require "csv"

CSV.open('animation.csv','w') do |test|
	test << ["A","B","C"]
	test << ["milk", "coffee", "water"]
end
