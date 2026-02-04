# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module TestHelpers
    module SharedPayment
      class GrantedTokenCreateParams < ::Stripe::RequestParams
        class UsageLimits < ::Stripe::RequestParams
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          def currency; end
          sig { params(_currency: String).returns(String) }
          def currency=(_currency); end
          # Time at which this SharedPaymentToken expires and can no longer be used to confirm a PaymentIntent.
          sig { returns(Integer) }
          def expires_at; end
          sig { params(_expires_at: Integer).returns(Integer) }
          def expires_at=(_expires_at); end
          # Max amount that can be captured using this SharedPaymentToken
          sig { returns(Integer) }
          def max_amount; end
          sig { params(_max_amount: Integer).returns(Integer) }
          def max_amount=(_max_amount); end
          sig { params(currency: String, expires_at: Integer, max_amount: Integer).void }
          def initialize(currency: nil, expires_at: nil, max_amount: nil); end
        end
        # The Customer that the SharedPaymentGrantedToken belongs to. Should match the Customer that the PaymentMethod is attached to if any.
        sig { returns(T.nilable(String)) }
        def customer; end
        sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
        def customer=(_customer); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # The PaymentMethod that is going to be shared by the SharedPaymentGrantedToken.
        sig { returns(String) }
        def payment_method; end
        sig { params(_payment_method: String).returns(String) }
        def payment_method=(_payment_method); end
        # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to the SharedPaymentGrantedToken.
        sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
        def shared_metadata; end
        sig {
          params(_shared_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
         }
        def shared_metadata=(_shared_metadata); end
        # Limits on how this SharedPaymentGrantedToken can be used.
        sig { returns(::Stripe::TestHelpers::SharedPayment::GrantedTokenCreateParams::UsageLimits) }
        def usage_limits; end
        sig {
          params(_usage_limits: ::Stripe::TestHelpers::SharedPayment::GrantedTokenCreateParams::UsageLimits).returns(::Stripe::TestHelpers::SharedPayment::GrantedTokenCreateParams::UsageLimits)
         }
        def usage_limits=(_usage_limits); end
        sig {
          params(customer: T.nilable(String), expand: T.nilable(T::Array[String]), payment_method: String, shared_metadata: T.nilable(T.any(String, T::Hash[String, String])), usage_limits: ::Stripe::TestHelpers::SharedPayment::GrantedTokenCreateParams::UsageLimits).void
         }
        def initialize(
          customer: nil,
          expand: nil,
          payment_method: nil,
          shared_metadata: nil,
          usage_limits: nil
        ); end
      end
    end
  end
end