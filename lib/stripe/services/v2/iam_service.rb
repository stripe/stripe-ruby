# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class IamService < StripeService
      attr_reader :activity_logs, :api_keys

      def initialize(requestor)
        super
        @activity_logs = Stripe::V2::Iam::ActivityLogService.new(@requestor)
        @api_keys = Stripe::V2::Iam::ApiKeyService.new(@requestor)
      end
    end
  end
end
