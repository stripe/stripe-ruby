# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Radar
    # Value lists allow you to group values together which can then be referenced in rules.
    #
    # Related guide: [Default Stripe Lists](https://stripe.com/docs/radar/lists#managing-list-items).
    class ValueList < APIResource
      extend Stripe::APIOperations::Create
      include Stripe::APIOperations::Delete
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "radar.value_list"
    end
  end
end
