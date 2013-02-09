# -*- encoding: utf-8 -*-
$LOAD_PATH.push File.expand_path("lib", File.dirname(__FILE__))
require 'unified_assets'

Gem::Specification.new do |s|

  s.name        = "unified-assets"
  s.version     = UnifiedAssets::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Jake Gordon"]
  s.email       = ["jake@codeincomplete.com"]
  s.homepage    = "https://github.com/jakesgordon/unified-assets"
  s.summary     = UnifiedAssets::SUMMARY
  s.description = UnifiedAssets::DESCRIPTION

  s.add_dependency('rack') # for rake assets:server

  s.has_rdoc         = false
  s.extra_rdoc_files = ["README.md"]
  s.rdoc_options     = ["--charset=UTF-8"]
  s.files            = `git ls-files `.split("\n")
  s.test_files       = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables      = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths    = ["lib"]

end


