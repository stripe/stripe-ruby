# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # The CurrencyConversion object. Contains details such as the amount debited and credited and the FinancialAccount the CurrencyConversion was performed on.
      class CurrencyConversion < APIResource
        class From < ::Stripe::StripeObject
          class Amount < ::Stripe::StripeObject
            # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
            sig { returns(Integer) }
            def value; end
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            def currency; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Amount object.
          sig { returns(Amount) }
          def amount; end
          def self.inner_class_types
            @inner_class_types = {amount: Amount}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class To < ::Stripe::StripeObject
          class Amount < ::Stripe::StripeObject
            # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
            sig { returns(Integer) }
            def value; end
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            def currency; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Amount object.
          sig { returns(Amount) }
          def amount; end
          def self.inner_class_types
            @inner_class_types = {amount: Amount}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The time the CurrencyConversion was created at.
        sig { returns(String) }
        def created; end
        # The exchange rate used when processing the CurrencyConversion.
        sig { returns(String) }
        def exchange_rate; end
        # The FinancialAccount the CurrencyConversion was performed on.
        sig { returns(String) }
        def financial_account; end
        # The from block containing what was debited.
        sig { returns(From) }
        def from; end
        # The id of the CurrencyConversion.
        sig { returns(String) }
        def id; end
        # If the CurrencyConversion was performed in livemode or not.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The to block containing what was credited.
        sig { returns(To) }
        def to; end
      end
    end
  end
end