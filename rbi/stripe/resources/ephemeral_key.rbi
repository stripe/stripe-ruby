# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class EphemeralKey < APIResource
    sig { returns(Integer) }
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    sig { returns(Integer) }
    # Time at which the key will expire. Measured in seconds since the Unix epoch.
    attr_reader :expires
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(String) }
    # The key's secret. You can use this value to make authorized requests to the Stripe API.
    attr_reader :secret
  end
end