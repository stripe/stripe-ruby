# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Radar
    # Value list items allow you to add specific values to a given Radar value list, which can then be used in rules.
    #
    # Related guide: [Managing list items](https://stripe.com/docs/radar/lists#managing-list-items)
    class ValueListItem < APIResource
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(String) }
      # The name or email address of the user who added this item to the value list.
      attr_reader :created_by
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(String) }
      # The value of the item.
      attr_reader :value
      sig { returns(String) }
      # The identifier of the value list this item belongs to.
      attr_reader :value_list
      sig { returns(T::Boolean) }
      # Always true for a deleted object
      attr_reader :deleted
    end
  end
end