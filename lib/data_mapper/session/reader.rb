module DataMapper
  class Session

    # A class to read objects via identity map
    module Reader

      # Return mapper
      #
      # @return [Session]
      #
      # @api private
      #
      attr_reader :session

      # @api private
      def self.build(session, mapper)
        klass = mapper.class.clone
        klass.send(:include, self)
        klass.new(session, mapper.relation)
      end

      # Initialize object
      #
      # @param [Session] session
      # @param [Mapper] mapper
      #
      # @return [undefined]
      #
      def initialize(session, *args)
        super(*args)
        @session = session
      end

      # Load object
      #
      # @param [Object] tuple
      #
      # @return [Object]
      #
      # @api private
      #
      def load(tuple)
        session.load(self, tuple)
      end

    end
  end
end
