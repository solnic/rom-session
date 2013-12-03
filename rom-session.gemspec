# encoding: utf-8

require File.expand_path('../lib/rom/session/version', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = 'rom-session'
  gem.description = 'Session for ROM'
  gem.summary     = gem.description
  gem.authors     = ['Markus Schirp', 'Piotr Solnica']
  gem.email       = ['mbj@schirp-dso.com', 'piotr.solnica@gmail.com']
  gem.version     = ROM::Session::VERSION.dup
  gem.homepage    = 'http://rom-rb.org'

  gem.files            = `git ls-files`.split("\n")
  gem.test_files       = `git ls-files -- {spec,features}/*`.split("\n")
  gem.require_paths    = %w(lib)
  gem.extra_rdoc_files = %w(README.md LICENSE)
  gem.license          = 'MIT'

  gem.add_dependency('adamantium',    '~> 0.1')
  gem.add_dependency('abstract_type', '~> 0.0.7')
  gem.add_dependency('concord',       '~> 0.1.4')
end
