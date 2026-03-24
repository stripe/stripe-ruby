# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Billing
    # Indicates the billing credit balance for billing credits granted to a customer.
    class CreditBalanceSummary < SingletonAPIResource
      OBJECT_NAME = "billing.credit_balance_summary"
      def self.object_name
        "billing.credit_balance_summary"
      end

      class Balance < ::Stripe::StripeObject
        class AvailableBalance < ::Stripe::StripeObject
          class CustomPricingUnit < ::Stripe::StripeObject
            class CustomPricingUnitDetails < ::Stripe::StripeObject
              # Time at which the object was created. Measured in seconds since the Unix epoch.
              attr_reader :created
              # The name of the custom pricing unit.
              attr_reader :display_name
              # Unique identifier for the object.
              attr_reader :id
              # A lookup key for the custom pricing unit.
              attr_reader :lookup_key
              # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
              attr_reader :metadata
              # The status of the custom pricing unit.
              attr_reader :status

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The custom pricing unit object.
            attr_reader :custom_pricing_unit_details
            # Unique identifier for the object.
            attr_reader :id
            # A positive integer representing the amount.
            attr_reader :value

            def self.inner_class_types
              @inner_class_types = { custom_pricing_unit_details: CustomPricingUnitDetails }
            end

            def self.field_remappings
              @field_remappings = {}
            end

            def self.field_encodings
              @field_encodings = { value: :decimal_string }
            end
          end

          class Monetary < ::Stripe::StripeObject
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            attr_reader :currency
            # A positive integer representing the amount.
            attr_reader :value

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The custom pricing unit amount.
          attr_reader :custom_pricing_unit
          # The monetary amount.
          attr_reader :monetary
          # The type of this amount. We currently only support `monetary` billing credits.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = { custom_pricing_unit: CustomPricingUnit, monetary: Monetary }
          end

          def self.field_remappings
            @field_remappings = {}
          end

          def self.field_encodings
            @field_encodings = {
              custom_pricing_unit: { kind: :object, fields: { value: :decimal_string } },
            }
          end
        end

        class BalanceUpdateDetails < ::Stripe::StripeObject
          class LatestMeterEvent < ::Stripe::StripeObject
            # Time at which the object was created. Measured in seconds since the Unix epoch.
            attr_reader :created
            # Maximum event time across all meter events that were processed and included in the balance update. Measured in seconds since the Unix epoch.
            attr_reader :timestamp

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The details of the most recent meter event included in the balance update.
          attr_reader :latest_meter_event

          def self.inner_class_types
            @inner_class_types = { latest_meter_event: LatestMeterEvent }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class LedgerBalance < ::Stripe::StripeObject
          class CustomPricingUnit < ::Stripe::StripeObject
            class CustomPricingUnitDetails < ::Stripe::StripeObject
              # Time at which the object was created. Measured in seconds since the Unix epoch.
              attr_reader :created
              # The name of the custom pricing unit.
              attr_reader :display_name
              # Unique identifier for the object.
              attr_reader :id
              # A lookup key for the custom pricing unit.
              attr_reader :lookup_key
              # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
              attr_reader :metadata
              # The status of the custom pricing unit.
              attr_reader :status

              def self.inner_class_types
                @inner_class_types = {}
              end

              def self.field_remappings
                @field_remappings = {}
              end
            end
            # The custom pricing unit object.
            attr_reader :custom_pricing_unit_details
            # Unique identifier for the object.
            attr_reader :id
            # A positive integer representing the amount.
            attr_reader :value

            def self.inner_class_types
              @inner_class_types = { custom_pricing_unit_details: CustomPricingUnitDetails }
            end

            def self.field_remappings
              @field_remappings = {}
            end

            def self.field_encodings
              @field_encodings = { value: :decimal_string }
            end
          end

          class Monetary < ::Stripe::StripeObject
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            attr_reader :currency
            # A positive integer representing the amount.
            attr_reader :value

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # The custom pricing unit amount.
          attr_reader :custom_pricing_unit
          # The monetary amount.
          attr_reader :monetary
          # The type of this amount. We currently only support `monetary` billing credits.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = { custom_pricing_unit: CustomPricingUnit, monetary: Monetary }
          end

          def self.field_remappings
            @field_remappings = {}
          end

          def self.field_encodings
            @field_encodings = {
              custom_pricing_unit: { kind: :object, fields: { value: :decimal_string } },
            }
          end
        end
        # Attribute for field available_balance
        attr_reader :available_balance
        # Attribute for field ledger_balance
        attr_reader :ledger_balance
        # Attribute for field balance_update_details
        attr_reader :balance_update_details

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

        def self.field_encodings
          @field_encodings = {
            available_balance: {
              kind: :object,
              fields: { custom_pricing_unit: { kind: :object, fields: { value: :decimal_string } } },
            },
            ledger_balance: {
              kind: :object,
              fields: { custom_pricing_unit: { kind: :object, fields: { value: :decimal_string } } },
            },
          }
        end
      end
      # The billing credit balances. One entry per credit grant currency. If a customer only has credit grants in a single currency, then this will have a single balance entry.
      attr_reader :balances
      # The customer the balance is for.
      attr_reader :customer
      # The account the balance is for.
      attr_reader :customer_account
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object

      def self.inner_class_types
        @inner_class_types = { balances: Balance }
      end

      def self.field_remappings
        @field_remappings = {}
      end

      def self.field_encodings
        @field_encodings = {
          balances: {
            kind: :array,
            element: {
              kind: :object,
              fields: {
                available_balance: {
                  kind: :object,
                  fields: { custom_pricing_unit: { kind: :object, fields: { value: :decimal_string } } },
                },
                ledger_balance: {
                  kind: :object,
                  fields: { custom_pricing_unit: { kind: :object, fields: { value: :decimal_string } } },
                },
              },
            },
          },
        }
      end
    end
  end
end
