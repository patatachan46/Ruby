puts "------------------------------------"
puts "Minitestの基本"

#テスト失敗例
require 'minitest/autorun'

class SampleTest < Minitest::Test
	def test_sample
		assert_equal 'RUBY', 'ruby'.capitalize
	end
end