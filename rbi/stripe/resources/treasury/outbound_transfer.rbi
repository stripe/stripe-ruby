# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Treasury
    # Use [OutboundTransfers](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/out-of/outbound-transfers) to transfer funds from a [FinancialAccount](https://stripe.com/docs/api#financial_accounts) to a PaymentMethod belonging to the same entity. To send funds to a different party, use [OutboundPayments](https://stripe.com/docs/api#outbound_payments) instead. You can send funds over ACH rails or through a domestic wire transfer to a user's own external bank account.
    #
    # Simulate OutboundTransfer state changes with the `/v1/test_helpers/treasury/outbound_transfers` endpoints. These methods can only be called on test mode objects.
    #
    # Related guide: [Moving money with Treasury using OutboundTransfer objects](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/out-of/outbound-transfers)
    class OutboundTransfer < APIResource
      class DestinationPaymentMethodDetails < Stripe::StripeObject
        class BillingDetails < Stripe::StripeObject
          class Address < Stripe::StripeObject
            sig { returns(T.nilable(String)) }
            attr_reader :city
            sig { returns(T.nilable(String)) }
            attr_reader :country
            sig { returns(T.nilable(String)) }
            attr_reader :line1
            sig { returns(T.nilable(String)) }
            attr_reader :line2
            sig { returns(T.nilable(String)) }
            attr_reader :postal_code
            sig { returns(T.nilable(String)) }
            attr_reader :state
          end
          sig { returns(Address) }
          attr_reader :address
          sig { returns(T.nilable(String)) }
          attr_reader :email
          sig { returns(T.nilable(String)) }
          attr_reader :name
        end
        class UsBankAccount < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :account_holder_type
          sig { returns(T.nilable(String)) }
          attr_reader :account_type
          sig { returns(T.nilable(String)) }
          attr_reader :bank_name
          sig { returns(T.nilable(String)) }
          attr_reader :fingerprint
          sig { returns(T.nilable(String)) }
          attr_reader :last4
          sig { returns(T.any(String, Stripe::Mandate)) }
          attr_reader :mandate
          sig { returns(String) }
          attr_reader :network
          sig { returns(T.nilable(String)) }
          attr_reader :routing_number
        end
        sig { returns(BillingDetails) }
        attr_reader :billing_details
        sig { returns(String) }
        attr_reader :type
        sig { returns(UsBankAccount) }
        attr_reader :us_bank_account
      end
      class NetworkDetails < Stripe::StripeObject
        class Ach < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :addenda
        end
        sig { returns(T.nilable(Ach)) }
        attr_reader :ach
        sig { returns(String) }
        attr_reader :type
      end
      class ReturnedDetails < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :code
        sig { returns(T.any(String, Stripe::Treasury::Transaction)) }
        attr_reader :transaction
      end
      class StatusTransitions < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :canceled_at
        sig { returns(T.nilable(Integer)) }
        attr_reader :failed_at
        sig { returns(T.nilable(Integer)) }
        attr_reader :posted_at
        sig { returns(T.nilable(Integer)) }
        attr_reader :returned_at
      end
      class TrackingDetails < Stripe::StripeObject
        class Ach < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :trace_id
        end
        class UsDomesticWire < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :chips
          sig { returns(T.nilable(String)) }
          attr_reader :imad
          sig { returns(T.nilable(String)) }
          attr_reader :omad
        end
        sig { returns(Ach) }
        attr_reader :ach
        sig { returns(String) }
        attr_reader :type
        sig { returns(UsDomesticWire) }
        attr_reader :us_domestic_wire
      end
      sig { returns(Integer) }
      # Amount (in cents) transferred.
      attr_reader :amount
      sig { returns(T::Boolean) }
      # Returns `true` if the object can be canceled, and `false` otherwise.
      attr_reader :cancelable
      sig { returns(Integer) }
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      sig { returns(String) }
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      sig { returns(T.nilable(String)) }
      # An arbitrary string attached to the object. Often useful for displaying to users.
      attr_reader :description
      sig { returns(T.nilable(String)) }
      # The PaymentMethod used as the payment instrument for an OutboundTransfer.
      attr_reader :destination_payment_method
      sig { returns(DestinationPaymentMethodDetails) }
      # Attribute for field destination_payment_method_details
      attr_reader :destination_payment_method_details
      sig { returns(Integer) }
      # The date when funds are expected to arrive in the destination account.
      attr_reader :expected_arrival_date
      sig { returns(String) }
      # The FinancialAccount that funds were pulled from.
      attr_reader :financial_account
      sig { returns(T.nilable(String)) }
      # A [hosted transaction receipt](https://stripe.com/docs/treasury/moving-money/regulatory-receipts) URL that is provided when money movement is considered regulated under Stripe's money transmission licenses.
      attr_reader :hosted_regulatory_receipt_url
      sig { returns(String) }
      # Unique identifier for the object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(T::Hash[String, String]) }
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      sig { returns(T.nilable(NetworkDetails)) }
      # Details about the network used for the OutboundTransfer.
      attr_reader :network_details
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(T.nilable(ReturnedDetails)) }
      # Details about a returned OutboundTransfer. Only set when the status is `returned`.
      attr_reader :returned_details
      sig { returns(String) }
      # Information about the OutboundTransfer to be sent to the recipient account.
      attr_reader :statement_descriptor
      sig { returns(String) }
      # Current status of the OutboundTransfer: `processing`, `failed`, `canceled`, `posted`, `returned`. An OutboundTransfer is `processing` if it has been created and is pending. The status changes to `posted` once the OutboundTransfer has been "confirmed" and funds have left the account, or to `failed` or `canceled`. If an OutboundTransfer fails to arrive at its destination, its status will change to `returned`.
      attr_reader :status
      sig { returns(StatusTransitions) }
      # Attribute for field status_transitions
      attr_reader :status_transitions
      sig { returns(T.nilable(TrackingDetails)) }
      # Details about network-specific tracking information if available.
      attr_reader :tracking_details
      sig { returns(T.any(String, Stripe::Treasury::Transaction)) }
      # The Transaction associated with this object.
      attr_reader :transaction
    end
  end
end