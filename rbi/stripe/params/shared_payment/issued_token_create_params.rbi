# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module SharedPayment
    class IssuedTokenCreateParams < ::Stripe::RequestParams
      class SellerDetails < ::Stripe::RequestParams
        # A unique id within a network that identifies a logical seller, usually this would be the unique merchant id.
        sig { returns(T.nilable(String)) }
        def external_id; end
        sig { params(_external_id: T.nilable(String)).returns(T.nilable(String)) }
        def external_id=(_external_id); end
        # A string that identifies the network that this SharedToken is being created for.
        sig { returns(T.nilable(String)) }
        def network_business_profile; end
        sig { params(_network_business_profile: T.nilable(String)).returns(T.nilable(String)) }
        def network_business_profile=(_network_business_profile); end
        sig {
          params(external_id: T.nilable(String), network_business_profile: T.nilable(String)).void
         }
        def initialize(external_id: nil, network_business_profile: nil); end
      end
      class UsageLimits < ::Stripe::RequestParams
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        def currency; end
        sig { params(_currency: String).returns(String) }
        def currency=(_currency); end
        # Time at which this SharedPaymentToken expires and can no longer be used to confirm a PaymentIntent.
        sig { returns(T.nilable(Integer)) }
        def expires_at; end
        sig { params(_expires_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def expires_at=(_expires_at); end
        # Max amount that can be captured using this SharedPaymentToken
        sig { returns(Integer) }
        def max_amount; end
        sig { params(_max_amount: Integer).returns(Integer) }
        def max_amount=(_max_amount); end
        # The recurring interval at which the shared payment token's amount usage restrictions reset.
        sig { returns(T.nilable(String)) }
        def recurring_interval; end
        sig { params(_recurring_interval: T.nilable(String)).returns(T.nilable(String)) }
        def recurring_interval=(_recurring_interval); end
        sig {
          params(currency: String, expires_at: T.nilable(Integer), max_amount: Integer, recurring_interval: T.nilable(String)).void
         }
        def initialize(
          currency: nil,
          expires_at: nil,
          max_amount: nil,
          recurring_interval: nil
        ); end
      end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # The PaymentMethod that is going to be shared by the SharedPaymentIssuedToken.
      sig { returns(String) }
      def payment_method; end
      sig { params(_payment_method: String).returns(String) }
      def payment_method=(_payment_method); end
      # If the customer does not exit their browser while authenticating, they will be redirected to this specified URL after completion.
      sig { returns(T.nilable(String)) }
      def return_url; end
      sig { params(_return_url: T.nilable(String)).returns(T.nilable(String)) }
      def return_url=(_return_url); end
      # Seller details of the SharedPaymentIssuedToken, including network_id and external_id.
      sig { returns(::Stripe::SharedPayment::IssuedTokenCreateParams::SellerDetails) }
      def seller_details; end
      sig {
        params(_seller_details: ::Stripe::SharedPayment::IssuedTokenCreateParams::SellerDetails).returns(::Stripe::SharedPayment::IssuedTokenCreateParams::SellerDetails)
       }
      def seller_details=(_seller_details); end
      # Indicates that you intend to save the PaymentMethod of this SharedPaymentToken to a customer later.
      sig { returns(T.nilable(String)) }
      def setup_future_usage; end
      sig { params(_setup_future_usage: T.nilable(String)).returns(T.nilable(String)) }
      def setup_future_usage=(_setup_future_usage); end
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to the SharedPaymentIssuedToken. The values here are visible by default with the party that you share this SharedPaymentIssuedToken with.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def shared_metadata; end
      sig {
        params(_shared_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
       }
      def shared_metadata=(_shared_metadata); end
      # Limits on how this SharedPaymentToken can be used.
      sig { returns(::Stripe::SharedPayment::IssuedTokenCreateParams::UsageLimits) }
      def usage_limits; end
      sig {
        params(_usage_limits: ::Stripe::SharedPayment::IssuedTokenCreateParams::UsageLimits).returns(::Stripe::SharedPayment::IssuedTokenCreateParams::UsageLimits)
       }
      def usage_limits=(_usage_limits); end
      sig {
        params(expand: T.nilable(T::Array[String]), payment_method: String, return_url: T.nilable(String), seller_details: ::Stripe::SharedPayment::IssuedTokenCreateParams::SellerDetails, setup_future_usage: T.nilable(String), shared_metadata: T.nilable(T::Hash[String, String]), usage_limits: ::Stripe::SharedPayment::IssuedTokenCreateParams::UsageLimits).void
       }
      def initialize(
        expand: nil,
        payment_method: nil,
        return_url: nil,
        seller_details: nil,
        setup_future_usage: nil,
        shared_metadata: nil,
        usage_limits: nil
      ); end
    end
  end
end