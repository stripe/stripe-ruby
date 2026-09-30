# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class TestHelperService < StripeService
      attr_reader :money_management

      def initialize(requestor)
        super
        @money_management = Stripe::V2::TestHelpers::MoneyManagementService.new(@requestor)
      end
    end
  end
end
