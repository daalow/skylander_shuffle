require 'skylander_shuffle/skylander.rb'
require 'skylander_shuffle/magic_item.rb'
require 'json'

module SkylanderShuffle
  class << self
    def skylanders
      JSON.parse(DATA)['skylanders']
    end

    def magic_items
      JSON.parse(DATA)['magic_items']
    end
  end
end

__END__
{
  "skylanders" : [
    {
      "name": "Bouncer",
      "attack": 150,
      "defense": 110,
      "speed": 50,
      "luck": 90,
      "characteristics": [
        "giant"
      ]
    },
    {
      "name": "Chill",
      "attack": 40,
      "defense": 90,
      "speed": 50,
      "luck": 90,
      "characteristics": [
      ]
    },
    {
      "name": "Zook",
      "attack": 80,
      "defense": 85,
      "speed": 20,
      "luck": 85,
      "characteristics": [
      ]
    }
  ],
  "magic_items": [
    "Catapult",
    "Dragonfire Cannon"
  ]
}
