# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class ProductCatalogService < StripeService
    attr_reader :trial_offers

    def initialize(requestor)
      super
      @trial_offers = Stripe::ProductCatalog::TrialOfferService.new(@requestor)
    end
  end
end
