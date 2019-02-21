puts "------------------------------------"
puts "Minitestの基本"

require 'minitest/autorun'

class SampleTest < Minitest::SampleTest
	def test_Sample
		assert_equal 'RUBY', 'ruby'.upcase
	end
end