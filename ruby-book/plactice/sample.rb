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


p "------------------------------------------"
p "メソッドの定義"

def add(a, b)
	puts a + b
end
add(1, 2)


def greeting(country)
	if country == 'japan'
		puts 'こんにちは'
	else
		puts 'HEllo'
	end
end
greeting('japan')

def greeting(country)
	if country == 'japan'
		puts 'こんにちは'
	else
		puts 'Hello'
	end
end
greeting('u.s')


def add(a, b)
	a + b
end

sum = add(1,3)
puts sum


x = greeting('japan')
p x


p "------------------------------------------"
p "ヒアドキュメント"
a = <<TEXT
これはヒアドキュメントです。
複数行に渡る長い文字列を作成するのに便利です。
TEXT

puts a

def some_method
	<<-TEXT
	これはヒアドキュメントです。
	<<-を使うと最後の識別子をインデントさせることができます。
	TEXT
end

puts some_method

#ヒアドキュメントの中では式展開ができる
name = 'Alice'

a = <<TEXT
ようこそ、#{name}さん！
以下のメッセージをご覧ください。
TEXT

puts a

#識別子をシングルクォートで囲むと式展開は無効になる。
name = 'Alice'

a = <<'TEXT'
ようこそ、#{name}さん！
以下のメッセージをご覧ください。
TEXT
puts a

#識別子をダブルクォートで囲むと式展開は有効になる。
name = 'Alice'

a = <<"TEXT"
ようこそ、#{name}さん！
以下のメッセージをご覧ください。
TEXT

puts a

#ヒアドキュメントを直接引数として渡す（prependは渡された文字鉄を先頭に追加するメソッド）
a = 'Ruby'
a.prepend(<<TEXT)
Java
PHP
TEXT
puts a

#ヒアドキュメントで作成した文字列に対して、直接upcaseメソッドを呼び出す。
#upcaseは文字列を全て大文字にするメソッド

b = <<TEXT.upcase
Hello,
Good-bye.
TEXT
puts b

#sprintfメソッド（フォーマットを指定して文字列を作成）
a = sprintf('%0.3f',1.3)
puts a

a = '%0.3f' % 1.2
puts a


p "------------------------------------------"
p "and or not"
#&&,||に近い働きをする。優先度は&&,||よりも低い

t1 = true
f1 = false
p t1 and f1 
p t1 or f1

p "------------------------------------------"
p "unless文"
#unlessはif文の逆
#条件式が偽になったときだけ処理を実行する

#普通のif文
status = 'error'
if status != 'ok'
	puts '何か異常があります'
end

#unless文
status = 'error'
unless status == 'ok'
	puts '何か異常があります'
end

#条件が偽出なかった場合の処理
status = 'ok'
unless status == 'ok'
	puts '何か異常があります'
else
	puts '正常です'
end

#unlessは戻り値を直接変数に代入したり、修飾子として文の後ろにおいたりできる
status = 'error'

#unlessの結果を変数に代入する
message = 
unless status == 'ok'
	 '何か異常があります'
else
	 '正常です'
end

puts message

#unlessを修飾子として使う
puts '何か異常があります' unless status == 'ok'


p "------------------------------------------"
p "case文"
#複数の条件を指定する場合はcase文を使った方がシンプルになる

#if文の場合
country = 'italy'

if country == 'japan'
	puts 'こんにちは'
elsif country == 'u.s'
	puts 'Hello'
elsif country == 'italy'
	puts 'ciao'
else
	puts '???'
end

#case文を使う場合
case country
when 'japan'
	puts 'こんにちは'
when 'u.s'
	puts 'Hello'
when 'italy'
	puts 'ciao'
else
	puts '???'
end
		
 	
#case文ではwhenに複数の値を指定し、どれか一致すれば処理を実行させることもできる

country = 'アメリカ'
case country
when  'japan', '日本'
	puts 'こんにちは'
when 'u.s', 'アメリカ'
	puts 'Hello'
when 'italy', 'イタリア'
	puts 'ciao'
else
	puts '???'
end
					
#case文も戻り値を変数に代入することができる
country = 'italy'

message =
	case country
	when 'japan'
		'こんにちは'
	when 'u.s'
		'Hello'
	when 'italy'
		'ciao'
	else
		'???'
	end

puts message
			
			
p "------------------------------------------"
p "条件演算子"
#if文は場合によっては条件演算子を使ってシンプルにすることができる

#式　? 真の時の処理　：　偽だった時の処理

#if文で書くとき			
n = 11
if n > 10
	puts '10より大きい'
else
	puts '10以下'
end

#条件演算子使った時
n = 11
n > 10 ? '10より大きい' : '10より小さい'


p "------------------------------------------"
p "デフォルト値付きの引数"

#def メソッド（引数1 = デフォルト値1, 引数2 = デフォルト値2)
  #必要な処理
#end

#デフォルト値を設定すると引数なしでも呼び出し可能になる

#引数なしの場合はcountryに'japan'を設定する
def greeting(country = 'japan')
	if country == 'japan'
		'こんにちは'
	else
		 'Hello'
	end
end

puts greeting
puts greeting('us')

def default_args(a, b, c = 0, d = 0)
	"a=#{a}, b=#{b}, c=#{c}, d=#{d}"
end
puts default_args(1, 2)
puts default_args(1, 2, 3)
puts default_args(1, 2, 3, 4)

#システム日時や他のメソッドの戻り値をデフォルト値に設定する
def foo(time = Time.now, message = bar)
	puts "time: #{time}, message: #{message}"
end

def bar
	'BAR'
end

puts foo


#?で終わるメソッド
#?でお終わるメソッドは真偽値を返すメソッドになっている

#空文字列であればtrue、そうでなければfalse
puts ''.empty?
puts '123'.empty?

#引数の文字列が含まれていなければtrue、そうでなければfalse
puts 'watch'.include?('at')
puts 'watch'.include?('in')

#奇数ならtrue、偶数ならfalse
puts 1.odd?
puts 2.odd?

#偶数ならtrue、奇数ならfalse
puts 1.even?
puts 2.even?

#オブジェクトがnilならtrue、そうでなければfalse
puts nil.nil?
puts 'abc'.nil?
puts 1.nil?

#3の倍数ならtrue、それ以外はfalseを返す
def multiple_of_three?(n)
	n % 3 == 0
end
puts multiple_of_three?(4)
puts multiple_of_three?(5)
puts multiple_of_three?(6)
puts multiple_of_three?(15)



#!で終わるメソッド
#!で終わるメソッドは「使用する際は注意が必要」という意味を持つ

a = 'ruby'

#upcaseだと変数aの値は変化しない
puts a.upcase
puts a

#upcase!だと変数aの値も大文字になる
puts a.upcase!
puts a

#破壊的メソッド→呼び出したオブジェクトの状態を変更してしまうメソッドのこと


#文字列の順番を逆にして、文字も大文字にする破壊的メソッド
def reverse_upcase!(s)
	s.reverse!.upcase!
end

s = 'ruby'
puts reverse_upcase!(s)
puts s



























































