def myloop
	while true
		yield  # ブロックを実行する
	end
end

num = 1  # numを初期化する
myloop do 
	puts "num is #{num}" # numを表示する
	break if num > 10 #numがnumが10越えたら処理を抜ける
	num *= 2 #numを２倍にする
end