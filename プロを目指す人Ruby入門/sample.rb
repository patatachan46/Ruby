p (5 + 1 - 2)* 3

def add(a,b)
	a + b
end
p add(4, 5)

p "------------------------------------------"
p "ダブルクォートとシングルクォートの違い"

#ダブルクォート→改行される
puts "こんにちは\nさようなら"

#シングルクォート→ただの文字列になる
puts 'こんにちは\nさようなら'

name = 'Alice'
puts "Hello,#{name}!"

i = 10
puts "#{i}は１６進数にすると#{i.to_s(16)}です"#ちゃんと式が展開される

name = 'Alice'
puts 'HEllo,#{name}!'#→ただの文字列になる

#バックスラッシュを手前に入れると式展開や機能を打ち消せる
puts "こんにちは\\nさようなら"

name = 'Alice'
puts "Hello, \#{name}!"

p "------------------------------------------"
p "数値"

n = 1
puts -n #変数の手前に-をつけると数値の正と負を逆転できる

puts 1/2 #整数/整数の答えの小数点は切り捨てられる

puts 1.0/2 #小数点を出したい時には、どっちかの値に.0をつける
puts 1/2.0

#to_fメソッド（整数から少数に変更できる）
n = 1
puts n.to_f
puts n.to_f / 2

#演算子の優先順位
puts 2 * 3 + 4 * 5 - 6 / 2 #*/は+-より優先される

#数値の増減
n = 1
puts n += 1
puts n -= 1

n = 2
puts n *= 3
puts n /= 2
puts n **= 2
p n **= 3

p "------------------------------------------"
p "真偽値と条件分岐"

p "falese or nilは偽。それ以外は真。"

p "------------------------------------------"
p "論理演算子"
p "かつ"

t1 = true
t2 = true
f1 = false
puts t1 && t2
puts t1 && f1

p "または"

t1 = true
f1 = false
f2 = false
p t1 || t2
p f1 || f2

=begin
かつ(&&)の優先順位はまたは(||)より高い
なので優先順位を変えたい場合は、（）を使って優先順位を変える。
=end

t1 = true
t2 = true
f1 = false
f2 = false
p t1 && t2 || f1 && f2
p (t1 && t2) || (f1 && f2)

t1 = true
t2 = true
f1 = false
f2 = false
p t1 && (t2 || f1) && f2

p "真偽値の反転"
t1 = true
f1 = false
p !t1
p !f1
p t1 && f1
p !(t1 && f1) 


p "------------------------------------------"
p "if文"

n = 11
if n > 10
	puts '10より大きい'
else
	puts '10より小さい'
end

country = 'italy'
if country == 'japan'
	puts 'こんにちは'
elsif country == 'U,S'
	puts 'Hello'
elsif country == 'italy'
	puts 'ciao'
else
	puts '???'
end
		

#if文が戻り値を返す性質を利用した書き方
country = 'italy'

greeting = 

	if country == 'japan'
		'こんにちは'
	elsif country == 'U,S'
		'Hello'
	elsif country == 'italy'
		'ciao'
	else
		'???'
	end

puts greeting
			
country = 'japan'

greeting = 

	if country == 'japan'
		'こんにちは'
	elsif country == 'U,S'
		'Hello'
	elsif country == 'italy'
		'ciao'
	else
		'???'
	end

puts greeting
						
#毎月1日だけポイント５倍！
point = 7
day = 1
if day == 1
	point *= 5
end
p point

#if修飾子・後置ifにすると
point = 7
day = 1
#1日であればポイント５倍（if修飾子を利用）
point *= 5 if day ==1
p point

point = 7
day = 1
point *= 5 if day == 1
p point







































