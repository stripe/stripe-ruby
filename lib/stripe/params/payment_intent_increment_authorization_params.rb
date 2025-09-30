# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentIntentIncrementAuthorizationParams < Stripe::RequestParams
    class TransferData < Stripe::RequestParams
      # The amount that will be transferred automatically when a charge succeeds.
      attr_accessor :amount

      def initialize(amount: nil)
        @amount = amount
      end
    end
    # The updated total amount that you intend to collect from the cardholder. This amount must be greater than the currently authorized amount.
    attr_accessor :amount
    # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total amount captured. For more information, see the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
    attr_accessor :application_fee_amount
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_accessor :description
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    attr_accessor :metadata
    # Text that appears on the customer's statement as the statement descriptor for a non-card or card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
    attr_accessor :statement_descriptor
    # The parameters used to automatically create a transfer after the payment is captured.
    # Learn more about the [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
    attr_accessor :transfer_data

    def initialize(
      amount: nil,
      application_fee_amount: nil,
      description: nil,
      expand: nil,
      metadata: nil,
      statement_descriptor: nil,
      transfer_data: nil
    )
      @amount = amount
      @application_fee_amount = application_fee_amount
      @description = description
      @expand = expand
      @metadata = metadata
      @statement_descriptor = statement_descriptor
      @transfer_data = transfer_data
    end
  end
end
