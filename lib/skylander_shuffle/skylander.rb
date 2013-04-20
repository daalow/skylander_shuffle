module SkylanderShuffle
  class Skylander < Struct.new(:name, :attack, :defense, :speed, :luck, :characteristics, :variant)
    def self.json_create(attrs)
      self.new(attrs['name'], attrs['attack'], attrs['defense'], attrs['speed'], attrs['luck'], attrs['characteristics'], attrs['variant'])
    end

    def is_giant?
      if name =~ /(?:bouncer|crusher|eye[- ]?brawl|hot[- ]?head|ninjini|swarm|thumpback|tree[- ]?rex)/i
        true
      elsif characteristics && characteristics.include?('giant')
        true
      end
    end

    def is_lightcore?
      return false unless is_giant? || name =~ /(?:shroomboom|eruptor|prism[- ]?break|drobot|jet[- ]?vac|hex|chill|pop[- ]?fizz)/i

      if characteristics && characteristics.include?('lightcore')
        true
      elsif is_giant?
        true
      end
    end
  end
end

# Define Skylander as a shortcut assuming it's not already defined.
Skylander = SkylanderShuffle::Skylander unless defined?(Skylander)
