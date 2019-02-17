require "mechanize"
agent = Mechanize.new
page = agent.get("https://www.google.com/")
elements = page.search('title')
p page.body

puts "おはよう" .gsub("は","き")