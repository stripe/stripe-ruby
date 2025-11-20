# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module MoneyManagement
      # The CurrencyConversion object. Contains details such as the amount debited and credited and the FinancialAccount the CurrencyConversion was performed on.
      class CurrencyConversion < APIResource
        OBJECT_NAME = "v2.money_management.currency_conversion"
        def self.object_name
          "v2.money_management.currency_conversion"
        end

        class From < ::Stripe::StripeObject
          class Amount < ::Stripe::StripeObject
            # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
            attr_reader :value
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            attr_reader :currency

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Amount object.
          attr_reader :amount

          def self.inner_class_types
            @inner_class_types = { amount: Amount }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class To < ::Stripe::StripeObject
          class Amount < ::Stripe::StripeObject
            # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
            attr_reader :value
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            attr_reader :currency

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Amount object.
          attr_reader :amount

          def self.inner_class_types
            @inner_class_types = { amount: Amount }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The time the CurrencyConversion was created at.
        attr_reader :created
        # The exchange rate used when processing the CurrencyConversion.
        attr_reader :exchange_rate
        # The FinancialAccount the CurrencyConversion was performed on.
        attr_reader :financial_account
        # The from block containing what was debited.
        attr_reader :from
        # The id of the CurrencyConversion.
        attr_reader :id
        # If the CurrencyConversion was performed in livemode or not.
        attr_reader :livemode
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # The to block containing what was credited.
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
