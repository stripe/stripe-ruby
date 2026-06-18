# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Issuing
    class DisputeProvisionalCreditParams < ::Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Override the deadline by which the platform must grant a provisional credit to the consumer.
      attr_accessor :grant_deadline
      # Override the earliest time after which the platform may revoke the provisional credit.
      attr_accessor :revocable_after

      def initialize(expand: nil, grant_deadline: nil, revocable_after: nil)
        @expand = expand
        @grant_deadline = grant_deadline
        @revocable_after = revocable_after
      end
    end
  end
end
