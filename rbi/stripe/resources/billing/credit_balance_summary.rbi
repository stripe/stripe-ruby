# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Billing
    # Indicates the billing credit balance for billing credits granted to a customer.
    class CreditBalanceSummary < SingletonAPIResource
      class Balance < ::Stripe::StripeObject
        class AvailableBalance < ::Stripe::StripeObject
          class CustomPricingUnit < ::Stripe::StripeObject
            class CustomPricingUnitDetails < ::Stripe::StripeObject
              # Time at which the object was created. Measured in seconds since the Unix epoch.
              sig { returns(Integer) }
              def created; end
              # The name of the custom pricing unit.
              sig { returns(String) }
              def display_name; end
              # Unique identifier for the object.
              sig { returns(String) }
              def id; end
              # A lookup key for the custom pricing unit.
              sig { returns(T.nilable(String)) }
              def lookup_key; end
              # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
              sig { returns(T::Hash[String, String]) }
              def metadata; end
              # The status of the custom pricing unit.
              sig { returns(String) }
              def status; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The custom pricing unit object.
            sig { returns(T.nilable(CustomPricingUnitDetails)) }
            def custom_pricing_unit_details; end
            # Unique identifier for the object.
            sig { returns(String) }
            def id; end
            # A positive integer representing the amount.
            sig { returns(String) }
            def value; end
            def self.inner_class_types
              @inner_class_types = {custom_pricing_unit_details: CustomPricingUnitDetails}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Monetary < ::Stripe::StripeObject
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            def currency; end
            # A positive integer representing the amount.
            sig { returns(Integer) }
            def value; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The custom pricing unit amount.
          sig { returns(T.nilable(CustomPricingUnit)) }
          def custom_pricing_unit; end
          # The monetary amount.
          sig { returns(T.nilable(Monetary)) }
          def monetary; end
          # The type of this amount. We currently only support `monetary` billing credits.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {custom_pricing_unit: CustomPricingUnit, monetary: Monetary}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class BalanceUpdateDetails < ::Stripe::StripeObject
          class LatestMeterEvent < ::Stripe::StripeObject
            # Time at which the object was created. Measured in seconds since the Unix epoch.
            sig { returns(T.nilable(Integer)) }
            def created; end
            # Maximum event time across all meter events that were processed and included in the balance update. Measured in seconds since the Unix epoch.
            sig { returns(T.nilable(Integer)) }
            def timestamp; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The details of the most recent meter event included in the balance update.
          sig { returns(T.nilable(LatestMeterEvent)) }
          def latest_meter_event; end
          def self.inner_class_types
            @inner_class_types = {latest_meter_event: LatestMeterEvent}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class LedgerBalance < ::Stripe::StripeObject
          class CustomPricingUnit < ::Stripe::StripeObject
            class CustomPricingUnitDetails < ::Stripe::StripeObject
              # Time at which the object was created. Measured in seconds since the Unix epoch.
              sig { returns(Integer) }
              def created; end
              # The name of the custom pricing unit.
              sig { returns(String) }
              def display_name; end
              # Unique identifier for the object.
              sig { returns(String) }
              def id; end
              # A lookup key for the custom pricing unit.
              sig { returns(T.nilable(String)) }
              def lookup_key; end
              # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
              sig { returns(T::Hash[String, String]) }
              def metadata; end
              # The status of the custom pricing unit.
              sig { returns(String) }
              def status; end
              def self.inner_class_types
                @inner_class_types = {}
              end
              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The custom pricing unit object.
            sig { returns(T.nilable(CustomPricingUnitDetails)) }
            def custom_pricing_unit_details; end
            # Unique identifier for the object.
            sig { returns(String) }
            def id; end
            # A positive integer representing the amount.
            sig { returns(String) }
            def value; end
            def self.inner_class_types
              @inner_class_types = {custom_pricing_unit_details: CustomPricingUnitDetails}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          class Monetary < ::Stripe::StripeObject
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            def currency; end
            # A positive integer representing the amount.
            sig { returns(Integer) }
            def value; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The custom pricing unit amount.
          sig { returns(T.nilable(CustomPricingUnit)) }
          def custom_pricing_unit; end
          # The monetary amount.
          sig { returns(T.nilable(Monetary)) }
          def monetary; end
          # The type of this amount. We currently only support `monetary` billing credits.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {custom_pricing_unit: CustomPricingUnit, monetary: Monetary}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field available_balance
        sig { returns(AvailableBalance) }
        def available_balance; end
        # Attribute for field ledger_balance
        sig { returns(LedgerBalance) }
        def ledger_balance; end
        # Attribute for field balance_update_details
        sig { returns(T.nilable(BalanceUpdateDetails)) }
        def balance_update_details; end
        def self.inner_class_types
          @inner_class_types = {
            available_balance: AvailableBalance,
            ledger_balance: LedgerBalance,
            balance_update_details: BalanceUpdateDetails,
          }
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # The billing credit balances. One entry per credit grant currency. If a customer only has credit grants in a single currency, then this will have a single balance entry.
      sig { returns(T::Array[Balance]) }
      def balances; end
      # The customer the balance is for.
      sig { returns(T.any(String, ::Stripe::Customer)) }
      def customer; end
      # The account the balance is for.
      sig { returns(T.nilable(String)) }
      def customer_account; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
    end
  end
end