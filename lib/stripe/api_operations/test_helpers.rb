# frozen_string_literal: true

module Stripe
  module APIOperations
    module TestHelpers
      # Adds method to retrieve the test helpers class from a resource instance.
      def test_helpers
        self.class::TestHelpers.new(id, @opts)
      end
    end
  end
end
