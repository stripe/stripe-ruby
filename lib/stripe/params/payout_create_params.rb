# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PayoutCreateParams < ::Stripe::RequestParams
    class PayoutMethodOptions < ::Stripe::RequestParams
      class FinancialAccount < ::Stripe::RequestParams
        # Identifies the currency to credit in the destination Financial Account. Must be a currency supported by the target Financial Account. When omitted, the payout uses the currency parameter.
        attr_accessor :destination_currency

        def initialize(destination_currency: nil)
          @destination_currency = destination_currency
        end
      end
      # Additional options for a Financial Account payout method. Only valid when payout_method is a Financial Account ID.
      attr_accessor :financial_account

      def initialize(financial_account: nil)
        @financial_account = financial_account
      end
    end
    # A positive integer in cents representing how much to payout.
    attr_accessor :amount
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_accessor :currency
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_accessor :description
    # The ID of a bank account or a card to send the payout to. If you don't provide a destination, we use the default external account for the specified currency.
    attr_accessor :destination
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    attr_accessor :metadata
    # The method used to send this payout, which is `standard` or `instant`. We support `instant` for payouts to debit cards and bank accounts in certain countries. Learn more about [bank support for Instant Payouts](https://stripe.com/docs/payouts/instant-payouts-banks).
    attr_accessor :method
    # The ID of a v2 FinancialAccount to send funds to.
    attr_accessor :payout_method
    # Additional options that complement the payout_method. The keys in this dictionary identify the type of payout method the options apply to.
    attr_accessor :payout_method_options
    # The balance type of your Stripe balance to draw this payout from. Balances for different payment sources are kept separately. You can find the amounts with the Balances API. One of `bank_account`, `card`, or `fpx`.
    attr_accessor :source_type
    # A string that displays on the recipient's bank or card statement (up to 22 characters). A `statement_descriptor` that's longer than 22 characters return an error. Most banks truncate this information and display it inconsistently. Some banks might not display it at all. For US ACH payouts, this maps to the ACH Company Entry Description field, which the NACHA standard limits to 10 characters. Stripe truncates descriptors longer than 10 characters for US ACH payouts.
    attr_accessor :statement_descriptor

    def initialize(
      amount: nil,
      currency: nil,
      description: nil,
      destination: nil,
      expand: nil,
      metadata: nil,
      method: nil,
      payout_method: nil,
      payout_method_options: nil,
      source_type: nil,
      statement_descriptor: nil
    )
      @amount = amount
      @currency = currency
      @description = description
      @destination = destination
      @expand = expand
      @metadata = metadata
      @method = method
      @payout_method = payout_method
      @payout_method_options = payout_method_options
      @source_type = source_type
      @statement_descriptor = statement_descriptor
    end
  end
end
