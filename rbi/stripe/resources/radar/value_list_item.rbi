# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Radar
    # Value list items allow you to add specific values to a given Radar value list, which can then be used in rules.
    #
    # Related guide: [Managing list items](https://stripe.com/docs/radar/lists#managing-list-items)
    class ValueListItem < APIResource
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created

      # The name or email address of the user who added this item to the value list.
      sig { returns(String) }
      attr_reader :created_by

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # The value of the item.
      sig { returns(String) }
      attr_reader :value

      # The identifier of the value list this item belongs to.
      sig { returns(String) }
      attr_reader :value_list

      # Always true for a deleted object
      sig { returns(T::Boolean) }
      attr_reader :deleted
    end
  end
end