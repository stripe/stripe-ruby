# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Treasury
    # Use [OutboundPayments](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/out-of/outbound-payments) to send funds to another party's external bank account or [FinancialAccount](https://stripe.com/docs/api#financial_accounts). To send money to an account belonging to the same user, use an [OutboundTransfer](https://stripe.com/docs/api#outbound_transfers).
    #
    # Simulate OutboundPayment state changes with the `/v1/test_helpers/treasury/outbound_payments` endpoints. These methods can only be called on test mode objects.
    #
    # Related guide: [Moving money with Treasury using OutboundPayment objects](https://docs.stripe.com/docs/treasury/moving-money/financial-accounts/out-of/outbound-payments)
    class OutboundPayment < APIResource
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
        class FinancialAccount < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :id
          sig { returns(String) }
          attr_reader :network
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
        sig { returns(FinancialAccount) }
        attr_reader :financial_account
        sig { returns(String) }
        attr_reader :type
        sig { returns(UsBankAccount) }
        attr_reader :us_bank_account
      end
      class EndUserDetails < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :ip_address
        sig { returns(T::Boolean) }
        attr_reader :present
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
      # ID of the [customer](https://stripe.com/docs/api/customers) to whom an OutboundPayment is sent.
      attr_reader :customer
      sig { returns(T.nilable(String)) }
      # An arbitrary string attached to the object. Often useful for displaying to users.
      attr_reader :description
      sig { returns(T.nilable(String)) }
      # The PaymentMethod via which an OutboundPayment is sent. This field can be empty if the OutboundPayment was created using `destination_payment_method_data`.
      attr_reader :destination_payment_method
      sig { returns(T.nilable(DestinationPaymentMethodDetails)) }
      # Details about the PaymentMethod for an OutboundPayment.
      attr_reader :destination_payment_method_details
      sig { returns(T.nilable(EndUserDetails)) }
      # Details about the end user.
      attr_reader :end_user_details
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
      sig { returns(String) }
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      sig { returns(T.nilable(ReturnedDetails)) }
      # Details about a returned OutboundPayment. Only set when the status is `returned`.
      attr_reader :returned_details
      sig { returns(String) }
      # The description that appears on the receiving end for an OutboundPayment (for example, bank statement for external bank transfer).
      attr_reader :statement_descriptor
      sig { returns(String) }
      # Current status of the OutboundPayment: `processing`, `failed`, `posted`, `returned`, `canceled`. An OutboundPayment is `processing` if it has been created and is pending. The status changes to `posted` once the OutboundPayment has been "confirmed" and funds have left the account, or to `failed` or `canceled`. If an OutboundPayment fails to arrive at its destination, its status will change to `returned`.
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