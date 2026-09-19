# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Provisioning
      # A customer's payment method and its usage limits.
      class PaymentProfile < SingletonAPIResource
        OBJECT_NAME = "v2.provisioning.payment_profile"
        def self.object_name
          "v2.provisioning.payment_profile"
        end

        class Provider < ::Stripe::StripeObject
          class UsageLimits < ::Stripe::StripeObject
            # Three-letter ISO currency code for `max_amount`.
            attr_reader :currency
            # Maximum amount that can be charged per recurring interval.
            attr_reader :max_amount
            # Interval over which `max_amount` applies.
            attr_reader :recurring_interval

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end

            def self.field_encodings
              @field_encodings = { max_amount: :int64_string }
            end
          end
          # Provider the payment method is shared with.
          attr_reader :provider
          # Usage limit applied to the payment method for this provider.
          attr_reader :usage_limits

          def self.inner_class_types
            @inner_class_types = { usage_limits: UsageLimits }
          end

          def self.field_remappings
            @field_remappings = {}
          end

          def self.field_encodings
            @field_encodings = { usage_limits: { kind: :object, fields: { max_amount: :int64_string } } }
          end
        end

        class UsageLimits < ::Stripe::StripeObject
          # Three-letter ISO currency code for `max_amount`.
          attr_reader :currency
          # Maximum amount that can be charged per recurring interval.
          attr_reader :max_amount
          # Interval over which `max_amount` applies.
          attr_reader :recurring_interval

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end

          def self.field_encodings
            @field_encodings = { max_amount: :int64_string }
          end
        end
        # Last 4 digits of the card on the payment method.
        attr_reader :card_last4
        # Whether the payment method is in live mode.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Owner of the payment method.
        attr_reader :payment_method_owner
        # Providers the payment method is shared with, and their usage limits.
        attr_reader :providers
        # Deprecated: use providers instead.
        attr_reader :shared_with_providers
        # Usage limit applied to the payment method.
        attr_reader :usage_limits

        def self.inner_class_types
          @inner_class_types = { providers: Provider, usage_limits: UsageLimits }
        end

        def self.field_remappings
          @field_remappings = {}
        end

        def self.field_encodings
          @field_encodings = {
            providers: {
              kind: :array,
              element: {
                kind: :object,
                fields: { usage_limits: { kind: :object, fields: { max_amount: :int64_string } } },
              },
            },
            usage_limits: { kind: :object, fields: { max_amount: :int64_string } },
          }
        end
      end
    end
  end
end
