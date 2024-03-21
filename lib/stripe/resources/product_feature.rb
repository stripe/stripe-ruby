# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A product_feature represents an attachment between a feature and a product.
  # When a product is purchased that has a feature attached, Stripe will create an entitlement to the feature for the purchasing customer.
  class ProductFeature < APIResource
    OBJECT_NAME = "product_feature"
    def self.object_name
      "product_feature"
    end
  end
end
