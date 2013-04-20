module SkylanderShuffle
  class MagicItem < Struct.new(:name)
    def self.json_create(attrs)
      self.new(attrs['name'])
    end
  end
end

# Define MagicItem as a shortcut assuming it's not already defined.
MagicItem = SkylanderShuffle::MagicItem unless defined?(MagicItem)
