source :rubyforge

gemspec

gem 'dm-mapper', :path => '../dm-mapper'

group :development do
  gem 'do_postgres'
  gem 'pg'
  gem 'activerecord'
  gem 'arel', :git => 'https://github.com/rails/arel.git'
  gem 'virtus'
end

gem 'devtools', :git => 'https://github.com/datamapper/devtools.git'
eval File.read('Gemfile.devtools')
