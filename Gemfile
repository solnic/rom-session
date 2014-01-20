# encoding: utf-8

source 'https://rubygems.org'

gemspec

gem 'adamantium', '~> 0.1', git: 'https://github.com/dkubb/adamantium.git', branch: 'master'
gem 'axiom', '~> 0.1', git: 'https://github.com/dkubb/axiom.git', branch: 'master'
gem 'axiom-optimizer', '~> 0.1', git: 'https://github.com/dkubb/axiom-optimizer.git', branch: 'master'
gem 'axiom-memory-adapter', '~> 0.0.2', git: 'https://github.com/dkubb/axiom-memory-adapter.git', branch: 'master'

gem 'rom-relation', git: 'https://github.com/rom-rb/rom-relation.git', branch: 'master'
gem 'rom-mapper', git: 'https://github.com/rom-rb/rom-mapper.git', branch: 'master'

gem 'devtools', git: 'https://github.com/rom-rb/devtools.git', branch: 'master'

group :test do
  gem 'bogus', '~> 0.1'
  gem 'rubysl-bigdecimal', platforms: :rbx
end

# added by devtools
eval_gemfile 'Gemfile.devtools'
