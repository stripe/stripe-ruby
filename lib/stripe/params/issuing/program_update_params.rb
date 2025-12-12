# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    class ProgramUpdateParams < ::Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # If true, makes the specified program the default.
      attr_accessor :is_default
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata

      def initialize(expand: nil, is_default: nil, metadata: nil)
        @expand = expand
        @is_default = is_default
        @metadata = metadata
      end
    end
  end
end
