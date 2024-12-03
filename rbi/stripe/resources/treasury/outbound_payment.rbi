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
            # City, district, suburb, town, or village.
            sig { returns(T.nilable(String)) }
            attr_reader :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            attr_reader :country
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            attr_reader :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            attr_reader :line2
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            attr_reader :postal_code
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            attr_reader :state
          end
          # Attribute for field address
          sig { returns(Address) }
          attr_reader :address
          # Email address.
          sig { returns(T.nilable(String)) }
          attr_reader :email
          # Full name.
          sig { returns(T.nilable(String)) }
          attr_reader :name
        end
        class FinancialAccount < Stripe::StripeObject
          # Token of the FinancialAccount.
          sig { returns(String) }
          attr_reader :id
          # The rails used to send funds.
          sig { returns(String) }
          attr_reader :network
        end
        class UsBankAccount < Stripe::StripeObject
          # Account holder type: individual or company.
          sig { returns(T.nilable(String)) }
          attr_reader :account_holder_type
          # Account type: checkings or savings. Defaults to checking if omitted.
          sig { returns(T.nilable(String)) }
          attr_reader :account_type
          # Name of the bank associated with the bank account.
          sig { returns(T.nilable(String)) }
          attr_reader :bank_name
          # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
          sig { returns(T.nilable(String)) }
          attr_reader :fingerprint
          # Last four digits of the bank account number.
          sig { returns(T.nilable(String)) }
          attr_reader :last4
          # ID of the mandate used to make this payment.
          sig { returns(T.any(String, Stripe::Mandate)) }
          attr_reader :mandate
          # The network rails used. See the [docs](https://stripe.com/docs/treasury/money-movement/timelines) to learn more about money movement timelines for each network type.
          sig { returns(String) }
          attr_reader :network
          # Routing number of the bank account.
          sig { returns(T.nilable(String)) }
          attr_reader :routing_number
        end
        # Attribute for field billing_details
        sig { returns(BillingDetails) }
        attr_reader :billing_details
        # Attribute for field financial_account
        sig { returns(FinancialAccount) }
        attr_reader :financial_account
        # The type of the payment method used in the OutboundPayment.
        sig { returns(String) }
        attr_reader :type
        # Attribute for field us_bank_account
        sig { returns(UsBankAccount) }
        attr_reader :us_bank_account
      end
      class EndUserDetails < Stripe::StripeObject
        # IP address of the user initiating the OutboundPayment. Set if `present` is set to `true`. IP address collection is required for risk and compliance reasons. This will be used to help determine if the OutboundPayment is authorized or should be blocked.
        sig { returns(T.nilable(String)) }
        attr_reader :ip_address
        # `true` if the OutboundPayment creation request is being made on behalf of an end user by a platform. Otherwise, `false`.
        sig { returns(T::Boolean) }
        attr_reader :present
      end
      class ReturnedDetails < Stripe::StripeObject
        # Reason for the return.
        sig { returns(String) }
        attr_reader :code
        # The Transaction associated with this object.
        sig { returns(T.any(String, Stripe::Treasury::Transaction)) }
        attr_reader :transaction
      end
      class StatusTransitions < Stripe::StripeObject
        # Timestamp describing when an OutboundPayment changed status to `canceled`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :canceled_at
        # Timestamp describing when an OutboundPayment changed status to `failed`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :failed_at
        # Timestamp describing when an OutboundPayment changed status to `posted`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :posted_at
        # Timestamp describing when an OutboundPayment changed status to `returned`.
        sig { returns(T.nilable(Integer)) }
        attr_reader :returned_at
      end
      class TrackingDetails < Stripe::StripeObject
        class Ach < Stripe::StripeObject
          # ACH trace ID of the OutboundPayment for payments sent over the `ach` network.
          sig { returns(String) }
          attr_reader :trace_id
        end
        class UsDomesticWire < Stripe::StripeObject
          # CHIPS System Sequence Number (SSN) of the OutboundPayment for payments sent over the `us_domestic_wire` network.
          sig { returns(T.nilable(String)) }
          attr_reader :chips
          # IMAD of the OutboundPayment for payments sent over the `us_domestic_wire` network.
          sig { returns(T.nilable(String)) }
          attr_reader :imad
          # OMAD of the OutboundPayment for payments sent over the `us_domestic_wire` network.
          sig { returns(T.nilable(String)) }
          attr_reader :omad
        end
        # Attribute for field ach
        sig { returns(Ach) }
        attr_reader :ach
        # The US bank account network used to send funds.
        sig { returns(String) }
        attr_reader :type
        # Attribute for field us_domestic_wire
        sig { returns(UsDomesticWire) }
        attr_reader :us_domestic_wire
      end
      # Amount (in cents) transferred.
      sig { returns(Integer) }
      attr_reader :amount

      # Returns `true` if the object can be canceled, and `false` otherwise.
      sig { returns(T::Boolean) }
      attr_reader :cancelable

      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_reader :created

      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      attr_reader :currency

      # ID of the [customer](https://stripe.com/docs/api/customers) to whom an OutboundPayment is sent.
      sig { returns(T.nilable(String)) }
      attr_reader :customer

      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(T.nilable(String)) }
      attr_reader :description

      # The PaymentMethod via which an OutboundPayment is sent. This field can be empty if the OutboundPayment was created using `destination_payment_method_data`.
      sig { returns(T.nilable(String)) }
      attr_reader :destination_payment_method

      # Details about the PaymentMethod for an OutboundPayment.
      sig { returns(T.nilable(DestinationPaymentMethodDetails)) }
      attr_reader :destination_payment_method_details

      # Details about the end user.
      sig { returns(T.nilable(EndUserDetails)) }
      attr_reader :end_user_details

      # The date when funds are expected to arrive in the destination account.
      sig { returns(Integer) }
      attr_reader :expected_arrival_date

      # The FinancialAccount that funds were pulled from.
      sig { returns(String) }
      attr_reader :financial_account

      # A [hosted transaction receipt](https://stripe.com/docs/treasury/moving-money/regulatory-receipts) URL that is provided when money movement is considered regulated under Stripe's money transmission licenses.
      sig { returns(T.nilable(String)) }
      attr_reader :hosted_regulatory_receipt_url

      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode

      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata

      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object

      # Details about a returned OutboundPayment. Only set when the status is `returned`.
      sig { returns(T.nilable(ReturnedDetails)) }
      attr_reader :returned_details

      # The description that appears on the receiving end for an OutboundPayment (for example, bank statement for external bank transfer).
      sig { returns(String) }
      attr_reader :statement_descriptor

      # Current status of the OutboundPayment: `processing`, `failed`, `posted`, `returned`, `canceled`. An OutboundPayment is `processing` if it has been created and is pending. The status changes to `posted` once the OutboundPayment has been "confirmed" and funds have left the account, or to `failed` or `canceled`. If an OutboundPayment fails to arrive at its destination, its status will change to `returned`.
      sig { returns(String) }
      attr_reader :status

      # Attribute for field status_transitions
      sig { returns(StatusTransitions) }
      attr_reader :status_transitions

      # Details about network-specific tracking information if available.
      sig { returns(T.nilable(TrackingDetails)) }
      attr_reader :tracking_details

      # The Transaction associated with this object.
      sig { returns(T.any(String, Stripe::Treasury::Transaction)) }
      attr_reader :transaction
    end
  end
end