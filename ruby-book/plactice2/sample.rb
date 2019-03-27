puts '---------------------------------'
puts '配列'

a = [[10,20,30],[40,50,60],[70,80,90]]
puts a

#配列の各要素を取得する
a = [1,2,3]
puts a[0]
puts a[1]
puts a[2]

#sizeメソッド（エイリアスメソッドlength）→配列の長さを取得
a = [1,2,3,4,5,6,7,8,9]
puts a.size
puts a.length

#要素の変更、追加、削除
#変更
a = [1, 2, 3]
a[1] = 20
puts a

#追加（<<）
a = []
a << 1
a << 2
a << 3
puts a

#削除（delete_atメソッド）
a = [1, 2, 3]
#２番目の要素を削除する
a.delete_at(1)
puts a

#配列を使った多重代入
a, b =[1, 2]
puts a
puts b

c, d = [10]
puts c
puts d

e, f = [100, 200, 300]
puts e
puts f

#divmodメソッド（割り算の商と余りを配列として返す）
puts 14.divmod(3)

#戻り値を配列のまま受け取る
quo_rem = 14.divmod(3)
puts "商=#{quo_rem[0]}, 余り=#{quo_rem[1]}"	

#多重代入で別々の変数として受け取る
quotient, remainder = 14.divmod(3)
puts "商=#{quotient}, 余り=#{remainder}"

puts '---------------------------------'
puts 'ブロック'

#繰り返し処理(each)
numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
	sum += n
end

puts sum

#配列から奇数だけを削除pする（delete_if）
a = [1, 2, 3, 1, 2, 3]
a.delete_if do |n|
	n.odd?
end

puts a

puts '---------------------------------'
puts 'ブロック引数とブロック内の変数'

=begin
ブロック引数の名前はなんでも良い
numbers.each do [i]
	sum + i
end

numbers.each do [number]
	sum + number
end

numbers.each do [element]
	sum + element
end
=end

#偶数のみ値を１０倍にしてから加算するコード
numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
	sum_value = n.even? ? n * 10 : n
	sum += sum_value
end
puts sum

#sum_valueはブロック内で登場したので、ブロック内でのみ有効
#ブロックの外に出ると無効になる
#sumはブロックの外で作成されたローカル変数なので、ブロック内部でも参照可能


puts '---------------------------------'
puts 'do...end と　{}'
#Rubyは改行を入れなくてもブロックは動作する

#改行を入れない書き方
numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n| sum += n end
puts sum

#do...endの代わりに{}を使う書き方
numbers = [1, 2, 3, 4]
sum = 0
numbers.each { |n| sum += n}
puts sum


#{}を使って改行する書き方
numbers = [1, 2, 3, 4]
sum = 0
numbers.each { |n|
	sum += n
}
puts sum


puts '---------------------------------'
puts 'ブロックを使う配列のメソッド'

=begin
使用頻度が高いメソッド
map/collect
select/find_all/reject
find/detect
inject/reduce
=end

#map/collect
#mapメソッドは各要素に対してブロックを評価した結果を新しい配列に返す。
numbers = [1, 2, 3, 4, 5]
new_numbers = numbers.map {|n| n * 10}
puts new_numbers


#select/find_all/reject
#seceltメソッドは各要素に対してブロックを評価し、その戻り値を集めた配列を返すメソッド
#戻り値が偶数だけ集めた配列を作る
numbers = [1, 2, 3, 4, 5, 6]
even_numbers = numbers.select { |n| n.even? }
puts even_numbers

#戻り値が偽だけ集めた配列
numbers = [1, 2, 3, 4, 5, 6]
non_multiples_of_three = numbers.reject { |n| n.even? }
puts non_multiples_of_three

#find/detect
#ブロックの戻り値が真になった最初の要素を返す
numbers = [1, 2, 3, 4, 5, 6]
even_numbers = numbers.find { |n| n.even? }
puts even_numbers

#inject/reduce
#1~4まで加算するコード
numbers = [1, 2, 3, 4]
sum = 0
numbers.each { |n| sum += n }
puts sum

#injectを使うと
numbers = [1, 2, 3, 4]
sum = numbers.inject(0) {|result, n| result + n }
puts sum

#---------------------------------
#範囲(Range)値の範囲を表す

puts (1..5).class
puts (1...5).class

#1以上5以下を表す
range = 1..5
puts range.include?(0)
puts range.include?(1)
puts range.include?(4.9)
puts range.include?(5)
puts range.include?(6)

#1以上5未満
range = 1...5
puts range.include?(0)
puts range.include?(1)
puts range.include?(4.9)
puts range.include?(5)
puts range.include?(6)

#変数に入れない書き方
puts (1..5).include?(1)

#配列や文字列の一部を抜き出す
a = [1, 2, 3, 4, 5]
puts a[1..3]

a = 'abcdef'
puts a[1..3]

#exp.---------------------------------
#n以上m以下、n以上m未満の判定をする

#不等号を使うとき
def liquid?(temperture)
	#0度以上100度未満だと液体と判定する
	0 <= temperture && temperture < 100
end

puts liquid?(-1)
puts liquid?(0)
puts liquid?(99)
puts liquid?(100)

#範囲オブジェクトを使うとき
def liquid?(temperture)
	(0...100).include?(temperture)
end
puts liquid?(-1)
puts liquid?(0)
puts liquid?(99)
puts liquid?(100)
























