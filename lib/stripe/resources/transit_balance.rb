# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # Funds that are in transit and destined for another balance or another connected account.
  class TransitBalance < APIResource
    OBJECT_NAME = "transit_balance"
    def self.object_name
      "transit_balance"
    end

    class Balance < ::Stripe::StripeObject
      # Attribute for field available
      attr_reader :available
      # Attribute for field pending
      attr_reader :pending

      def self.inner_class_types
        @inner_class_types = {}
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
    # Attribute for field balance
    attr_reader :balance
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object

    def self.inner_class_types
      @inner_class_types = { balance: Balance }
    end

    def self.field_remappings
      @field_remappings = {}
    end
  end
end
