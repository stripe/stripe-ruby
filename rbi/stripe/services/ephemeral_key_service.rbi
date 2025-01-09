# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class EphemeralKeyService < StripeService
    class DeleteParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      sig { params(expand: T::Array[String]).void }
      def initialize(expand: nil); end
    end
    class CreateParams < Stripe::RequestParams
      # The ID of the Customer you'd like to modify using the resulting ephemeral key.
      sig { returns(String) }
      attr_accessor :customer
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand
      # The ID of the Issuing Card you'd like to access using the resulting ephemeral key.
      sig { returns(String) }
      attr_accessor :issuing_card
      # A single-use token, created by Stripe.js, used for creating ephemeral keys for Issuing Cards without exchanging sensitive information.
      sig { returns(String) }
      attr_accessor :nonce
      # The ID of the Identity VerificationSession you'd like to access using the resulting ephemeral key
      sig { returns(String) }
      attr_accessor :verification_session
      sig {
        params(customer: String, expand: T::Array[String], issuing_card: String, nonce: String, verification_session: String).void
       }
      def initialize(
        customer: nil,
        expand: nil,
        issuing_card: nil,
        nonce: nil,
        verification_session: nil
      ); end
    end
    # Creates a short-lived API key for a given resource.
    sig {
      params(params: T.any(::Stripe::EphemeralKeyService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::EphemeralKey)
     }
    def create(params = {}, opts = {}); end

    # Invalidates a short-lived API key for a given resource.
    sig {
      params(key: String, params: T.any(::Stripe::EphemeralKeyService::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::EphemeralKey)
     }
    def delete(key, params = {}, opts = {}); end
  end
end