#条件判断文
#変数aの値が10以上の場合はgreater,9以下はsmallerと表示するプログラム

a = 20
if a >= 10 then
	puts "greater"
end
if a <= 9 then
	puts "smaller"
end

#thenは省略可能
#elseを追加した条件文

a = 20
if a >= 10
	puts "greater"
else
	puts "smaller"
end

#繰り返しwhile
#1~10まで表示

i = 1
while i <= 10
	puts i
	i = i + 1
end

#times メソッド
100.times do
	puts "お前はやればできるんだよ！"
end

100.times do
	puts "You can do it! Dooooooo it!!"
end