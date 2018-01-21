
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "s_new/version"

Gem::Specification.new do |spec|
  spec.name          = "s_new"
  spec.version       = SNew::VERSION
  spec.authors       = ["[sm85]"]
  spec.email         = ["[salini.mishra1995@gmail.com]"]

  spec.summary       = %q{sample summary for sample gem }
  spec.description   = %q{sample description}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
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
