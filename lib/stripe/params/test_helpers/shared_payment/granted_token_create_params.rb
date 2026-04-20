# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module TestHelpers
    module SharedPayment
      class GrantedTokenCreateParams < ::Stripe::RequestParams
        class UsageLimits < ::Stripe::RequestParams
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_accessor :currency
          # Time at which this SharedPaymentToken expires and can no longer be used to confirm a PaymentIntent.
          attr_accessor :expires_at
          # Max amount that can be captured using this SharedPaymentToken
          attr_accessor :max_amount

          def initialize(currency: nil, expires_at: nil, max_amount: nil)
            @currency = currency
            @expires_at = expires_at
            @max_amount = max_amount
          end
        end
        # The Customer that the SharedPaymentGrantedToken belongs to. Should match the Customer that the PaymentMethod is attached to if any.
        attr_accessor :customer
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # The PaymentMethod that is going to be shared by the SharedPaymentGrantedToken.
        attr_accessor :payment_method
        # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to the SharedPaymentGrantedToken.
        attr_accessor :shared_metadata
        # Limits on how this SharedPaymentGrantedToken can be used.
        attr_accessor :usage_limits

        def initialize(
          customer: nil,
          expand: nil,
          payment_method: nil,
          shared_metadata: nil,
          usage_limits: nil
        )
          @customer = customer
          @expand = expand
          @payment_method = payment_method
          @shared_metadata = shared_metadata
          @usage_limits = usage_limits
        end
      end
    end
  end
end
