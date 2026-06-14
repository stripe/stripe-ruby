# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class ProductFeatureService < StripeService
    # Creates a product_feature, which represents a feature attachment to a product
    sig {
      params(product: String, params: T.any(::Stripe::ProductFeatureCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ProductFeature)
     }
    def create(product, params = {}, opts = {}); end

    # Deletes the feature attachment to a product
    sig {
      params(product: String, id: String, params: T.any(::Stripe::ProductFeatureDeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ProductFeature)
     }
    def delete(product, id, params = {}, opts = {}); end

    # Retrieve a list of features for a product
    sig {
      params(product: String, params: T.any(::Stripe::ProductFeatureListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
     }
    def list(product, params = {}, opts = {}); end

    # Retrieves a product_feature, which represents a feature attachment to a product
    sig {
      params(product: String, id: String, params: T.any(::Stripe::ProductFeatureRetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ProductFeature)
     }
    def retrieve(product, id, params = {}, opts = {}); end

    # Serializes a ProductFeature create request into a batch job JSONL line.
    sig {
      params(product: String, params: ::Stripe::ProductFeatureCreateParams, opts: T.untyped).returns(String)
     }
    def serialize_batch_create(product, params = {}, opts = {}); end

    # Serializes a ProductFeature delete request into a batch job JSONL line.
    sig {
      params(product: String, id: String, params: ::Stripe::ProductFeatureDeleteParams, opts: T.untyped).returns(String)
     }
    def serialize_batch_delete(product, id, params = {}, opts = {}); end
  end
end