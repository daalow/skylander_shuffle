require 'skylander_shuffle/skylander.rb'
require 'skylander_shuffle/magic_item.rb'
require 'json'
require 'net/http'

module SkylanderShuffle
  class << self
    def skylanders
      resp_body = Net::HTTP.get_response(URI.parse('https://raw.github.com/ipwnstuff/skylander_shuffle/master/data/skylanders.json')).body
      JSON.load(resp_body) rescue { error: "Unable to load JSON from Github." }
    end

    def magic_items
      resp_body = Net::HTTP.get_response(URI.parse('https://raw.github.com/ipwnstuff/skylander_shuffle/master/data/magic_items.json')).body
      JSON.load(resp_body) rescue { error: "Unable to load JSON from Github." }
    end
  end
end
