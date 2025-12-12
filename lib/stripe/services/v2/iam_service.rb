# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class IamService < StripeService
      attr_reader :api_keys

      def initialize(requestor)
        super
        @api_keys = Stripe::V2::Iam::ApiKeyService.new(@requestor)
      end
    end
  end
end
