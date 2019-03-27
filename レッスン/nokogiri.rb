require 'nokogiri'

f = File.open(2014.html)
doc = Nokogiri::HTML(f)
f.close()

puts doc.title