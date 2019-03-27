#入力されたテキストの中から、正規表現で指定した特定のパターンにマッチする行を出力する

pattern = Regexp.new(ARGV[0])
filename = ARGV[1]

file = File.open(filename)
file.each_line do |line|
	if pattern =~ line
		print line
	end
end
file.close
