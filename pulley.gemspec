# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pulley/version'

Gem::Specification.new do |spec|
  spec.name          = "pulley"
  spec.version       = Pulley::VERSION
  spec.authors       = ["Chase Southard"]
  spec.email         = ["chase.southard@gmail.com"]
  spec.description   = %q{Update all git repos in a directory.}
  spec.summary       = %q{Command line application for updating all git repositories in a directory.}
  spec.homepage      = "https://github.com/chaserx/pulley"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency('rdoc')
  spec.add_development_dependency('aruba')
  spec.add_development_dependency('rake', '~> 0.9.2')
  spec.add_dependency('methadone', '~> 1.3.1')
  spec.add_dependency('git', '~> 1.2.6')
  spec.add_dependency('progress_bar', '~> 1.0.0')
end
