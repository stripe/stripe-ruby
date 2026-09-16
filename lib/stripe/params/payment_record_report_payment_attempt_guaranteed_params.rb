# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentRecordReportPaymentAttemptGuaranteedParams < ::Stripe::RequestParams
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # When the reported payment was guaranteed. Measured in seconds since the Unix epoch.
    attr_accessor :guaranteed_at
    # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    attr_accessor :metadata

    def initialize(expand: nil, guaranteed_at: nil, metadata: nil)
      @expand = expand
      @guaranteed_at = guaranteed_at
      @metadata = metadata
    end
  end
end
