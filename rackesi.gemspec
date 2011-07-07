# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "rack-esi"
  s.version     = "0.1"
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Leon Dewey"]
  s.email       = ["leon@leondewey.com"]
  s.summary     = %q{a Rack middleware that brings the power of the ESI to rack}
  s.description = %q{}

  #s.rubyforge_project = "rack-modernizr"

  s.add_dependency 'rack'
  s.add_dependency 'rack-plastic'
  s.add_development_dependency 'test-spec', '>= 0.9.0'
  s.add_development_dependency 'test-unit'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]
end