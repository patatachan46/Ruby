ltotal = 0  #行数の合計
wtotal = 0  #単語数の合計
ctotal = 0  #文字数の合計
ARGV.each do |file|
	begin
		input = File.open(file)  #ファイルを開く
		l = 0                    #ファイル内の行数
		w = 0 	                 #️ファイル内の単語数
		c = 0                    #ファイル内の文字数
		input.each_line do |line|
			l += 1
			c += line.size
			line.sub!(/^\s+/, "")    #行頭の空白を削除
			ary = line.split(/\s+/)  #空白文字で分解する
			w += ary.size
		end
		input.close    # ファイルを閉じる
		printf("%8d %8d %8d %s\n", l, w, c, file)  # 出力を整形する
		ltotal += 1
		wtotal += w
		ctotal += c
	rescue => ex
		print ex.message,"\n"           # 例外のメッセージを出力@<b>{（B）}
	end
end

printf("%8d %8d %8d %s\n", ltotal, wtotal, ctotal, "total")

