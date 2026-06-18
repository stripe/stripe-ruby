# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentAttemptRecordReportEarlyFraudWarningParams < ::Stripe::RequestParams
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # The type of fraud reported in the early fraud warning.
    attr_accessor :fraud_type
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    attr_accessor :metadata
    # The time at which the early fraud warning was received.
    attr_accessor :occurred_at

    def initialize(expand: nil, fraud_type: nil, metadata: nil, occurred_at: nil)
      @expand = expand
      @fraud_type = fraud_type
      @metadata = metadata
      @occurred_at = occurred_at
    end
  end
end
