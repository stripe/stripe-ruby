# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentIntentCaptureParams < Stripe::RequestParams
    class TransferData < Stripe::RequestParams
      # The amount that will be transferred automatically when a charge succeeds.
      attr_accessor :amount

      def initialize(amount: nil)
        @amount = amount
      end
    end
    # The amount to capture from the PaymentIntent, which must be less than or equal to the original amount. Defaults to the full `amount_capturable` if it's not provided.
    attr_accessor :amount_to_capture
    # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total amount captured. For more information, see the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
    attr_accessor :application_fee_amount
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # Defaults to `true`. When capturing a PaymentIntent, setting `final_capture` to `false` notifies Stripe to not release the remaining uncaptured funds to make sure that they're captured in future requests. You can only use this setting when [multicapture](https://stripe.com/docs/payments/multicapture) is available for PaymentIntents.
    attr_accessor :final_capture
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    attr_accessor :metadata
    # Text that appears on the customer's statement as the statement descriptor for a non-card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
    #
    # Setting this value for a card charge returns an error. For card charges, set the [statement_descriptor_suffix](https://docs.stripe.com/get-started/account/statement-descriptors#dynamic) instead.
    attr_accessor :statement_descriptor
    # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement.
    attr_accessor :statement_descriptor_suffix
    # The parameters that you can use to automatically create a transfer after the payment
    # is captured. Learn more about the [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
    attr_accessor :transfer_data

    def initialize(
      amount_to_capture: nil,
      application_fee_amount: nil,
      expand: nil,
      final_capture: nil,
      metadata: nil,
      statement_descriptor: nil,
      statement_descriptor_suffix: nil,
      transfer_data: nil
    )
      @amount_to_capture = amount_to_capture
      @application_fee_amount = application_fee_amount
      @expand = expand
      @final_capture = final_capture
      @metadata = metadata
      @statement_descriptor = statement_descriptor
      @statement_descriptor_suffix = statement_descriptor_suffix
      @transfer_data = transfer_data
    end
  end
end
