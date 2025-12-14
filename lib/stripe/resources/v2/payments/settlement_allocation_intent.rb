# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module V2
    module Payments
      # SettlementAllocationIntent resource.
      class SettlementAllocationIntent < APIResource
        OBJECT_NAME = "v2.payments.settlement_allocation_intent"
        def self.object_name
          "v2.payments.settlement_allocation_intent"
        end

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

        class StatusDetails < ::Stripe::StripeObject
          class Errored < ::Stripe::StripeObject
            # Stripe doc link to debug the issue.
            attr_reader :doc_url
            # User Message detailing the reason code and possible resolution .
            attr_reader :message
            # Open Enum. The `errored` status reason.
            attr_reader :reason_code

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Hash that provides additional information regarding the reason behind a `errored` SettlementAllocationIntent status. It is only present when the SettlementAllocationIntent status is `errored`.
          attr_reader :errored

          def self.inner_class_types
            @inner_class_types = { errored: Errored }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The amount and currency of the SettlementAllocationIntent.
        attr_reader :amount
        # Timestamp at which SettlementAllocationIntent was created .
        attr_reader :created
        # Date when we expect to receive the funds.
        attr_reader :expected_settlement_date
        # FinancialAccount ID where the funds are expected.
        attr_reader :financial_account
        # Unique identifier for the SettlementAllocationIntent.
        attr_reader :id
        # List of ReceivedCredits that matched with the SettlementAllocationIntent.
        attr_reader :linked_credits
        # Metadata associated with the SettlementAllocationIntent.
        attr_reader :metadata
        # String representing the object's type. Objects of the same type share the same value of the object field.
        attr_reader :object
        # Reference for the SettlementAllocationIntent. This is the transaction reference used by payments processor to send funds to Stripe .
        attr_reader :reference
        # SettlementAllocationIntent status.
        attr_reader :status
        # Status details for a SettlementAllocationIntent in `errored` state.
        attr_reader :status_details
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        attr_reader :livemode

        def self.inner_class_types
          @inner_class_types = { amount: Amount, status_details: StatusDetails }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
    end
  end
end
