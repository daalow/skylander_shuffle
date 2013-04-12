# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'skylander_shuffle/version'

Gem::Specification.new do |spec|
  spec.name          = "skylander_shuffle"
  spec.version       = SkylanderShuffle::VERSION
  spec.authors       = ["Erran Carey"]
  spec.email         = ["me@errancarey.com"]
  spec.description   = %q{A program to emulate and assist in playing a card game created by my younger brother.}
  spec.summary       = %q{A program to emulate and assist in playing a card game created by my younger brother. }
  spec.homepage      = "https://github.com/ipwnstuff/skylander_shuffle"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
