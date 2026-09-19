# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Provisioning
      # A customer's payment method and its usage limits.
      class PaymentProfile < SingletonAPIResource
        class Provider < ::Stripe::StripeObject
          class UsageLimits < ::Stripe::StripeObject
            # Three-letter ISO currency code for `max_amount`.
            sig { returns(String) }
            def currency; end
            # Maximum amount that can be charged per recurring interval.
            sig { returns(Integer) }
            def max_amount; end
            # Interval over which `max_amount` applies.
            sig { returns(String) }
            def recurring_interval; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
            def self.field_encodings
              @field_encodings = {max_amount: :int64_string}
            end
          end
          # Provider the payment method is shared with.
          sig { returns(String) }
          def provider; end
          # Usage limit applied to the payment method for this provider.
          sig { returns(T.nilable(UsageLimits)) }
          def usage_limits; end
          def self.inner_class_types
            @inner_class_types = {usage_limits: UsageLimits}
          end
          def self.field_remappings
            @field_remappings = {}
          end
          def self.field_encodings
            @field_encodings = {usage_limits: {kind: :object, fields: {max_amount: :int64_string}}}
          end
        end
        class UsageLimits < ::Stripe::StripeObject
          # Three-letter ISO currency code for `max_amount`.
          sig { returns(String) }
          def currency; end
          # Maximum amount that can be charged per recurring interval.
          sig { returns(Integer) }
          def max_amount; end
          # Interval over which `max_amount` applies.
          sig { returns(String) }
          def recurring_interval; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
          def self.field_encodings
            @field_encodings = {max_amount: :int64_string}
          end
        end
        # Last 4 digits of the card on the payment method.
        sig { returns(String) }
        def card_last4; end
        # Whether the payment method is in live mode.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Owner of the payment method.
        sig { returns(T.nilable(String)) }
        def payment_method_owner; end
        # Providers the payment method is shared with, and their usage limits.
        sig { returns(T::Array[Provider]) }
        def providers; end
        # Deprecated: use providers instead.
        sig { returns(T::Array[String]) }
        def shared_with_providers; end
        # Usage limit applied to the payment method.
        sig { returns(T.nilable(UsageLimits)) }
        def usage_limits; end
      end
    end
  end
end