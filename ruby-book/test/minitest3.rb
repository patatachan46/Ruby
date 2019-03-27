puts "------------------------------------"
puts "Minitestの基本"

#テスト実行中にエラー発生の場合
require 'minitest/autorun'

class SampleTest < Minitest::Test
	def test_sample
		assert_equal 'RUBY', nil.upcase
	end
end