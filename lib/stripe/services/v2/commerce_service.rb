# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    class CommerceService < StripeService
      attr_reader :product_catalog

      def initialize(requestor)
        super
        @product_catalog = Stripe::V2::Commerce::ProductCatalogService.new(@requestor)
      end
    end
  end
end
