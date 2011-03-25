# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "quick_scrapper/version"

Gem::Specification.new do |s|
  s.name        = "quick_scrapper"
  s.version     = QuickScrapper::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Satyaram B V"]
  s.email       = ["bvsatyaram AT gmail DOT com"]
  s.homepage    = "http://bvsatyaram.com"
  s.summary     = %q{Quickly scraps a selection in a page}
  s.description = %q{Quickly scraps a selection in a page}

  s.rubyforge_project = "quick_scrapper"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
