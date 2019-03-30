#サンプルプログラムから行を順に取り出す

file = File.open("sample.txt")
file.each_line do |line|
	puts line
end

file.close