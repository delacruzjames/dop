
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "dop/version"

Gem::Specification.new do |spec|
  spec.name          = "dop"
  spec.version       = Dop::VERSION
  spec.authors       = ["James Dela Cruz"]
  spec.email         = ["delacruzjamesmartin@gmail.com"]

  spec.summary       = "DragonPay Online Payment"
  spec.description   = "Ruby SDK for DragonPay Online Payment"
  spec.homepage      = "https://github.com/delacruzjames/dop"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry", "~> 0.12.2"
  spec.add_development_dependency 'rake', '~> 12.3', '>= 12.3.3'
end
