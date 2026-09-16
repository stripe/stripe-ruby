# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    class FeedbackOptionCreateParams < ::Stripe::RequestParams
      # Attribute for param field description
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(description: nil, expand: nil)
        @description = description
        @expand = expand
      end
    end
  end
end
