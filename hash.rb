address = {name: "高橋", furigana: "タカハシ"}
puts address[:name]
puts address[:furigana]

address[:tel] = "080~~~~~~~~~~~~"
puts address[:tel]

puts address

#address→ハッシュ
#name:, furigana:, tel:→キー
#高橋、タカハシ→オブジェクト

#値を取り出すときはハッシュ名＋キーとする

#ハッシュの繰り返し
address.each do |key, value|
	puts "#{key}: #{value}"
end