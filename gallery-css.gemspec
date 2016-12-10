# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gallery-css/version'

Gem::Specification.new do |spec|
  spec.name          = "gallery-css"
  spec.version       = GalleryCss::VERSION
  spec.authors       = ["Sjors Sparreboom"]
  spec.email         = ["mail@sjorssparreboom.nl"]

  spec.summary       = %q{Reliable galleries without the use of javascript.}
  spec.description   = %q{Gallery.css is all CSS. Think: Simple, maintainable and understandable galleries without the use of Javascript.}

  spec.homepage      = "http://github.com/git-jls/gallery-css-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'sass'
end
