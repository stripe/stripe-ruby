# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # A Currency Conversion represents a standalone conversion between currencies in a [Financial Account](https://docs.stripe.com/api/v2/money-management/financial-accounts) or the payments balance.
      class CurrencyConversion < APIResource
        OBJECT_NAME = "v2.money_management.currency_conversion"
        def self.object_name
          "v2.money_management.currency_conversion"
        end

        class From < ::Stripe::StripeObject
          # A specific amount.
          attr_reader :amount

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class To < ::Stripe::StripeObject
          # A specific amount.
          attr_reader :amount

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The time the Currency Conversion was created at.
        attr_reader :created
        # The exchange rate used, excluding applicable fees.
        attr_reader :exchange_rate
        # The ID of the Financial Account the Currency Conversion was created in. If `null`, it was created in the payments balance.
        attr_reader :financial_account
        # The amount that was debited from the source currency.
        attr_reader :from
        # The ID of the Currency Conversion.
        attr_reader :id
        # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The amount that was credited to the destination currency.
        attr_reader :to

        def self.inner_class_types
          @inner_class_types = { from: From, to: To }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
