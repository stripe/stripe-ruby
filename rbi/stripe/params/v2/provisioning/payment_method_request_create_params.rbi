# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Provisioning
      class PaymentMethodRequestCreateParams < ::Stripe::RequestParams
        class UsageLimits < ::Stripe::RequestParams
          # Three-letter ISO currency code for `max_amount`.
          sig { returns(String) }
          def currency; end
          sig { params(_currency: String).returns(String) }
          def currency=(_currency); end
          # Maximum amount that can be charged per recurring interval.
          sig { returns(Integer) }
          def max_amount; end
          sig { params(_max_amount: Integer).returns(Integer) }
          def max_amount=(_max_amount); end
          # Interval over which `max_amount` applies.
          sig { returns(String) }
          def recurring_interval; end
          sig { params(_recurring_interval: String).returns(String) }
          def recurring_interval=(_recurring_interval); end
          sig { params(currency: String, max_amount: Integer, recurring_interval: String).void }
          def initialize(currency: nil, max_amount: nil, recurring_interval: nil); end
          def self.field_encodings
            @field_encodings = {max_amount: :int64_string}
          end
        end
        # Whether the billing operation should use Stripe live-mode objects. When omitted, this
        # resolves from the authenticated request context.
        sig { returns(T.nilable(T::Boolean)) }
        def livemode; end
        sig { params(_livemode: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def livemode=(_livemode); end
        # Owner of the requested payment method.
        sig { returns(T.nilable(String)) }
        def payment_method_owner; end
        sig { params(_payment_method_owner: T.nilable(String)).returns(T.nilable(String)) }
        def payment_method_owner=(_payment_method_owner); end
        # Connected account to source the payment method from.
        sig { returns(T.nilable(String)) }
        def source_account; end
        sig { params(_source_account: T.nilable(String)).returns(T.nilable(String)) }
        def source_account=(_source_account); end
        # Customer to source the payment method from.
        sig { returns(T.nilable(String)) }
        def source_customer; end
        sig { params(_source_customer: T.nilable(String)).returns(T.nilable(String)) }
        def source_customer=(_source_customer); end
        # Existing payment method to reuse instead of collecting a new one.
        sig { returns(T.nilable(String)) }
        def source_payment_method; end
        sig { params(_source_payment_method: T.nilable(String)).returns(T.nilable(String)) }
        def source_payment_method=(_source_payment_method); end
        # Usage limit to apply to the requested payment method.
        sig {
          returns(T.nilable(::Stripe::V2::Provisioning::PaymentMethodRequestCreateParams::UsageLimits))
         }
        def usage_limits; end
        sig {
          params(_usage_limits: T.nilable(::Stripe::V2::Provisioning::PaymentMethodRequestCreateParams::UsageLimits)).returns(T.nilable(::Stripe::V2::Provisioning::PaymentMethodRequestCreateParams::UsageLimits))
         }
        def usage_limits=(_usage_limits); end
        sig {
          params(livemode: T.nilable(T::Boolean), payment_method_owner: T.nilable(String), source_account: T.nilable(String), source_customer: T.nilable(String), source_payment_method: T.nilable(String), usage_limits: T.nilable(::Stripe::V2::Provisioning::PaymentMethodRequestCreateParams::UsageLimits)).void
         }
        def initialize(
          livemode: nil,
          payment_method_owner: nil,
          source_account: nil,
          source_customer: nil,
          source_payment_method: nil,
          usage_limits: nil
        ); end
        def self.field_encodings
          @field_encodings = {usage_limits: {kind: :object, fields: {max_amount: :int64_string}}}
        end
      end
    end
  end
end