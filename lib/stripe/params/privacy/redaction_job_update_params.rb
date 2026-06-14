# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Privacy
    class RedactionJobUpdateParams < ::Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Determines the validation behavior of the job. Default is `error`.
      attr_accessor :validation_behavior

      def initialize(expand: nil, validation_behavior: nil)
        @expand = expand
        @validation_behavior = validation_behavior
      end
    end
  end
end
