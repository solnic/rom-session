# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = 'rom-session'
  s.version  = '0.0.1'

  s.authors  = ['Markus Schirp']
  s.email    = 'mbj@schirp-dso.com'
  s.summary  = 'State machine for object persistence'
  s.homepage = 'http://github.com/rom-rb/rom-session'

  s.files            = `git ls-files`.split("\n")
  s.test_files       = `git ls-files -- {spec,features}/*`.split("\n")
  s.require_paths    = %w(lib)
  s.extra_rdoc_files = %w(README.md TODO LICENSE)

  s.add_dependency('backports',      '~> 3.3', '>= 3.3.0')
  s.add_dependency('adamantium',     '~> 0.0.7')
  s.add_dependency('equalizer',      '~> 0.0.5')
  s.add_dependency('abstract_type',  '~> 0.0.5')
  s.add_dependency('concord',        '~> 0.1.0')
end
