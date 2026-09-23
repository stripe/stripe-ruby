# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Provisioning
      class PaymentProfileUpdateLimitParams < ::Stripe::RequestParams
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
        # Provider to update the usage limit for.
        attr_accessor :provider
        # New usage limit to apply.
        attr_accessor :usage_limits

        def initialize(livemode: nil, provider: nil, usage_limits: nil)
          @livemode = livemode
          @provider = provider
          @usage_limits = usage_limits
        end

        def self.field_encodings
          @field_encodings = { usage_limits: { kind: :object, fields: { max_amount: :int64_string } } }
        end
      end
    end
  end
end
