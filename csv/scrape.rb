require "mechanize"
agent = Mechanize.new
page = agent.get("https://www.google.com/")
elements = page.search('title')
p page.body

puts "おはよう" .gsub("は","き")

   ITunesSearchAPI.search(
            :term    => "8/pLanet",
            :country => 'jp',
            :media   => 'music',
            :lang    => 'ja_jp',
            :limit  => '10'
            ).each do |item|
            p item
            print("#{item['artistName']},#{item['trackName']}\n")
        end