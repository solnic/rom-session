# -*- encoding: utf-8 -*-
require File.expand_path('../lib/session/version', __FILE__)

Gem::Specification.new do |s|
  s.name = 'session'
  s.version = Session::VERSION.dup

  s.authors  = ['Markus Schirp']
  s.email    = 'mbj@seonic.net'
  s.date     = '2012-02-14'
  s.summary  = 'Agnostic UoW Session'
  s.homepage = 'http://github.com/mbj/session'

  s.files            = `git ls-files`.split("\n")
  s.test_files       = `git ls-files -- {spec,features}/*`.split("\n")
  s.require_paths    = %w(lib)
  s.extra_rdoc_files = %w(README.md TODO)

  s.rubygems_version = '1.8.10'
  s.add_dependency('backports')
  s.add_dependency('immutable', '~> 0.0.1')

  #s.add_development_dependency('mapper',        '~> 0.0.2')
  s.add_development_dependency('rake',        '~> 0.9.2')
  s.add_development_dependency('rspec',       '~> 1.3.2')
end
