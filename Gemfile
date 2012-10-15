source :rubyforge

gemspec

gem 'adamantium',     :git => 'https://github.com/mbj/adamantium.git', :branch => :'no-deep-freeze-etc'
gem 'equalizer',      :git => 'https://github.com/dkubb/equalizer.git'
gem 'abstract_class', :git => 'https://github.com/dkubb/abstract_class.git'

group :guard do
  gem 'guard'
  gem 'guard-rspec'
  gem 'guard-bundler'
  gem 'rb-inotify', :git => 'https://github.com/mbj/rb-inotify.git'
end

group :test, :development do
  gem 'rake'
  gem 'rspec'
  gem 'rspec-core'
  gem 'rspec-mocks'
  gem 'rspec-expectations'
end

group :metrics do
  gem 'flay',        '~> 1.4.2'
  gem 'flog',        '~> 2.5.1'
  gem 'reek',        '~> 1.2.8', :git => 'https://github.com/dkubb/reek.git'
  gem 'roodi',       '~> 2.1.0'
  gem 'yardstick',   '~> 0.5.0'
end
