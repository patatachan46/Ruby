puts "------------------------------------"
puts "Minitestの基本"

#テスト成功例
require 'minitest/autorun'

class SampleTest < Minitest::Test
	def test_sample
		assert_equal 'RUBY', 'ruby'.upcase
	end
end