class C1
	def hello
		"Hello"
	end
end

class C2 < C1
	alias old_hello hello

	def hello
		"#{old_hello}, again"
	end
end

obj = C2.new
p obj.old_hello
p obj.hello

str1 = "Ruby"
str2 = "Ruby"

class << str1
	def hello
		"Hello, #{self}!"
	end
end

p str1.hello
p str2.hello

