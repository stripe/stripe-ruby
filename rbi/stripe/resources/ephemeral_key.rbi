# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class EphemeralKey < APIResource
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created

    # Time at which the key will expire. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :expires

    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode

    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object

    # The key's secret. You can use this value to make authorized requests to the Stripe API.
    sig { returns(String) }
    attr_reader :secret
  end
end