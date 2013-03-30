module SkylanderShuffle
  class Skylander < Struct.new(:name, :attack, :defense, :speed, :luck, :characteristics)
    def is_giant?
      if name =~ /(?:bouncer|crusher|eye-brawl|hot head|ninjini|swarm|thumpback|tree rex)/i
        true
      elsif characteristics && characteristics.include?('giant')
        true
      end
    end

    def is_lightcore?
      if is_giant?
        true
      elsif characteristics && characteristics.include?('lightcore')
        true
      end
    end
  end
end
