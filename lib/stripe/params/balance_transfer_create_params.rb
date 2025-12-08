# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class BalanceTransferCreateParams < ::Stripe::RequestParams
    class DestinationBalance < ::Stripe::RequestParams
      # Destination balance type to push funds into for the Balance Transfer.
      attr_accessor :type

      def initialize(type: nil)
        @type = type
      end
    end

    class SourceBalance < ::Stripe::RequestParams
      class AllocatedFunds < ::Stripe::RequestParams
        # The charge ID that the funds are originally sourced from. Required if `type` is `charge`.
        attr_accessor :charge
        # The type of object that the funds are originally sourced from. One of `charge`.
        attr_accessor :type

        def initialize(charge: nil, type: nil)
          @charge = charge
          @type = type
        end
      end
      # Attribute for param field allocated_funds
      attr_accessor :allocated_funds
      # Source balance type to pull funds from for the Balance Transfer.
      attr_accessor :type

      def initialize(allocated_funds: nil, type: nil)
        @allocated_funds = allocated_funds
        @type = type
      end
    end
    # A positive integer representing how much to transfer in the smallest currency unit.
    attr_accessor :amount
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_accessor :currency
    # The balance to which funds are transferred.
    attr_accessor :destination_balance
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    attr_accessor :metadata
    # The balance from which funds are transferred, including details specific to the balance you choose.
    attr_accessor :source_balance

    def initialize(
      amount: nil,
      currency: nil,
      destination_balance: nil,
      expand: nil,
      metadata: nil,
      source_balance: nil
    )
      @amount = amount
      @currency = currency
      @destination_balance = destination_balance
      @expand = expand
      @metadata = metadata
      @source_balance = source_balance
    end
  end
end
