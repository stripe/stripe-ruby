# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Radar
    # Value lists allow you to group values together which can then be referenced in rules.
    #
    # Related guide: [Default Stripe lists](https://stripe.com/docs/radar/lists#managing-list-items)
    class ValueList < APIResource
      extend Stripe::APIOperations::Create
      include Stripe::APIOperations::Delete
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "radar.value_list"
      def self.object_name
        "radar.value_list"
      end

      class DeleteParams < Stripe::RequestParams; end

      class UpdateParams < Stripe::RequestParams
        # The name of the value list for use in rules.
        attr_accessor :alias
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # The human-readable name of the value list.
        attr_accessor :name

        def initialize(alias_: nil, expand: nil, metadata: nil, name: nil)
          @alias = alias_
          @expand = expand
          @metadata = metadata
          @name = name
        end
      end

      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          attr_accessor :gt
          # Minimum value to filter by (inclusive)
          attr_accessor :gte
          # Maximum value to filter by (exclusive)
          attr_accessor :lt
          # Maximum value to filter by (inclusive)
          attr_accessor :lte

          def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
            @gt = gt
            @gte = gte
            @lt = lt
            @lte = lte
          end
        end
        # The alias used to reference the value list when writing rules.
        attr_accessor :alias
        # A value contained within a value list - returns all value lists containing this value.
        attr_accessor :contains
        # Only return value lists that were created during the given date interval.
        attr_accessor :created
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after

        def initialize(
          alias_: nil,
          contains: nil,
          created: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil
        )
          @alias = alias_
          @contains = contains
          @created = created
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @starting_after = starting_after
        end
      end

      class CreateParams < Stripe::RequestParams
        # The name of the value list for use in rules.
        attr_accessor :alias
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Type of the items in the value list. One of `card_fingerprint`, `us_bank_account_fingerprint`, `sepa_debit_fingerprint`, `card_bin`, `email`, `ip_address`, `country`, `string`, `case_sensitive_string`, or `customer_id`. Use `string` if the item type is unknown or mixed.
        attr_accessor :item_type
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # The human-readable name of the value list.
        attr_accessor :name

        def initialize(alias_: nil, expand: nil, item_type: nil, metadata: nil, name: nil)
          @alias = alias_
          @expand = expand
          @item_type = item_type
          @metadata = metadata
          @name = name
        end
      end
      # The name of the value list for use in rules.
      attr_reader :alias
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # The name or email address of the user who created this value list.
      attr_reader :created_by
      # Unique identifier for the object.
      attr_reader :id
      # The type of items in the value list. One of `card_fingerprint`, `us_bank_account_fingerprint`, `sepa_debit_fingerprint`, `card_bin`, `email`, `ip_address`, `country`, `string`, `case_sensitive_string`, or `customer_id`.
      attr_reader :item_type
      # List of items contained within this value list.
      attr_reader :list_items
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # The name of the value list.
      attr_reader :name
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # Always true for a deleted object
      attr_reader :deleted

      # Creates a new ValueList object, which can then be referenced in rules.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/radar/value_lists",
          params: params,
          opts: opts
        )
      end

      # Deletes a ValueList object, also deleting any items contained within the value list. To be deleted, a value list must not be referenced in any rules.
      def self.delete(value_list, params = {}, opts = {})
        request_stripe_object(
          method: :delete,
          path: format("/v1/radar/value_lists/%<value_list>s", { value_list: CGI.escape(value_list) }),
          params: params,
          opts: opts
        )
      end

      # Deletes a ValueList object, also deleting any items contained within the value list. To be deleted, a value list must not be referenced in any rules.
      def delete(params = {}, opts = {})
        request_stripe_object(
          method: :delete,
          path: format("/v1/radar/value_lists/%<value_list>s", { value_list: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Returns a list of ValueList objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/radar/value_lists",
          params: params,
          opts: opts
        )
      end

      # Updates a ValueList object by setting the values of the parameters passed. Any parameters not provided will be left unchanged. Note that item_type is immutable.
      def self.update(value_list, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/radar/value_lists/%<value_list>s", { value_list: CGI.escape(value_list) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
