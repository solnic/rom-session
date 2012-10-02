source :rubyforge

gemspec

gem 'immutable',      :git => 'https://github.com/dkubb/immutable.git', :branch => :experimental
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
  gem 'fattr',       '~> 2.2.0'
  gem 'arrayfields', '~> 4.7.4'
  gem 'flay',        '~> 1.4.2'
  gem 'flog',        '~> 2.5.1'
  gem 'map',         '~> 5.2.0'
  gem 'reek',        '~> 1.2.8', :git => 'https://github.com/dkubb/reek.git'
  gem 'roodi',       '~> 2.1.0'
  gem 'yardstick',   '~> 0.4.0'

  platforms :mri_18 do
    gem 'json',      '~> 1.6.4'
    gem 'metric_fu', '~> 2.1.1'
    gem 'mspec',     '~> 1.5.17'
    gem 'rcov',      '~> 0.9.9'
    gem 'ruby2ruby', '=  1.2.2'
  end

  platforms :rbx do
    gem 'pelusa', :git => 'https://github.com/codegram/pelusa.git'
  end
end
