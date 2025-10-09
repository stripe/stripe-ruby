# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # PaymentMethodBalance objects represent balances available on a payment method.
  # You can use v1/payment_methods/:id/check_balance to check the balance of a payment method.
  class PaymentMethodBalance < APIResource
    class Balance < ::Stripe::StripeObject
      class FrMealVoucher < ::Stripe::StripeObject
        class Available < ::Stripe::StripeObject
          # The amount of the balance.
          sig { returns(Integer) }
          def amount; end
          # The currency of the balance.
          sig { returns(String) }
          def currency; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The hashes of balances and amounts for available balances.
        sig { returns(T.nilable(T::Array[Available])) }
        def available; end
        def self.inner_class_types
          @inner_class_types = {available: Available}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # The available FR Meal Voucher balances.
      sig { returns(T.nilable(FrMealVoucher)) }
      def fr_meal_voucher; end
      def self.inner_class_types
        @inner_class_types = {fr_meal_voucher: FrMealVoucher}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    # The time at which the balance was calculated. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    def as_of; end
    # BalanceEntry contain information about every individual balance type of a card.
    sig { returns(Balance) }
    def balance; end
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    def livemode; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
  end
end