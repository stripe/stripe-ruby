# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Entitlements
    class FeatureService < StripeService
      class ListParams < Stripe::RequestParams
        # If set, filter results to only include features with the given archive status.
        sig { returns(T.nilable(T::Boolean)) }
        def archived; end
        sig { params(_archived: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def archived=(_archived); end
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
        # If set, filter results to only include features with the given lookup_key.
        sig { returns(T.nilable(String)) }
        def lookup_key; end
        sig { params(_lookup_key: T.nilable(String)).returns(T.nilable(String)) }
        def lookup_key=(_lookup_key); end
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        def starting_after; end
        sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
        def starting_after=(_starting_after); end
        sig {
          params(archived: T.nilable(T::Boolean), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), lookup_key: T.nilable(String), starting_after: T.nilable(String)).void
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
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # A unique key you provide as your own system identifier. This may be up to 80 characters.
        sig { returns(String) }
        def lookup_key; end
        sig { params(_lookup_key: String).returns(String) }
        def lookup_key=(_lookup_key); end
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # The feature's name, for your own purpose, not meant to be displayable to the customer.
        sig { returns(String) }
        def name; end
        sig { params(_name: String).returns(String) }
        def name=(_name); end
        sig {
          params(expand: T.nilable(T::Array[String]), lookup_key: String, metadata: T.nilable(T::Hash[String, String]), name: String).void
         }
        def initialize(expand: nil, lookup_key: nil, metadata: nil, name: nil); end
      end
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class UpdateParams < Stripe::RequestParams
        # Inactive features cannot be attached to new products and will not be returned from the features list endpoint.
        sig { returns(T.nilable(T::Boolean)) }
        def active; end
        sig { params(_active: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def active=(_active); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
         }
        def metadata=(_metadata); end
        # The feature's name, for your own purpose, not meant to be displayable to the customer.
        sig { returns(T.nilable(String)) }
        def name; end
        sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
        def name=(_name); end
        sig {
          params(active: T.nilable(T::Boolean), expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String])), name: T.nilable(String)).void
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