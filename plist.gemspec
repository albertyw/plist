# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'plist'

Gem::Specification.new do |s|
  s.name        = 'plist'
  s.version     = Plist::VERSION
  s.license     = 'MIT'
  s.authors     = ['Ben Bleything', 'Patrick May', 'Cellabus, Inc.']
  s.homepage    = 'https://github.com/rchampourlier/plist'
  s.summary     = 'All-purpose Property List manipulation library.'
  s.description = <<-EOD
Plist is a library to manipulate Property List files, also known as plists.  It can parse plist files into native Ruby data structures as well as generating new plist files from your Ruby objects.
EOD
  s.has_rdoc = true

  s.files         = `git ls-files -z`.split("\x0")
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})

  s.require_paths = ['lib']
end
