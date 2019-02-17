require 'httparty'

class ITunesSearchAPI
  include HTTParty
  base_uri 'https://itunes.apple.com'
  format :json

  class << self
    def search(query={})
      get("/search", :query => query)["results"]
    end

    def lookup(query={})
      get("/lookup", :query => query)["results"]
    end
  end
end
 ITunesSearchAPI.search(
            :term    => "きゃりーぱみゅぱみゅ",
            :country => 'jp',
            :media   => 'music',
            :lang    => 'ja_jp',
            :limit  => '1'
            ).each do |item|
            print("#{item['artistName']},#{item['trackName']}\n")
        end