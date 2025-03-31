# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Issuing
    class PhysicalBundleService < StripeService
      class ListParams < Stripe::RequestParams
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :starting_after
        # Only return physical bundles with the given status.
        sig { returns(T.nilable(String)) }
        attr_accessor :status
        # Only return physical bundles with the given type.
        sig { returns(T.nilable(String)) }
        attr_accessor :type
        sig {
          params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String), status: T.nilable(String), type: T.nilable(String)).void
         }
        def initialize(
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil,
          status: nil,
          type: nil
        ); end
      end
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      # Returns a list of physical bundle objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      sig {
        params(params: T.any(::Stripe::Issuing::PhysicalBundleService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves a physical bundle object.
      sig {
        params(physical_bundle: String, params: T.any(::Stripe::Issuing::PhysicalBundleService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Issuing::PhysicalBundle)
       }
      def retrieve(physical_bundle, params = {}, opts = {}); end
    end
  end
end