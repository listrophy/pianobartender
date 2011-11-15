# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "pianobartender/version"

Gem::Specification.new do |s|
  s.name        = "pianobartender"
  s.version     = Pianobartender::VERSION
  s.authors     = ["Bradley Grzesiak"]
  s.email       = ["brad@bendyworks.com"]
  s.homepage    = "https://github.com/listrophy/pianobartender"
  s.summary     = %q{Wraps pianobar in a really simple web api}
  s.description = %q{Wraps pianobar in a really simple web api}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "guard"
  s.add_development_dependency "guard-process"
  s.add_runtime_dependency "sinatra"
end
