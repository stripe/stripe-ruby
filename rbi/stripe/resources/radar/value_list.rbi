# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Radar
    # Value lists allow you to group values together which can then be referenced in rules.
    #
    # Related guide: [Default Stripe lists](https://stripe.com/docs/radar/lists#managing-list-items)
    class ValueList < APIResource
      # The name of the value list for use in rules.
      sig { returns(String) }
      attr_reader :alias
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created
      # The name or email address of the user who created this value list.
      sig { returns(String) }
      attr_reader :created_by
      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id
      # The type of items in the value list. One of `card_fingerprint`, `card_bin`, `email`, `ip_address`, `country`, `string`, `case_sensitive_string`, `customer_id`, `sepa_debit_fingerprint`, or `us_bank_account_fingerprint`.
      sig { returns(String) }
      attr_reader :item_type
      # List of items contained within this value list.
      sig { returns(Stripe::ListObject) }
      attr_reader :list_items
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata
      # The name of the value list.
      sig { returns(String) }
      attr_reader :name
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # Always true for a deleted object
      sig { returns(T::Boolean) }
      attr_reader :deleted
      class DeleteParams < Stripe::RequestParams; end
      class UpdateParams < Stripe::RequestParams
        # The name of the value list for use in rules.
        sig { returns(T.nilable(String)) }
        attr_accessor :alias
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # The human-readable name of the value list.
        sig { returns(T.nilable(String)) }
        attr_accessor :name
        sig {
          params(alias_: T.nilable(String), expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), name: T.nilable(String)).void
         }
        def initialize(alias_: nil, expand: nil, metadata: nil, name: nil); end
      end
      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :gt
          # Minimum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :gte
          # Maximum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :lt
          # Maximum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :lte
          sig {
            params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
           }
          def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
        end
        # The alias used to reference the value list when writing rules.
        sig { returns(T.nilable(String)) }
        attr_accessor :alias
        # A value contained within a value list - returns all value lists containing this value.
        sig { returns(T.nilable(String)) }
        attr_accessor :contains
        # Only return value lists that were created during the given date interval.
        sig { returns(T.nilable(T.any(::Stripe::Radar::ValueList::ListParams::Created, Integer))) }
        attr_accessor :created
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
        sig {
          params(alias_: T.nilable(String), contains: T.nilable(String), created: T.nilable(T.any(::Stripe::Radar::ValueList::ListParams::Created, Integer)), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
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
        attr_accessor :alias
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Type of the items in the value list. One of `card_fingerprint`, `card_bin`, `email`, `ip_address`, `country`, `string`, `case_sensitive_string`, `customer_id`, `sepa_debit_fingerprint`, or `us_bank_account_fingerprint`. Use `string` if the item type is unknown or mixed.
        sig { returns(T.nilable(String)) }
        attr_accessor :item_type
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # The human-readable name of the value list.
        sig { returns(String) }
        attr_accessor :name
        sig {
          params(alias_: String, expand: T.nilable(T::Array[String]), item_type: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), name: String).void
         }
        def initialize(alias_: nil, expand: nil, item_type: nil, metadata: nil, name: nil); end
      end
      # Creates a new ValueList object, which can then be referenced in rules.
      sig {
        params(params: T.any(::Stripe::Radar::ValueList::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Radar::ValueList)
       }
      def self.create(params = {}, opts = {}); end

      # Deletes a ValueList object, also deleting any items contained within the value list. To be deleted, a value list must not be referenced in any rules.
      sig {
        params(value_list: String, params: T.any(::Stripe::Radar::ValueList::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Radar::ValueList)
       }
      def self.delete(value_list, params = {}, opts = {}); end

      # Deletes a ValueList object, also deleting any items contained within the value list. To be deleted, a value list must not be referenced in any rules.
      sig {
        params(params: T.any(::Stripe::Radar::ValueList::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Radar::ValueList)
       }
      def delete(params = {}, opts = {}); end

      # Returns a list of ValueList objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      sig {
        params(params: T.any(::Stripe::Radar::ValueList::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end

      # Updates a ValueList object by setting the values of the parameters passed. Any parameters not provided will be left unchanged. Note that item_type is immutable.
      sig {
        params(value_list: String, params: T.any(::Stripe::Radar::ValueList::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Radar::ValueList)
       }
      def self.update(value_list, params = {}, opts = {}); end
    end
  end
end