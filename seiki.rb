#正規表現
#マッチングしたら、マッチ部分の位置を返す
#️マッチングしなかったらnilを返す


puts /Ruby/ =~ "Yet Another Ruby Hacker"

puts /Ruby/ =~ "Ruby"

puts /Ruby/ =~ "baby"#=>nil

#️大文字小文字を区別しないときはiをつける

puts /Ruby/ =~ "ruby"#=>nil
puts /Ruby/ =~ "RUBY"#=>nil

puts /Ruby/i =~ "ruby"
puts /Ruby/i =~ "RUBY"
puts /Ruby/i =~ "RUby"