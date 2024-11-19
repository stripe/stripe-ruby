# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Radar
    # Value lists allow you to group values together which can then be referenced in rules.
    #
    # Related guide: [Default Stripe lists](https://stripe.com/docs/radar/lists#managing-list-items)
    class ValueList < APIResource
      sig { returns(String) }
      # The name of the value list for use in rules.
      attr_reader :alias
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(String) }
      # The name or email address of the user who created this value list.
      attr_reader :created_by
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(String) }
      # The type of items in the value list. One of `card_fingerprint`, `us_bank_account_fingerprint`, `sepa_debit_fingerprint`, `card_bin`, `email`, `ip_address`, `country`, `string`, `case_sensitive_string`, or `customer_id`.
      attr_reader :item_type
      sig { returns(Stripe::ListObject) }
      # List of items contained within this value list.
      attr_reader :list_items
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(T::Hash[String, String]) }
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      sig { returns(String) }
      # The name of the value list.
      attr_reader :name
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(T::Boolean) }
      # Always true for a deleted object
      attr_reader :deleted
    end
  end
end