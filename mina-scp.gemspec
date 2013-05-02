# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mina/scp/version'

Gem::Specification.new do |spec|
  spec.name          = "mina-scp"
  spec.version       = Mina::Scp::VERSION
  spec.authors       = ["Anton Dieterle"]
  spec.email         = ["antondie@gmail.com"]
  spec.description   = %q{Basic SCP helpers for Mina deployer for download/upload}
  spec.summary       = %q{Download/upload helpers for Mina deployer using SCP}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
