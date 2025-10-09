# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class FxQuoteCreateParams < ::Stripe::RequestParams
    class Usage < ::Stripe::RequestParams
      class Payment < ::Stripe::RequestParams
        # The Stripe account ID that the funds will be transferred to.
        #
        # This field should match the account ID that would be used in the PaymentIntent’s transfer_data[destination] field.
        attr_accessor :destination
        # The Stripe account ID that these funds are intended for.
        #
        # This field should match the account ID that would be used in the PaymentIntent’s on_behalf_of field.
        attr_accessor :on_behalf_of

        def initialize(destination: nil, on_behalf_of: nil)
          @destination = destination
          @on_behalf_of = on_behalf_of
        end
      end

      class Transfer < ::Stripe::RequestParams
        # The Stripe account ID that the funds will be transferred to.
        #
        # This field should match the account ID that would be used in the Transfer’s destination field.
        attr_accessor :destination

        def initialize(destination: nil)
          @destination = destination
        end
      end
      # The payment transaction details that are intended for the FX Quote.
      attr_accessor :payment
      # The transfer transaction details that are intended for the FX Quote.
      attr_accessor :transfer
      # Which transaction the FX Quote will be used for
      #
      # Can be “payment” | “transfer”
      attr_accessor :type

      def initialize(payment: nil, transfer: nil, type: nil)
        @payment = payment
        @transfer = transfer
        @type = type
      end
    end
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # A list of three letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be [supported currencies](https://stripe.com/docs/currencies).
    attr_accessor :from_currencies
    # The duration that you wish the quote to be locked for. The quote will be usable for the duration specified. The default is `none`. The maximum is 1 day.
    attr_accessor :lock_duration
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_accessor :to_currency
    # The usage specific information for the quote.
    attr_accessor :usage

    def initialize(
      expand: nil,
      from_currencies: nil,
      lock_duration: nil,
      to_currency: nil,
      usage: nil
    )
      @expand = expand
      @from_currencies = from_currencies
      @lock_duration = lock_duration
      @to_currency = to_currency
      @usage = usage
    end
  end
end
