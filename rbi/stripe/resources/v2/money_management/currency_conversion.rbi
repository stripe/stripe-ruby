# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # A Currency Conversion represents a standalone conversion between currencies in a [Financial Account](https://docs.stripe.com/api/v2/money-management/financial-accounts) or the payments balance.
      class CurrencyConversion < APIResource
        class From < ::Stripe::StripeObject
          # A specific amount.
          sig { returns(::Stripe::V2::Amount) }
          def amount; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class To < ::Stripe::StripeObject
          # A specific amount.
          sig { returns(::Stripe::V2::Amount) }
          def amount; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The time the Currency Conversion was created at.
        sig { returns(String) }
        def created; end
        # The exchange rate used, excluding applicable fees.
        sig { returns(String) }
        def exchange_rate; end
        # The ID of the Financial Account the Currency Conversion was created in. If `null`, it was created in the payments balance.
        sig { returns(T.nilable(String)) }
        def financial_account; end
        # The amount that was debited from the source currency.
        sig { returns(From) }
        def from; end
        # The ID of the Currency Conversion.
        sig { returns(String) }
        def id; end
        # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
        sig { returns(T::Boolean) }
        def livemode; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # The amount that was credited to the destination currency.
        sig { returns(To) }
        def to; end
      end
    end
  end
end