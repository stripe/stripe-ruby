# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A GiftCardOperation represents an operation performed on a third-party gift card,
  # such as activation, deactivation, reload, cashout, balance check, or void.
  class GiftCardOperation < APIResource
    class Activation < ::Stripe::StripeObject
      class Balance < ::Stripe::StripeObject
        # The balance amount.
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
      # The balance amount of a gift card, including currency and amount.
      sig { returns(Balance) }
      def balance; end
      def self.inner_class_types
        @inner_class_types = {balance: Balance}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class ActivationVoid < ::Stripe::StripeObject
      # The operation that was voided.
      sig { returns(String) }
      def voided_operation; end
      def self.inner_class_types
        @inner_class_types = {}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class BalanceCheck < ::Stripe::StripeObject
      class Balance < ::Stripe::StripeObject
        # The balance amount.
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
      # The balance amount of a gift card, including currency and amount.
      sig { returns(Balance) }
      def balance; end
      def self.inner_class_types
        @inner_class_types = {balance: Balance}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class Cashout < ::Stripe::StripeObject
      class Balance < ::Stripe::StripeObject
        # The balance amount.
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
      class PreviousBalance < ::Stripe::StripeObject
        # The balance amount.
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
      # The balance amount of a gift card, including currency and amount.
      sig { returns(Balance) }
      def balance; end
      # The balance before the operation.
      sig { returns(T.nilable(PreviousBalance)) }
      def previous_balance; end
      def self.inner_class_types
        @inner_class_types = {balance: Balance, previous_balance: PreviousBalance}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class CashoutVoid < ::Stripe::StripeObject
      class Balance < ::Stripe::StripeObject
        # The balance amount.
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
      # The balance amount of a gift card, including currency and amount.
      sig { returns(Balance) }
      def balance; end
      # The operation that was voided.
      sig { returns(String) }
      def voided_operation; end
      def self.inner_class_types
        @inner_class_types = {balance: Balance}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class Deactivation < ::Stripe::StripeObject
      def self.inner_class_types
        @inner_class_types = {}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class Reload < ::Stripe::StripeObject
      class Balance < ::Stripe::StripeObject
        # The balance amount.
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
      class PreviousBalance < ::Stripe::StripeObject
        # The balance amount.
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
      # The balance amount of a gift card, including currency and amount.
      sig { returns(Balance) }
      def balance; end
      # The balance before the operation.
      sig { returns(T.nilable(PreviousBalance)) }
      def previous_balance; end
      def self.inner_class_types
        @inner_class_types = {balance: Balance, previous_balance: PreviousBalance}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    class ReloadVoid < ::Stripe::StripeObject
      class Balance < ::Stripe::StripeObject
        # The balance amount.
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
      # The balance amount of a gift card, including currency and amount.
      sig { returns(Balance) }
      def balance; end
      # The operation that was voided.
      sig { returns(String) }
      def voided_operation; end
      def self.inner_class_types
        @inner_class_types = {balance: Balance}
      end
      def self.field_remappings
        @field_remappings = {}
      end
    end
    # Details about a gift card activation operation.
    sig { returns(T.nilable(Activation)) }
    def activation; end
    # Details about a gift card activation void operation.
    sig { returns(T.nilable(ActivationVoid)) }
    def activation_void; end
    # Details about a gift card balance check operation.
    sig { returns(T.nilable(BalanceCheck)) }
    def balance_check; end
    # Details about a gift card cashout operation.
    sig { returns(T.nilable(Cashout)) }
    def cashout; end
    # Details about a gift card cashout void operation.
    sig { returns(T.nilable(CashoutVoid)) }
    def cashout_void; end
    # The timestamp of when this operation was completed.
    sig { returns(Integer) }
    def completed_at; end
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    sig { returns(Integer) }
    def created; end
    # Details about a gift card deactivation operation.
    sig { returns(T.nilable(Deactivation)) }
    def deactivation; end
    # The failure code of the operation. Only present if the status is failed.
    sig { returns(T.nilable(String)) }
    def failure_code; end
    # The gift card this operation was performed on.
    sig { returns(T.any(String, ::Stripe::GiftCard)) }
    def gift_card; end
    # Unique identifier for the object.
    sig { returns(String) }
    def id; end
    # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
    sig { returns(T::Boolean) }
    def livemode; end
    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    def object; end
    # The connected account whose credentials were used to perform this operation.
    sig { returns(T.nilable(String)) }
    def on_behalf_of; end
    # Details about a gift card reload operation.
    sig { returns(T.nilable(Reload)) }
    def reload; end
    # Details about a gift card reload void operation.
    sig { returns(T.nilable(ReloadVoid)) }
    def reload_void; end
    # The status of the operation.
    sig { returns(String) }
    def status; end
    # The type of operation performed.
    sig { returns(String) }
    def type; end
  end
end