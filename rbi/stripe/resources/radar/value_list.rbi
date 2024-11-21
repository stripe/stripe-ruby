# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Radar
    # Value lists allow you to group values together which can then be referenced in rules.
    #
    # Related guide: [Default Stripe lists](https://stripe.com/docs/radar/lists#managing-list-items)
    class ValueList < APIResource
      # The name of the value list for use in rules.
      sig { returns(String) }
      attr_reader :alias

      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created

      # The name or email address of the user who created this value list.
      sig { returns(String) }
      attr_reader :created_by

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # The type of items in the value list. One of `card_fingerprint`, `us_bank_account_fingerprint`, `sepa_debit_fingerprint`, `card_bin`, `email`, `ip_address`, `country`, `string`, `case_sensitive_string`, or `customer_id`.
      sig { returns(String) }
      attr_reader :item_type

      # List of items contained within this value list.
      sig { returns(Stripe::ListObject) }
      attr_reader :list_items

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata

      # The name of the value list.
      sig { returns(String) }
      attr_reader :name

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # Always true for a deleted object
      sig { returns(T::Boolean) }
      attr_reader :deleted
    end
  end
end