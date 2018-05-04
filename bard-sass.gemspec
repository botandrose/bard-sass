
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bard/sass/version"

Gem::Specification.new do |spec|
  spec.name          = "bard-sass"
  spec.version       = Bard::Sass::VERSION
  spec.authors       = ["Michael Gubitosa", "Micah Geisel"]
  spec.email         = ["gubs@botandrose.com"]

  spec.summary       = "Sass files across all Bot and Rose projects"
  spec.description   = "Sass files across all Bot and Rose projects"
  spec.homepage      = "https://github.com/botandrose/bard-sass"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
