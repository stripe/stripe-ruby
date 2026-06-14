# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Commerce
      class ProductCatalogService < StripeService
        attr_reader :imports

        def initialize(requestor)
          super
          @imports = Stripe::V2::Commerce::ProductCatalog::ImportService.new(@requestor)
        end
      end
    end
  end
end
