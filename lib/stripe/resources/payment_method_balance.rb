# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # PaymentMethodBalance objects represent balances available on a payment method.
  # You can use v1/payment_methods/:id/check_balance to check the balance of a payment method.
  class PaymentMethodBalance < APIResource
    OBJECT_NAME = "payment_method_balance"
    def self.object_name
      "payment_method_balance"
    end

    class Balance < Stripe::StripeObject
      class FrMealVoucher < Stripe::StripeObject
        class Available < Stripe::StripeObject
          # The amount of the balance.
          attr_reader :amount
          # The currency of the balance.
          attr_reader :currency

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The hashes of balances and amounts for available balances.
        attr_reader :available

        def self.inner_class_types
          @inner_class_types = { available: Available }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # The available FR Meal Voucher balances.
      attr_reader :fr_meal_voucher

      def self.inner_class_types
        @inner_class_types = { fr_meal_voucher: FrMealVoucher }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
    # The time at which the balance was calculated. Measured in seconds since the Unix epoch.
    attr_reader :as_of
    # BalanceEntry contain information about every individual balance type of a card.
    attr_reader :balance
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
