"abracatabra".scan(/(.)(a)/) do |a, b|
	puts a+"-"+b
end