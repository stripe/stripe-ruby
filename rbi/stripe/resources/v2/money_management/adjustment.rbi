# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module MoneyManagement
      # Adjustments represent Stripe-initiated credits or debits to a user balance. They might be used to amend balances due to technical or operational error.
      class Adjustment < APIResource
        class AdjustedFlow < ::Stripe::StripeObject
          # Closed Enum. If applicable, the type of flow linked to this Adjustment. The field matching this value will contain the ID of the flow.
          sig { returns(String) }
          def type; end
          # If applicable, the ID of the Adjustment linked to this Adjustment.
          sig { returns(T.nilable(String)) }
          def adjustment; end
          # If applicable, the ID of the InboundTransfer linked to this Adjustment.
          sig { returns(T.nilable(String)) }
          def inbound_transfer; end
          # If applicable, the ID of the OutboundPayment linked to this Adjustment.
          sig { returns(T.nilable(String)) }
          def outbound_payment; end
          # If applicable, the ID of the OutboundTransfer linked to this Adjustment.
          sig { returns(T.nilable(String)) }
          def outbound_transfer; end
          # If applicable, the ID of the ReceivedCredit linked to this Adjustment.
          sig { returns(T.nilable(String)) }
          def received_credit; end
          # If applicable, the ID of the ReceivedDebit linked to this Adjustment.
          sig { returns(T.nilable(String)) }
          def received_debit; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
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
        # If applicable, contains information about the original flow linked to this Adjustment.
        sig { returns(T.nilable(AdjustedFlow)) }
        def adjusted_flow; end
        # The amount of the Adjustment.
        sig { returns(Amount) }
        def amount; end
        # Time at which the object was created. Represented as a RFC 3339 date & time UTC value in millisecond precision, for example: 2022-09-18T13:22:18.123Z.
        sig { returns(String) }
        def created; end
        # Description of the Adjustment and what it was used for.
        sig { returns(T.nilable(String)) }
        def description; end
        # The FinancialAccount that this adjustment is for.
        sig { returns(String) }
        def financial_account; end
        # Unique identifier for the object.
        sig { returns(String) }
        def id; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # A link to the Stripe-hosted receipt that is provided when money movement is considered regulated under Stripe’s money transmission licenses. The receipt link remains active for 60 days from the Adjustment creation date. After this period, the link will expire and the receipt url value will be null.
        sig { returns(T.nilable(String)) }
        def receipt_url; end
        # A reference for the Adjustment that associates it with related records or operations.
        sig { returns(T.nilable(String)) }
        def reference; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end