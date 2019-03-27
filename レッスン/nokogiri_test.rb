require 'nokogiri'
require 'csv'

array = []

CSV.open("seed_songs.csv", "w") do |csv|
  for year in 1990..2018 do
    f = File.open("#{year}.html")
    doc = Nokogiri::HTML(f)
    f.close()

    doc.css("table.wikitable tr").each_with_index do |node, index|
      next if index == 0
      ranking = node.css("th").inner_text
      title   = node.css("td:eq(1)").inner_text.gsub(/^"/, "").gsub(/"$/, "")
      artist  = node.css("td:eq(2)").css("a")
      artist.each do |artist|
        artist = artist.inner_text
        array.push(artist)
        csv << [title, artist, ranking, year]
      end
    end
  end
end

array = array.uniq.sort_by{|a| a.downcase}
CSV.open("seed_artists.csv", "w") do |csv|
  array.each do |a|
    csv << [a]
  end
end