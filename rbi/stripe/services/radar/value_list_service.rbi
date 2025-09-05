# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Radar
    class ValueListService < StripeService
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
      class UpdateParams < Stripe::RequestParams
        # The name of the value list for use in rules.
        sig { returns(T.nilable(String)) }
        def alias; end
        sig { params(_alias: T.nilable(String)).returns(T.nilable(String)) }
        def alias=(_alias); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # The human-readable name of the value list.
        sig { returns(T.nilable(String)) }
        def name; end
        sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
        def name=(_name); end
        sig {
          params(alias_: T.nilable(String), expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), name: T.nilable(String)).void
         }
        def initialize(alias_: nil, expand: nil, metadata: nil, name: nil); end
      end
      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          def gt; end
          sig { params(_gt: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def gt=(_gt); end
          # Minimum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          def gte; end
          sig { params(_gte: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def gte=(_gte); end
          # Maximum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          def lt; end
          sig { params(_lt: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def lt=(_lt); end
          # Maximum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          def lte; end
          sig { params(_lte: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def lte=(_lte); end
          sig {
            params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
           }
          def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
        end
        # The alias used to reference the value list when writing rules.
        sig { returns(T.nilable(String)) }
        def alias; end
        sig { params(_alias: T.nilable(String)).returns(T.nilable(String)) }
        def alias=(_alias); end
        # A value contained within a value list - returns all value lists containing this value.
        sig { returns(T.nilable(String)) }
        def contains; end
        sig { params(_contains: T.nilable(String)).returns(T.nilable(String)) }
        def contains=(_contains); end
        # Only return value lists that were created during the given date interval.
        sig {
          returns(T.nilable(T.any(::Stripe::Radar::ValueListService::ListParams::Created, Integer)))
         }
        def created; end
        sig {
          params(_created: T.nilable(T.any(::Stripe::Radar::ValueListService::ListParams::Created, Integer))).returns(T.nilable(T.any(::Stripe::Radar::ValueListService::ListParams::Created, Integer)))
         }
        def created=(_created); end
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
          params(alias_: T.nilable(String), contains: T.nilable(String), created: T.nilable(T.any(::Stripe::Radar::ValueListService::ListParams::Created, Integer)), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
         }
        def initialize(
          alias_: nil,
          contains: nil,
          created: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil
        ); end
      end
      class CreateParams < Stripe::RequestParams
        # The name of the value list for use in rules.
        sig { returns(String) }
        def alias; end
        sig { params(_alias: String).returns(String) }
        def alias=(_alias); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Type of the items in the value list. One of `card_fingerprint`, `card_bin`, `email`, `ip_address`, `country`, `string`, `case_sensitive_string`, `customer_id`, `sepa_debit_fingerprint`, or `us_bank_account_fingerprint`. Use `string` if the item type is unknown or mixed.
        sig { returns(T.nilable(String)) }
        def item_type; end
        sig { params(_item_type: T.nilable(String)).returns(T.nilable(String)) }
        def item_type=(_item_type); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # The human-readable name of the value list.
        sig { returns(String) }
        def name; end
        sig { params(_name: String).returns(String) }
        def name=(_name); end
        sig {
          params(alias_: String, expand: T.nilable(T::Array[String]), item_type: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), name: String).void
         }
        def initialize(alias_: nil, expand: nil, item_type: nil, metadata: nil, name: nil); end
      end
      # Creates a new ValueList object, which can then be referenced in rules.
      sig {
        params(params: T.any(::Stripe::Radar::ValueListService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Radar::ValueList)
       }
      def create(params = {}, opts = {}); end

      # Deletes a ValueList object, also deleting any items contained within the value list. To be deleted, a value list must not be referenced in any rules.
      sig {
        params(value_list: String, params: T.any(::Stripe::Radar::ValueListService::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Radar::ValueList)
       }
      def delete(value_list, params = {}, opts = {}); end

      # Returns a list of ValueList objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      sig {
        params(params: T.any(::Stripe::Radar::ValueListService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves a ValueList object.
      sig {
        params(value_list: String, params: T.any(::Stripe::Radar::ValueListService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Radar::ValueList)
       }
      def retrieve(value_list, params = {}, opts = {}); end

      # Updates a ValueList object by setting the values of the parameters passed. Any parameters not provided will be left unchanged. Note that item_type is immutable.
      sig {
        params(value_list: String, params: T.any(::Stripe::Radar::ValueListService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Radar::ValueList)
       }
      def update(value_list, params = {}, opts = {}); end
    end
  end
end