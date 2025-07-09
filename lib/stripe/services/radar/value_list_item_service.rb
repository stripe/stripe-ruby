# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Radar
    class ValueListItemService < StripeService
      class DeleteParams < Stripe::RequestParams; end

      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
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
        # Only return items that were created during the given date interval.
        attr_accessor :created
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after
        # Return items belonging to the parent list whose value matches the specified value (using an "is like" match).
        attr_accessor :value
        # Identifier for the parent value list this item belongs to.
        attr_accessor :value_list

        def initialize(
          created: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil,
          value: nil,
          value_list: nil
        )
          @created = created
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @starting_after = starting_after
          @value = value
          @value_list = value_list
        end
      end

      class CreateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # The value of the item (whose type must match the type of the parent value list).
        attr_accessor :value
        # The identifier of the value list which the created item will be added to.
        attr_accessor :value_list

        def initialize(expand: nil, value: nil, value_list: nil)
          @expand = expand
          @value = value
          @value_list = value_list
        end
      end

      # Creates a new ValueListItem object, which is added to the specified parent value list.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/radar/value_list_items",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Deletes a ValueListItem object, removing it from its parent value list.
      def delete(item, params = {}, opts = {})
        request(
          method: :delete,
          path: format("/v1/radar/value_list_items/%<item>s", { item: CGI.escape(item) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Returns a list of ValueListItem objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/radar/value_list_items",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves a ValueListItem object.
      def retrieve(item, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/radar/value_list_items/%<item>s", { item: CGI.escape(item) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
