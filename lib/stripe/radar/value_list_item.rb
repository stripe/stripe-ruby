# frozen_string_literal: true

module Stripe
  module Radar
    class ValueListItem < Stripe::APIResource
      extend Stripe::APIOperations::Create
      include Stripe::APIOperations::Delete
      extend Stripe::APIOperations::List

      OBJECT_NAME = "radar.value_list_item".freeze
    end
  end
end
