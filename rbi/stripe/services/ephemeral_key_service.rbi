# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class EphemeralKeyService < StripeService
    class DeleteParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class CreateParams < Stripe::RequestParams
      # The ID of the Customer you'd like to modify using the resulting ephemeral key.
      sig { returns(T.nilable(String)) }
      def customer; end
      sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
      def customer=(_customer); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # The ID of the Issuing Card you'd like to access using the resulting ephemeral key.
      sig { returns(T.nilable(String)) }
      def issuing_card; end
      sig { params(_issuing_card: T.nilable(String)).returns(T.nilable(String)) }
      def issuing_card=(_issuing_card); end
      # A single-use token, created by Stripe.js, used for creating ephemeral keys for Issuing Cards without exchanging sensitive information.
      sig { returns(T.nilable(String)) }
      def nonce; end
      sig { params(_nonce: T.nilable(String)).returns(T.nilable(String)) }
      def nonce=(_nonce); end
      # The ID of the Identity VerificationSession you'd like to access using the resulting ephemeral key
      sig { returns(T.nilable(String)) }
      def verification_session; end
      sig { params(_verification_session: T.nilable(String)).returns(T.nilable(String)) }
      def verification_session=(_verification_session); end
      sig {
        params(customer: T.nilable(String), expand: T.nilable(T::Array[String]), issuing_card: T.nilable(String), nonce: T.nilable(String), verification_session: T.nilable(String)).void
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