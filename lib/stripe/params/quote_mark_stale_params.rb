# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class QuoteMarkStaleParams < Stripe::RequestParams
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # Reason the Quote is being marked stale.
    attr_accessor :reason

    def initialize(expand: nil, reason: nil)
      @expand = expand
      @reason = reason
    end
  end
end
