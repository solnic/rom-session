# encoding: utf-8

source 'https://rubygems.org'

gemspec

gem 'rom-relation', git: 'https://github.com/rom-rb/rom-relation.git', branch: 'master'
gem 'rom-mapper', git: 'https://github.com/rom-rb/rom-mapper.git', branch: 'master'

gem 'devtools', git: 'https://github.com/rom-rb/devtools.git', branch: 'master'

group :test do
  gem 'axiom-memory-adapter', '~> 0.2.0'
  gem 'bogus', '~> 0.1'
  gem 'rubysl-bigdecimal', platforms: :rbx
end

# added by devtools
eval_gemfile 'Gemfile.devtools'
