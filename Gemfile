source 'https://rubygems.org'

gemspec

gem 'axiom'
gem 'rom-relation', :git => 'https://github.com/rom-rb/rom-relation.git'
gem 'rom-mapper',   :git => 'https://github.com/rom-rb/rom-mapper.git', :branch => 'load-strategies'

gem 'devtools', :git => 'https://github.com/rom-rb/devtools.git'
eval File.read('Gemfile.devtools')

group :test do
  gem 'bogus', '~> 0.1'
end
