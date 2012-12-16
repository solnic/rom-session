require 'spec_helper'

DM_ENV = DataMapper::Environment.new

require 'data_mapper/engine/arel'
require 'virtus'

require 'db_setup'

RSpec.configure do |config|
  config.after(:all) do
  end

  config.before do
    DM_ENV.finalize
  end
end

include DataMapper
