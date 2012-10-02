module Session
  class State
    # An State that represents a loaded domain object.
    class Loaded < self

      # Returns whether wrapped domain object is dirty
      #
      # If no dump is provided as argument domain object will be dumped.
      #
      # @param [Object] dump the dump to indicate dirtiness against
      #
      # @return [true|false]
      #
      # @api private
      #
      def dirty?
        dump != mapper.dump(object)
      end

      # Invoke transition to forgotten object state
      #
      # @return [State::Forgotten]
      #
      # @api private
      #
      def forget
        Forgotten.new(mapping)
      end

      # Invoke transition to forgotten object state after deleting via mapper
      #
      # @return [State::Forgotten]
      #
      # @api private
      #
      def delete
        mapper.delete(key)

        forget
      end

      # Persist changes to wrapped domain object
      #
      # Noop when not dirty.
      #
      # @return [self]
      #
      # @api private
      #
      def persist
        return self unless dirty?
        new_dump = mapper.dump(object)
        new_key  = mapper.dump_key(object)

        mapper.update(key, new_dump, dump)

        Loaded.new(mapping)
      end

      # Insert domain object into identity map
      #
      # @param [Hash] identity_map
      #
      # @return [self]
      #
      # @api private
      #
      def update_identity(identity_map)
        identity_map[key]=object
        self
      end

      # Delete object from identity map
      #
      # @param [Hash] identity_map
      #
      # @return [self]
      #
      # @api private
      #
      def delete_identity(identity_map)
        identity_map.delete(key)
        self
      end

      # Insert object state into tracking
      #
      # @param [Tracker] tracker
      #
      # @return [self]
      #
      # @api private
      #
      def update_tracker(tracker)
        tracker.store(object, self)
        self
      end

    end
  end
end
