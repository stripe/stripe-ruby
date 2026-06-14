# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Radar
    class CustomerEvaluationUpdateParams < ::Stripe::RequestParams
      # The ID of a Customer to attach to an entity-less registration evaluation.
      attr_accessor :customer
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The outcome status of the evaluation: allowed, restricted, or blocked.
      attr_accessor :status

      def initialize(customer: nil, expand: nil, status: nil)
        @customer = customer
        @expand = expand
        @status = status
      end
    end
  end
end
