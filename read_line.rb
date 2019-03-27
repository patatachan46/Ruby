#ファイルを１行ずつ読み込む

filename = ARGV[0]
file = File.open(filename) #ファイルのテキストデータを読み込む
file.each_line do |line| 
	print line
end
file.close

#each_lineメソッドファイルを１行ずつ読み込み、printメソッドで文字列を出力している