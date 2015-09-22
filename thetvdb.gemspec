# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'thetvdb/version'

Gem::Specification.new do |spec|
  spec.name          = "thetvdb-ruby"
  spec.version       = Thetvdb::VERSION
  spec.authors       = ["Victor Areba"]
  spec.email         = ["vicgoburg@gmail.com"]

  spec.summary       = %q{Ruby wrapper for TVDB API}
  spec.description   = %q{Get access to your favorite tv shows and it's episodes details}
  spec.homepage      = "https://github.com/theareba/thetvdb-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
