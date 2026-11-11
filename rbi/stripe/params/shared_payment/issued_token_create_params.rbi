# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module SharedPayment
    class IssuedTokenCreateParams < ::Stripe::RequestParams
      class ReferralFeeDetails < ::Stripe::RequestParams
        # The Customer to be invoiced for fees assessed.
        sig { returns(T.nilable(String)) }
        def customer; end
        sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
        def customer=(_customer); end
        # The account with a Customer configuration to be invoiced for fees assessed.
        sig { returns(T.nilable(String)) }
        def customer_account; end
        sig { params(_customer_account: T.nilable(String)).returns(T.nilable(String)) }
        def customer_account=(_customer_account); end
        # The percentage of the payment to charge as a referral fee, from 0 through 50 with at most two decimal places.
        sig { returns(Float) }
        def referral_fee_percent; end
        sig { params(_referral_fee_percent: Float).returns(Float) }
        def referral_fee_percent=(_referral_fee_percent); end
        sig {
          params(customer: T.nilable(String), customer_account: T.nilable(String), referral_fee_percent: Float).void
         }
        def initialize(customer: nil, customer_account: nil, referral_fee_percent: nil); end
      end
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
        class Recurring < ::Stripe::RequestParams
          # The interval at which the shared payment token's amount usage restrictions reset.
          sig { returns(String) }
          def interval; end
          sig { params(_interval: String).returns(String) }
          def interval=(_interval); end
          # The number of intervals between each reset. Defaults to 1.
          sig { returns(T.nilable(Integer)) }
          def interval_count; end
          sig { params(_interval_count: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def interval_count=(_interval_count); end
          sig { params(interval: String, interval_count: T.nilable(Integer)).void }
          def initialize(interval: nil, interval_count: nil); end
        end
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
        # The recurring schedule for the shared payment token's amount usage restrictions.
        sig {
          returns(T.nilable(::Stripe::SharedPayment::IssuedTokenCreateParams::UsageLimits::Recurring))
         }
        def recurring; end
        sig {
          params(_recurring: T.nilable(::Stripe::SharedPayment::IssuedTokenCreateParams::UsageLimits::Recurring)).returns(T.nilable(::Stripe::SharedPayment::IssuedTokenCreateParams::UsageLimits::Recurring))
         }
        def recurring=(_recurring); end
        # The recurring interval at which the shared payment token's amount usage restrictions reset.
        sig { returns(T.nilable(String)) }
        def recurring_interval; end
        sig { params(_recurring_interval: T.nilable(String)).returns(T.nilable(String)) }
        def recurring_interval=(_recurring_interval); end
        sig {
          params(currency: String, expires_at: T.nilable(Integer), max_amount: Integer, recurring: T.nilable(::Stripe::SharedPayment::IssuedTokenCreateParams::UsageLimits::Recurring), recurring_interval: T.nilable(String)).void
         }
        def initialize(
          currency: nil,
          expires_at: nil,
          max_amount: nil,
          recurring: nil,
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
      # Referral fee details for this SharedPaymentToken.
      sig {
        returns(T.nilable(::Stripe::SharedPayment::IssuedTokenCreateParams::ReferralFeeDetails))
       }
      def referral_fee_details; end
      sig {
        params(_referral_fee_details: T.nilable(::Stripe::SharedPayment::IssuedTokenCreateParams::ReferralFeeDetails)).returns(T.nilable(::Stripe::SharedPayment::IssuedTokenCreateParams::ReferralFeeDetails))
       }
      def referral_fee_details=(_referral_fee_details); end
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
      # Set to true when using Stripe.js, iOS, or Android client-side SDKs to handle next actions.
      sig { returns(T.nilable(T::Boolean)) }
      def use_stripe_sdk; end
      sig { params(_use_stripe_sdk: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def use_stripe_sdk=(_use_stripe_sdk); end
      sig {
        params(expand: T.nilable(T::Array[String]), payment_method: String, referral_fee_details: T.nilable(::Stripe::SharedPayment::IssuedTokenCreateParams::ReferralFeeDetails), return_url: T.nilable(String), seller_details: ::Stripe::SharedPayment::IssuedTokenCreateParams::SellerDetails, setup_future_usage: T.nilable(String), shared_metadata: T.nilable(T::Hash[String, String]), usage_limits: ::Stripe::SharedPayment::IssuedTokenCreateParams::UsageLimits, use_stripe_sdk: T.nilable(T::Boolean)).void
       }
      def initialize(
        expand: nil,
        payment_method: nil,
        referral_fee_details: nil,
        return_url: nil,
        seller_details: nil,
        setup_future_usage: nil,
        shared_metadata: nil,
        usage_limits: nil,
        use_stripe_sdk: nil
      ); end
    end
  end
end