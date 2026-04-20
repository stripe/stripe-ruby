# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module SharedPayment
    class IssuedTokenCreateParams < ::Stripe::RequestParams
      class SellerDetails < ::Stripe::RequestParams
        # A unique id within a network that identifies a logical seller, usually this would be the unique merchant id.
        attr_accessor :external_id
        # A string that identifies the network that this SharedToken is being created for.
        attr_accessor :network_business_profile

        def initialize(external_id: nil, network_business_profile: nil)
          @external_id = external_id
          @network_business_profile = network_business_profile
        end
      end

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
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The PaymentMethod that is going to be shared by the SharedPaymentIssuedToken.
      attr_accessor :payment_method
      # If the customer does not exit their browser while authenticating, they will be redirected to this specified URL after completion.
      attr_accessor :return_url
      # Seller details of the SharedPaymentIssuedToken, including network_id and external_id.
      attr_accessor :seller_details
      # Indicates that you intend to save the PaymentMethod of this SharedPaymentToken to a customer later.
      attr_accessor :setup_future_usage
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to the SharedPaymentIssuedToken. The values here are visible by default with the party that you share this SharedPaymentIssuedToken with.
      attr_accessor :shared_metadata
      # Limits on how this SharedPaymentToken can be used.
      attr_accessor :usage_limits

      def initialize(
        expand: nil,
        payment_method: nil,
        return_url: nil,
        seller_details: nil,
        setup_future_usage: nil,
        shared_metadata: nil,
        usage_limits: nil
      )
        @expand = expand
        @payment_method = payment_method
        @return_url = return_url
        @seller_details = seller_details
        @setup_future_usage = setup_future_usage
        @shared_metadata = shared_metadata
        @usage_limits = usage_limits
      end
    end
  end
end
