# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ashmont/version"

Gem::Specification.new do |s|
  s.name        = "ashmont"
  s.version     = Ashmont::VERSION.dup
  s.authors     = ["thoughtbot", "captproton (Carl Tanner)"]
  s.email       = ["jferris@thoughtbot.com", "rocketeer.captproton@gmail.com"]
  s.homepage    = "https://github.com/captproton/ashmont"
  s.summary     = %q{ActiveModel-like objects and helpers for interacting with Braintree.}
  s.description = %q{ActiveModel-like objects and helpers for interacting with Braintree.}

  s.rubyforge_project = "ashmont"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency('braintree', '>= 2.74.0')
  s.add_dependency('activesupport', '~> 5.0', '>= 5.0.2')
  s.add_dependency('i18n', '~> 0.8.1')
  s.add_dependency('tzinfo', '~> 1.2', '>= 1.2.3')
  s.add_development_dependency('bourne')
  s.add_development_dependency('rake')
  s.add_development_dependency('rspec')
  s.add_development_dependency('timecop')
end
