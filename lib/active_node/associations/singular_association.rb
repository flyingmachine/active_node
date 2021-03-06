module ActiveNode
  module Associations
    class SingularAssociation < Association #:nodoc:
      def load_target
        super.try :first
      end

      def target_each
        yield target
      end

      def ids_reader
        [target.try(:id)].compact
      end
    end
  end
end
