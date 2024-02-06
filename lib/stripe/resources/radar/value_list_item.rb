# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Radar
    # Value list items allow you to add specific values to a given Radar value list, which can then be used in rules.
    #
    # Related guide: [Managing list items](https://stripe.com/docs/radar/lists#managing-list-items)
    class ValueListItem < APIResource
      extend Stripe::APIOperations::Create
      include Stripe::APIOperations::Delete
      extend Stripe::APIOperations::List

      OBJECT_NAME = "radar.value_list_item"

      # Creates a new ValueListItem object, which is added to the specified parent value list.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/radar/value_list_items",
          params: params,
          opts: opts
        )
      end

      # Deletes a ValueListItem object, removing it from its parent value list.
      def self.delete(id, params = {}, opts = {})
        request_stripe_object(
          method: :delete,
          path: format("/v1/radar/value_list_items/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      # Deletes a ValueListItem object, removing it from its parent value list.
      def delete(params = {}, opts = {})
        request_stripe_object(
          method: :delete,
          path: format("/v1/radar/value_list_items/%<item>s", { item: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Returns a list of ValueListItem objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/radar/value_list_items",
          params: filters,
          opts: opts
        )
      end
    end
  end
end
