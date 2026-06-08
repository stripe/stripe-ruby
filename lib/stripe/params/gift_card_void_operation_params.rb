# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class GiftCardVoidOperationParams < ::Stripe::RequestParams
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # The Stripe account ID to process the gift card operation on behalf of.
    attr_accessor :on_behalf_of
    # The ID of the gift card operation to void.
    attr_accessor :operation

    def initialize(expand: nil, on_behalf_of: nil, operation: nil)
      @expand = expand
      @on_behalf_of = on_behalf_of
      @operation = operation
    end
  end
end
