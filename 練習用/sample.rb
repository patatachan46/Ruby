naputs "ここからスタートここからスタートここからスタートここからスタートここからスタートここからスタート"


message ="こんにちは"
puts message + "にんじゃわんこさん"

name = "ひつじ仙人さん"
puts message + name

puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
#-----------------------------------------------------
p "数値と変数"

number1 = 10
puts number1 + 3

number2 = 5
puts number1 + number2

puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

#-----------------------------------------------------
p "真偽値"

score = 94
if score > 80
	puts "よくできました"
end

score = 94
if true 
	puts "よくできました"
end

puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

#-----------------------------------------------------
p "each文"

languages = ["日本語", "英語", "スペイン語"]
	languages.each do | language |
		puts "#{language}を話せます"
	end

puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

#-----------------------------------------------------
p "ハッシュ"

user = {"name" => "Suzuki", "age" => 21}
 puts user
user["gender"] = "male"
puts user

user = [
	{name: "Suzuki", age: 21},
	{name: "Kato", age: 14}	
]
users = user[1]
puts users[:name]

puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

#-----------------------------------------------------
p "ハッシュ"

hash = {ruby:"rails", python:"Django", php:"cakePHP"}
p hash[:ruby]
p hash[:python]
p hash[:go]

puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"
#-----------------------------------------------------
p "総合演習"

olympics = [
  {year: 1896, city: "アテネ"},
  {year: 1900, city: "パリ"},
  {year: 1904, city: "セントルイス", note: "アメリカ初開催"},
  {year: 1908, city: "ロンドン"},
  {year: 1912, city: "ストックホルム"},
  {year: 1916, city: "ベルリン", note: "第一次世界大戦で中止"},
  {year: 1920, city: "アントワープ"},
  {year: 1924, city: "パリ", note: "同じ都市での2回目の開催は初"},
  {year: 1928, city: "アムステルダム"},
  {year: 1932, city: "ロサンゼルス"}
]
puts "第1~10回大会のオリンピック一覧"

olympics.each do |olympic|
  puts "---------------------"
  puts "#{olympic[:year]}年#{olympic[:city]}大会"
end
puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

olympics = [
  {year: 1896, city: "アテネ"},
  {year: 1900, city: "パリ"},
  {year: 1904, city: "セントルイス", note: "アメリカ初開催"},
  {year: 1908, city: "ロンドン"},
  {year: 1912, city: "ストックホルム"},
  {year: 1916, city: "ベルリン", note: "第一次世界大戦で中止"},
  {year: 1920, city: "アントワープ"},
  {year: 1924, city: "パリ", note: "同じ都市での2回目の開催は初"},
  {year: 1928, city: "アムステルダム"},
  {year: 1932, city: "ロサンゼルス"}
]

puts "第1~10回大会のオリンピック一覧"

olympics.each do |olympic|
  puts "---------------------"
  puts "#{olympic[:year]}年#{olympic[:city]}大会"
  
  # 豆知識がある場合のみ豆知識について出力してください
  if olympic[:note]
    puts "豆知識:#{olympic[:note]}"
end
end

puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

#-----------------------------------------------------
p "メソッド"

def introduce
	puts "こんにちは"
	puts "私は忍者わんこです"
	puts "１４歳です"
end

puts "-----自己紹介-----"
introduce

puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

#-----------------------------------------------------
p "引数"

def introduce(name)
	puts "こんにちは"
	puts "私は#{name}です"
end
introduce("にんじゃわんこ")


def introduce(age)
	puts "わたしはにんじゃわんこ"
	puts "#{age}歳です"
end
introduce(14)

def print_info(item)
  puts "わんこでんきへようこそ！"
  puts "今日は#{item}がセール中です！"
end

print_info("ヘッドホン")
print_info("PS4")
print_info("キングダムハーツ３")



puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

#-----------------------------------------------------
p "戻り値"

def add(a, b)
	return a + b
end
sum = add(1, 3)
puts sum


def discount(price)
	return price / 2
end

puts "テレビがセール中です！"

half_price = discount(15000)

puts "特別価格で#{half_price}円です"
puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

#-----------------------------------------------------
p "様々な戻り値"


def negative?(number)
	return number < 0
end

puts negative?(5)


def shipping_free?(price)
	return price >= 5000 
end

if shipping_free?(3000)
	puts "5000円以上お買い上げなので送料はいただきません"
else
	puts "5000円未満なので送料をいただきますごるあ！！"
end


def price_with_shipping(price)
	if price >= 5000
		return price
	end
	return price + 500
end

puts "商品の合計金額は3000円です"
puts "お支払い金額は、送料込みで#{price_with_shipping(3000)}円です"
puts "-----------"
puts "商品の合計金額は10000円です"
puts "お支払い金額は、送料込みで#{price_with_shipping(10000)}円です"


puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

#-----------------------------------------------------
p "クラスの定義"

class Menu
	attr_accessor :name
	attr_accessor :price

	def info
		puts "料理名と値段が表示されます"
	end
end

menu1 = Menu.new

menu1.name = "ピザ"
puts menu1.name

menu1.price = 800
puts menu1.price


menu2 = Menu.new

menu2.name = "すし"
puts menu2.name

menu2.price =1000
puts menu2.price

menu1.info



puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

#-----------------------------------------------------
p "メソッドとインスタンス変数"

class Menu
	attr_accessor :name
	attr_accessor :price

	def info
		return "#{self.name} #{self.price}億円"
	end

end

menu1 = Menu.new
menu1.name = "ピザ"
menu1.price = 800

puts menu1.info




puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

#-----------------------------------------------------
p "メソッドとインスタンス変数"

class Menu
	attr_accessor :name
	attr_accessor :price

	def info
		return "#{self.name} #{self.price}円"
	end

	def get_total_price(count)
		total_price = self.price * count
		if count >= 3
		total_price -= 100
	end
		return total_price
		end
end

menu1 = Menu.new
menu1.name = "ピザ"
menu1.price = 800

puts menu1.get_total_price(3)


puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

#-----------------------------------------------------
p "インスタンスメソッド"

class Menu
	attr_accessor :name
	attr_accessor :price

	def initialize
		self.name = "ピザ"
		self.price = 800
	end

	def info
		return "#{self.name} #{self.price}円"
	end

	def get_total_price(count)
		total_price = self.price * count
		if count >= 3
			total_price -= 100
		end
		return total_price
	end
end

menu1 = Menu.new
puts menu1.info




puts ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>"

#-----------------------------------------------------
p "継承"

require "./food"
require "./drink"

food1 = Food.new(name: "ピザ", price: 800)
puts food1.info

drink1 = Drink.new(name: "コーラ", price: 300)
puts drink1.info











































