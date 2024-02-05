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
      def self.delete(id, params = {}, opts = {})
        request_stripe_object(
          method: :delete,
          path: format("/v1/radar/value_lists/%<id>s", { id: CGI.escape(id) }),
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
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/radar/value_lists",
          params: filters,
          opts: opts
        )
      end

      # Updates a ValueList object by setting the values of the parameters passed. Any parameters not provided will be left unchanged. Note that item_type is immutable.
      def self.update(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/radar/value_lists/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
