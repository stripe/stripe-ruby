# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A GiftCardOperation represents an operation performed on a third-party gift card,
  # such as activation, reload, cashout, balance check, or void.
  class GiftCardOperation < APIResource
    OBJECT_NAME = "gift_card_operation"
    def self.object_name
      "gift_card_operation"
    end

    class Activation < ::Stripe::StripeObject
      class Balance < ::Stripe::StripeObject
        # The balance amount.
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
      # The balance amount of a gift card, including currency and amount.
      attr_reader :balance

      def self.inner_class_types
        @inner_class_types = { balance: Balance }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end

    class ActivationVoid < ::Stripe::StripeObject
      # The operation that was voided.
      attr_reader :voided_operation

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
      # The balance amount of a gift card, including currency and amount.
      attr_reader :balance

      def self.inner_class_types
        @inner_class_types = { balance: Balance }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end

    class Cashout < ::Stripe::StripeObject
      class Balance < ::Stripe::StripeObject
        # The balance amount.
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

      class PreviousBalance < ::Stripe::StripeObject
        # The balance amount.
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
      # The balance amount of a gift card, including currency and amount.
      attr_reader :balance
      # The balance before the operation.
      attr_reader :previous_balance

      def self.inner_class_types
        @inner_class_types = { balance: Balance, previous_balance: PreviousBalance }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end

    class CashoutVoid < ::Stripe::StripeObject
      class Balance < ::Stripe::StripeObject
        # The balance amount.
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
      # The balance amount of a gift card, including currency and amount.
      attr_reader :balance
      # The operation that was voided.
      attr_reader :voided_operation

      def self.inner_class_types
        @inner_class_types = { balance: Balance }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end

    class Reload < ::Stripe::StripeObject
      class Balance < ::Stripe::StripeObject
        # The balance amount.
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

      class PreviousBalance < ::Stripe::StripeObject
        # The balance amount.
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
      # The balance amount of a gift card, including currency and amount.
      attr_reader :balance
      # The balance before the operation.
      attr_reader :previous_balance

      def self.inner_class_types
        @inner_class_types = { balance: Balance, previous_balance: PreviousBalance }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end

    class ReloadVoid < ::Stripe::StripeObject
      class Balance < ::Stripe::StripeObject
        # The balance amount.
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
      # The balance amount of a gift card, including currency and amount.
      attr_reader :balance
      # The operation that was voided.
      attr_reader :voided_operation

      def self.inner_class_types
        @inner_class_types = { balance: Balance }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
    # Details about a gift card activation operation.
    attr_reader :activation
    # Details about a gift card activation void operation.
    attr_reader :activation_void
    # Details about a gift card balance check operation.
    attr_reader :balance_check
    # Details about a gift card cashout operation.
    attr_reader :cashout
    # Details about a gift card cashout void operation.
    attr_reader :cashout_void
    # The timestamp of when this operation was completed.
    attr_reader :completed_at
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # The failure code of the operation. Only present if the status is failed.
    attr_reader :failure_code
    # The gift card this operation was performed on.
    attr_reader :gift_card
    # Unique identifier for the object.
    attr_reader :id
    # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
    attr_reader :livemode
    # ID of the location that this transaction's reader is assigned to.
    attr_reader :location
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # The connected account whose credentials were used to perform this operation.
    attr_reader :on_behalf_of
    # ID of the reader this transaction was made on.
    attr_reader :reader
    # Details about a gift card reload operation.
    attr_reader :reload
    # Details about a gift card reload void operation.
    attr_reader :reload_void
    # The status of the operation.
    attr_reader :status
    # The type of operation performed.
    attr_reader :type

    def self.inner_class_types
      @inner_class_types = {
        activation: Activation,
        activation_void: ActivationVoid,
        balance_check: BalanceCheck,
        cashout: Cashout,
        cashout_void: CashoutVoid,
        reload: Reload,
        reload_void: ReloadVoid,
      }
    end

    def self.field_remappings
      @field_remappings = {}
    end
  end
end
