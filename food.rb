require "./menu"

class Food < Menu
	attr_accessor :calorie

	def calorie_info
		return "#{name}は#{calorie}kcalです"
  end
end