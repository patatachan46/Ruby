#メソッドの定義

def hello(name)
  puts "Hello, #{name}"
end

hello("Ruby")

#デフォルト引数
def hello(name = "Ruby")
  puts "Hello, #{name}"
end

hello()
hello("Newbie")