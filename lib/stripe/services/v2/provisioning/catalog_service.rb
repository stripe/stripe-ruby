# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Provisioning
      class CatalogService < StripeService
        attr_reader :providers, :services

        def initialize(requestor)
          super
          @providers = Stripe::V2::Provisioning::Catalog::ProviderService.new(@requestor)
          @services = Stripe::V2::Provisioning::Catalog::ServiceService.new(@requestor)
        end
      end
    end
  end
end
