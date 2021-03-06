
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "racquet_finder/version"

Gem::Specification.new do |spec|
  spec.name          = "racquet-finder"
  spec.version       = RacquetFinder::VERSION
  spec.authors       = ["'Sally Zasloff'"]
  spec.email         = ["'szasloff@gmail.com'"]

  spec.summary       = "Find Tennis Racquets"
  spec.description   = "Select a Tennis Racquet Brand and then from that Brand select a Racquet with its current Price"
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "nokogiri"
  spec.add_development_dependency "pry"
end
