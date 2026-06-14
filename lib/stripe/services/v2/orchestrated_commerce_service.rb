# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class OrchestratedCommerceService < StripeService
      attr_reader :agreements

      def initialize(requestor)
        super
        @agreements = Stripe::V2::OrchestratedCommerce::AgreementService.new(@requestor)
      end
    end
  end
end
