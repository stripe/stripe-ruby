# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class ProductFeatureService < StripeService
    class DeleteParams < Stripe::RequestParams; end
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class ListParams < Stripe::RequestParams
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      def ending_before; end
      sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
      def ending_before=(_ending_before); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      def limit; end
      sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def limit=(_limit); end
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      def starting_after; end
      sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
      def starting_after=(_starting_after); end
      sig {
        params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
       }
      def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil); end
    end
    class CreateParams < Stripe::RequestParams
      # The ID of the [Feature](https://stripe.com/docs/api/entitlements/feature) object attached to this product.
      sig { returns(String) }
      def entitlement_feature; end
      sig { params(_entitlement_feature: String).returns(String) }
      def entitlement_feature=(_entitlement_feature); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      sig { params(entitlement_feature: String, expand: T.nilable(T::Array[String])).void }
      def initialize(entitlement_feature: nil, expand: nil); end
    end
    # Creates a product_feature, which represents a feature attachment to a product
    sig {
      params(product: String, params: T.any(::Stripe::ProductFeatureService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ProductFeature)
     }
    def create(product, params = {}, opts = {}); end

    # Deletes the feature attachment to a product
    sig {
      params(product: String, id: String, params: T.any(::Stripe::ProductFeatureService::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ProductFeature)
     }
    def delete(product, id, params = {}, opts = {}); end

    # Retrieve a list of features for a product
    sig {
      params(product: String, params: T.any(::Stripe::ProductFeatureService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(product, params = {}, opts = {}); end

    # Retrieves a product_feature, which represents a feature attachment to a product
    sig {
      params(product: String, id: String, params: T.any(::Stripe::ProductFeatureService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ProductFeature)
     }
    def retrieve(product, id, params = {}, opts = {}); end
  end
end