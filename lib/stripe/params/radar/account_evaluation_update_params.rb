# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Radar
    class AccountEvaluationUpdateParams < ::Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The type of event to report.
      attr_accessor :type

      def initialize(expand: nil, type: nil)
        @expand = expand
        @type = type
      end
    end
  end
end
