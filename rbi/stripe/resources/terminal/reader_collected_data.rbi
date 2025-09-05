# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Terminal
    # Returns data collected by Terminal readers. This data is only stored for 24 hours.
    class ReaderCollectedData < APIResource
      class Magstripe < Stripe::StripeObject
        # The raw magstripe data collected by the reader.
        sig { returns(T.nilable(String)) }
        def data; end
      end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # The magstripe data collected by the reader.
      sig { returns(T.nilable(Magstripe)) }
      def magstripe; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The type of data collected by the reader.
      sig { returns(String) }
      def type; end
    end
  end
end