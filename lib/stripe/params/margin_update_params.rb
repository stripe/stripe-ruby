# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class MarginUpdateParams < ::Stripe::RequestParams
    # Whether the margin can be applied to invoices, invoice items, or invoice line items or not.
    attr_accessor :active
    # Specifies which fields in the response should be expanded.
    attr_accessor :expand
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    attr_accessor :metadata
    # Name of the margin, which is displayed to customers, such as on invoices.
    attr_accessor :name

    def initialize(active: nil, expand: nil, metadata: nil, name: nil)
      @active = active
      @expand = expand
      @metadata = metadata
      @name = name
    end
  end
end
