# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "alpha"
  spec.version       = '1.0'
  spec.authors       = ["Dario Daic"]
  spec.email         = ["dariodaic5.1@gmail.com"]
  spec.summary       = %q{alpha is just a test project}
  spec.description   = %q{alpha is a test project to see how Zed Shaw's
                          skeleton project is to be use.}
  spec.homepage      = "http://www.facebook.com/dario.daic"

  spec.files         = ['lib/alpha.rb']
  spec.executables   = ['alpha']
  spec.test_files    = ['tests/test_alpha.rb']
  spec.require_paths = ["lib"]
end
