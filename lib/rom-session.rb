require 'backports'
require 'adamantium'
require 'equalizer'
require 'abstract_type'
require 'concord'

# Namespace module
module Rom
  class Session

    # Error raised on illegal state
    class StateError < RuntimeError; end

    # Error raised when session misses a mapper
    class MissingMapperError < RuntimeError; end
  end
end

require 'rom/session'
require 'rom/session/reader'
require 'rom/session/state'
require 'rom/session/operand'
require 'rom/session/registry'