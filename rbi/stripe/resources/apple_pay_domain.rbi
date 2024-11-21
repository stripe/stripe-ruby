# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # Domains registered for Apple Pay on the Web
  class ApplePayDomain < APIResource
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    attr_reader :created

    # Attribute for field domain_name
    sig { returns(String) }
    attr_reader :domain_name

    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode

    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object

    # Always true for a deleted object
    sig { returns(T::Boolean) }
    attr_reader :deleted
  end
end