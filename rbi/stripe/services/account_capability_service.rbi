# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class AccountCapabilityService < StripeService
    class ListParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # To request a new capability for an account, pass true. There can be a delay before the requested capability becomes active. If the capability has any activation requirements, the response includes them in the `requirements` arrays.
      #
      # If a capability isn't permanent, you can remove it from the account by passing false. Some capabilities are permanent after they've been requested. Attempting to remove a permanent capability returns an error.
      sig { returns(T.nilable(T::Boolean)) }
      def requested; end
      sig { params(_requested: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def requested=(_requested); end
      sig { params(expand: T.nilable(T::Array[String]), requested: T.nilable(T::Boolean)).void }
      def initialize(expand: nil, requested: nil); end
    end
    # Returns a list of capabilities associated with the account. The capabilities are returned sorted by creation date, with the most recent capability appearing first.
    sig {
      params(account: String, params: T.any(::Stripe::AccountCapabilityService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(account, params = {}, opts = {}); end

    # Retrieves information about the specified Account Capability.
    sig {
      params(account: String, capability: String, params: T.any(::Stripe::AccountCapabilityService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Capability)
     }
    def retrieve(account, capability, params = {}, opts = {}); end

    # Updates an existing Account Capability. Request or remove a capability by updating its requested parameter.
    sig {
      params(account: String, capability: String, params: T.any(::Stripe::AccountCapabilityService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Capability)
     }
    def update(account, capability, params = {}, opts = {}); end
  end
end