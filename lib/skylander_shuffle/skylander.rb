module SkylanderShuffle
  class Skylander < Struct.new(:name, :attack, :defense, :speed, :luck, :special)
    def is_giant?
      if name =~ /(?:bouncer|crusher|eye-brawl|hot head|ninjini|swarm|thumpback|tree rex)/i
        true
      elsif special
        true if special[:giant] || special['giant']
      end
    end

    def is_lightcore?
      if is_giant?
        true
      elsif special
        true if special[:lightcore] || special['lightcore']
      end
    end
  end
end
