# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class EphemeralKey < APIResource
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    def created; end
    # Time at which the key will expire. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    def expires; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
    sig { returns(T::Boolean) }
    def livemode; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # The key's secret. You can use this value to make authorized requests to the Stripe API.
    sig { returns(T.nilable(String)) }
    def secret; end
    # Invalidates a short-lived API key for a given resource.
    sig {
      params(key: String, params: T.any(::Stripe::EphemeralKeyDeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::EphemeralKey)
     }
    def self.delete(key, params = {}, opts = {}); end

    # Invalidates a short-lived API key for a given resource.
    sig {
      params(params: T.any(::Stripe::EphemeralKeyDeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::EphemeralKey)
     }
    def delete(params = {}, opts = {}); end
  end
end