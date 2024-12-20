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
        attr_reader :data
      end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # The magstripe data collected by the reader.
      sig { returns(T.nilable(Magstripe)) }
      attr_reader :magstripe

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # The type of data collected by the reader.
      sig { returns(String) }
      attr_reader :type

      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand

        sig { params(expand: T::Array[String]).void }
        def initialize(expand: nil); end
      end
    end
  end
end