# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class PaymentAttemptRecordListParams < Stripe::RequestParams
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    attr_accessor :limit
    # The ID of the Payment Record.
    attr_accessor :payment_record

    def initialize(expand: nil, limit: nil, payment_record: nil)
      @expand = expand
      @limit = limit
      @payment_record = payment_record
    end
  end
end
