# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module V2
    module Payments
      # SettlementAllocationIntent resource.
      class SettlementAllocationIntent < APIResource
        class Amount < ::Stripe::StripeObject
          # A non-negative integer representing how much to charge in the [smallest currency unit](https://docs.stripe.com/currencies#minor-units).
          sig { returns(T.nilable(Integer)) }
          def value; end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(T.nilable(String)) }
          def currency; end
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
            sig { returns(T.nilable(String)) }
            def doc_url; end
            # User Message detailing the reason code and possible resolution .
            sig { returns(String) }
            def message; end
            # Open Enum. The `errored` status reason.
            sig { returns(String) }
            def reason_code; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Hash that provides additional information regarding the reason behind a `errored` SettlementAllocationIntent status. It is only present when the SettlementAllocationIntent status is `errored`.
          sig { returns(T.nilable(Errored)) }
          def errored; end
          def self.inner_class_types
            @inner_class_types = {errored: Errored}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # The amount and currency of the SettlementAllocationIntent.
        sig { returns(Amount) }
        def amount; end
        # Timestamp at which SettlementAllocationIntent was created .
        sig { returns(String) }
        def created; end
        # Date when we expect to receive the funds.
        sig { returns(String) }
        def expected_settlement_date; end
        # FinancialAccount ID where the funds are expected.
        sig { returns(String) }
        def financial_account; end
        # Unique identifier for the SettlementAllocationIntent.
        sig { returns(String) }
        def id; end
        # List of ReceivedCredits that matched with the SettlementAllocationIntent.
        sig { returns(T::Array[String]) }
        def linked_credits; end
        # Metadata associated with the SettlementAllocationIntent.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        # String representing the object's type. Objects of the same type share the same value of the object field.
        sig { returns(String) }
        def object; end
        # Reference for the SettlementAllocationIntent. This is the transaction reference used by payments processor to send funds to Stripe .
        sig { returns(String) }
        def reference; end
        # SettlementAllocationIntent status.
        sig { returns(String) }
        def status; end
        # Status details for a SettlementAllocationIntent in `errored` state.
        sig { returns(T.nilable(StatusDetails)) }
        def status_details; end
        # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
        sig { returns(T::Boolean) }
        def livemode; end
      end
    end
  end
end