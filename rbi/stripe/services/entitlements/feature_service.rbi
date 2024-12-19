# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Entitlements
    class FeatureService < StripeService
      class ListParams < Stripe::RequestParams
        # If set, filter results to only include features with the given archive status.
        sig { returns(T::Boolean) }
        attr_accessor :archived

        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(String) }
        attr_accessor :ending_before

        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand

        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(Integer) }
        attr_accessor :limit

        # If set, filter results to only include features with the given lookup_key.
        sig { returns(String) }
        attr_accessor :lookup_key

        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(String) }
        attr_accessor :starting_after

        sig {
          params(archived: T::Boolean, ending_before: String, expand: T::Array[String], limit: Integer, lookup_key: String, starting_after: String).void
         }
        def initialize(
          archived: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          lookup_key: nil,
          starting_after: nil
        ); end
      end
      class CreateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand

        # A unique key you provide as your own system identifier. This may be up to 80 characters.
        sig { returns(String) }
        attr_accessor :lookup_key

        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T::Hash[String, String]) }
        attr_accessor :metadata

        # The feature's name, for your own purpose, not meant to be displayable to the customer.
        sig { returns(String) }
        attr_accessor :name

        sig {
          params(expand: T::Array[String], lookup_key: String, metadata: T::Hash[String, String], name: String).void
         }
        def initialize(expand: nil, lookup_key: nil, metadata: nil, name: nil); end
      end
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand

        sig { params(expand: T::Array[String]).void }
        def initialize(expand: nil); end
      end
      class UpdateParams < Stripe::RequestParams
        # Inactive features cannot be attached to new products and will not be returned from the features list endpoint.
        sig { returns(T::Boolean) }
        attr_accessor :active

        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand

        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata

        # The feature's name, for your own purpose, not meant to be displayable to the customer.
        sig { returns(String) }
        attr_accessor :name

        sig {
          params(active: T::Boolean, expand: T::Array[String], metadata: T.nilable(T::Hash[String, String]), name: String).void
         }
        def initialize(active: nil, expand: nil, metadata: nil, name: nil); end
      end
      # Creates a feature
      sig {
        params(params: T.any(::Stripe::Entitlements::FeatureService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Entitlements::Feature)
       }
      def create(params = {}, opts = {}); end

      # Retrieve a list of features
      sig {
        params(params: T.any(::Stripe::Entitlements::FeatureService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves a feature
      sig {
        params(id: String, params: T.any(::Stripe::Entitlements::FeatureService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Entitlements::Feature)
       }
      def retrieve(id, params = {}, opts = {}); end

      # Update a feature's metadata or permanently deactivate it.
      sig {
        params(id: String, params: T.any(::Stripe::Entitlements::FeatureService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Entitlements::Feature)
       }
      def update(id, params = {}, opts = {}); end
    end
  end
end