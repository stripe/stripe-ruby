# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Provisioning
      class PaymentMethodRequestCreateParams < ::Stripe::RequestParams
        class UsageLimits < ::Stripe::RequestParams
          # Three-letter ISO currency code for `max_amount`.
          attr_accessor :currency
          # Maximum amount that can be charged per recurring interval.
          attr_accessor :max_amount
          # Interval over which `max_amount` applies.
          attr_accessor :recurring_interval

          def initialize(currency: nil, max_amount: nil, recurring_interval: nil)
            @currency = currency
            @max_amount = max_amount
            @recurring_interval = recurring_interval
          end

          def self.field_encodings
            @field_encodings = { max_amount: :int64_string }
          end
        end
        # Whether the billing operation should use Stripe live-mode objects. When omitted, this
        # resolves from the authenticated request context.
        attr_accessor :livemode
        # Owner of the requested payment method.
        attr_accessor :payment_method_owner
        # Connected account to source the payment method from.
        attr_accessor :source_account
        # Customer to source the payment method from.
        attr_accessor :source_customer
        # Existing payment method to reuse instead of collecting a new one.
        attr_accessor :source_payment_method
        # Usage limit to apply to the requested payment method.
        attr_accessor :usage_limits

        def initialize(
          livemode: nil,
          payment_method_owner: nil,
          source_account: nil,
          source_customer: nil,
          source_payment_method: nil,
          usage_limits: nil
        )
          @livemode = livemode
          @payment_method_owner = payment_method_owner
          @source_account = source_account
          @source_customer = source_customer
          @source_payment_method = source_payment_method
          @usage_limits = usage_limits
        end

        def self.field_encodings
          @field_encodings = { usage_limits: { kind: :object, fields: { max_amount: :int64_string } } }
        end
      end
    end
  end
end
