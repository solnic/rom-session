# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name     = 'rom-session'
  s.summary  = 'Session for ROM'
  s.homepage = 'http://rom-rb.org'
  s.version  = '0.0.0'

  s.authors  = ['Markus Schirp', 'Piotr Solnica']
  s.email    = ['mbj@schirp-dso.com', 'piotr.solnica@gmail.com']

  s.files            = `git ls-files`.split("\n")
  s.test_files       = `git ls-files -- {spec,features}/*`.split("\n")
  s.require_paths    = %w(lib)
  s.extra_rdoc_files = %w(README.md LICENSE)

  s.add_dependency('adamantium',    '~> 0.0.7')
  s.add_dependency('equalizer',     '~> 0.0.5')
  s.add_dependency('abstract_type', '~> 0.0.5')
  s.add_dependency('concord',       '~> 0.1.0')
end
