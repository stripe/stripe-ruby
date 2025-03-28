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
    class DeleteParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    # Invalidates a short-lived API key for a given resource.
    sig {
      params(key: String, params: T.any(::Stripe::EphemeralKey::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::EphemeralKey)
     }
    def self.delete(key, params = {}, opts = {}); end

    # Invalidates a short-lived API key for a given resource.
    sig {
      params(params: T.any(::Stripe::EphemeralKey::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::EphemeralKey)
     }
    def delete(params = {}, opts = {}); end
  end
end