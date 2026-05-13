# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentRecordReportPaymentAttemptCanceledParams < ::Stripe::RequestParams
    # When the reported payment was canceled. Measured in seconds since the Unix epoch.
    attr_accessor :canceled_at
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    attr_accessor :metadata
    # Payment evaluations associated with this reported payment.
    attr_accessor :payment_evaluations

    def initialize(canceled_at: nil, expand: nil, metadata: nil, payment_evaluations: nil)
      @canceled_at = canceled_at
      @expand = expand
      @metadata = metadata
      @payment_evaluations = payment_evaluations
    end
  end
end
