# encoding: utf-8

source 'https://rubygems.org'

module GemfileHelper
  def self.source(name)
    if Dir.exist?("../#{name}")
      { path: "../#{name}" }
    else
      { git: "https://github.com/rom-rb/#{name}.git" }
    end
  end
end

gemspec

gem 'axiom', '~> 0.1.1', git: 'https://github.com/dkubb/axiom.git', branch: 'master'
gem 'axiom-memory-adapter', '~> 0.0.2', git: 'https://github.com/dkubb/axiom-memory-adapter.git', branch: 'master'

gem 'rom-relation', GemfileHelper.source('rom-relation')
gem 'rom-mapper',   GemfileHelper.source('rom-mapper')

gem 'devtools', git: 'https://github.com/rom-rb/devtools.git'

group :test do
  gem 'bogus', '~> 0.1'
end

# added by devtools
eval_gemfile 'Gemfile.devtools'
