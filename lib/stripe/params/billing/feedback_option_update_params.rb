# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    class FeedbackOptionUpdateParams < ::Stripe::RequestParams
      # The text of the feedback option, which customers see when canceling. Maximum 100 characters.
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
