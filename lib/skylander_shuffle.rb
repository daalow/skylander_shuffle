require 'skylander_shuffle/skylander.rb'
require 'skylander_shuffle/magic_item.rb'
require 'json'

module SkylanderShuffle
  class << self
    def skylanders
      JSON.load(Net::HTTP.get_response(URI.parse('https://raw.github.com/ipwnstuff/skylander_shuffle/master/data/skylanders.json')))['skylanders']rescue { error: "Unable to load JSON from Github." }
    end

    def magic_items
      JSON.load(Net::HTTP.get_response(URI.parse('https://raw.github.com/ipwnstuff/skylander_shuffle/master/data/magic_items.json')))['magic_items'] rescue { error: "Unable to load JSON from Github." }
    end
  end
end
