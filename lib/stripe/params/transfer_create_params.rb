# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class TransferCreateParams < ::Stripe::RequestParams
    # A positive integer in cents (or local equivalent) representing how much to transfer.
    attr_accessor :amount
    # Three-letter [ISO code for currency](https://www.iso.org/iso-4217-currency-codes.html) in lowercase. Must be a [supported currency](https://docs.stripe.com/currencies).
    attr_accessor :currency
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_accessor :description
    # The ID of a connected Stripe account. <a href="/docs/connect/separate-charges-and-transfers">See the Connect documentation</a> for details.
    attr_accessor :destination
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # The FX rate in the quote is validated and used to convert the transfer amount to the destination currency.
    attr_accessor :fx_quote
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    attr_accessor :metadata
    # You can use this parameter to transfer funds from a charge before they are added to your available balance. A pending balance will transfer immediately but the funds will not become available until the original charge becomes available. [See the Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers#transfer-availability) for details.
    attr_accessor :source_transaction
    # The source balance to use for this transfer. One of `bank_account`, `card`, or `fpx`. For most users, this will default to `card`.
    attr_accessor :source_type
    # A string that identifies this transaction as part of a group. See the [Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers#transfer-options) for details.
    attr_accessor :transfer_group
    # Attribute for param field application_fee_amount
    attr_accessor :application_fee_amount

    def initialize(
      amount: nil,
      currency: nil,
      description: nil,
      destination: nil,
      expand: nil,
      fx_quote: nil,
      metadata: nil,
      source_transaction: nil,
      source_type: nil,
      transfer_group: nil,
      application_fee_amount: nil
    )
      @amount = amount
      @currency = currency
      @description = description
      @destination = destination
      @expand = expand
      @fx_quote = fx_quote
      @metadata = metadata
      @source_transaction = source_transaction
      @source_type = source_type
      @transfer_group = transfer_group
      @application_fee_amount = application_fee_amount
    end
  end
end
