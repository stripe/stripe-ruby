# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Radar
    # Value list items allow you to add specific values to a given Radar value list, which can then be used in rules.
    #
    # Related guide: [Managing List Items](https://stripe.com/docs/radar/lists#managing-list-items).
    class ValueListItem < APIResource
      extend Stripe::APIOperations::Create
      include Stripe::APIOperations::Delete
      extend Stripe::APIOperations::List

      OBJECT_NAME = "radar.value_list_item"
    end
  end
end
