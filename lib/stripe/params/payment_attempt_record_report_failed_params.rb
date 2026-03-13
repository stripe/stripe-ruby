# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentAttemptRecordReportFailedParams < ::Stripe::RequestParams
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # When the reported payment failed. Measured in seconds since the Unix epoch.
    attr_accessor :failed_at
    # The failure code for this payment attempt. Must be one of `payment_method_customer_decline` or `payment_method_provider_unknown_outcome`.
    attr_accessor :failure_code
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    attr_accessor :metadata

    def initialize(expand: nil, failed_at: nil, failure_code: nil, metadata: nil)
      @expand = expand
      @failed_at = failed_at
      @failure_code = failure_code
      @metadata = metadata
    end
  end
end
