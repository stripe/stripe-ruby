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
      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :gt
          # Minimum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :gte
          # Maximum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :lt
          # Maximum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :lte
          sig {
            params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
           }
          def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
        end
        # Only return OutboundPayments that were created during the given date interval.
        sig {
          returns(T.nilable(T.any(::Stripe::Treasury::OutboundPayment::ListParams::Created, Integer)))
         }
        attr_accessor :created
        # Only return OutboundPayments sent to this customer.
        sig { returns(T.nilable(String)) }
        attr_accessor :customer
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Returns objects associated with this FinancialAccount.
        sig { returns(String) }
        attr_accessor :financial_account
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :starting_after
        # Only return OutboundPayments that have the given status: `processing`, `failed`, `posted`, `returned`, or `canceled`.
        sig { returns(T.nilable(String)) }
        attr_accessor :status
        sig {
          params(created: T.nilable(T.any(::Stripe::Treasury::OutboundPayment::ListParams::Created, Integer)), customer: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), financial_account: String, limit: T.nilable(Integer), starting_after: T.nilable(String), status: T.nilable(String)).void
         }
        def initialize(
          created: nil,
          customer: nil,
          ending_before: nil,
          expand: nil,
          financial_account: nil,
          limit: nil,
          starting_after: nil,
          status: nil
        ); end
      end
      class CreateParams < Stripe::RequestParams
        class DestinationPaymentMethodData < Stripe::RequestParams
          class BillingDetails < Stripe::RequestParams
            class Address < Stripe::RequestParams
              # City, district, suburb, town, or village.
              sig { returns(T.nilable(String)) }
              attr_accessor :city
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(T.nilable(String)) }
              attr_accessor :country
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(T.nilable(String)) }
              attr_accessor :line1
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(T.nilable(String)) }
              attr_accessor :line2
              # ZIP or postal code.
              sig { returns(T.nilable(String)) }
              attr_accessor :postal_code
              # State, county, province, or region.
              sig { returns(T.nilable(String)) }
              attr_accessor :state
              sig {
                params(city: T.nilable(String), country: T.nilable(String), line1: T.nilable(String), line2: T.nilable(String), postal_code: T.nilable(String), state: T.nilable(String)).void
               }
              def initialize(
                city: nil,
                country: nil,
                line1: nil,
                line2: nil,
                postal_code: nil,
                state: nil
              ); end
            end
            # Billing address.
            sig {
              returns(T.nilable(T.any(String, ::Stripe::Treasury::OutboundPayment::CreateParams::DestinationPaymentMethodData::BillingDetails::Address)))
             }
            attr_accessor :address
            # Email address.
            sig { returns(T.nilable(String)) }
            attr_accessor :email
            # Full name.
            sig { returns(T.nilable(String)) }
            attr_accessor :name
            # Billing phone number (including extension).
            sig { returns(T.nilable(String)) }
            attr_accessor :phone
            sig {
              params(address: T.nilable(T.any(String, ::Stripe::Treasury::OutboundPayment::CreateParams::DestinationPaymentMethodData::BillingDetails::Address)), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
             }
            def initialize(address: nil, email: nil, name: nil, phone: nil); end
          end
          class UsBankAccount < Stripe::RequestParams
            # Account holder type: individual or company.
            sig { returns(T.nilable(String)) }
            attr_accessor :account_holder_type
            # Account number of the bank account.
            sig { returns(T.nilable(String)) }
            attr_accessor :account_number
            # Account type: checkings or savings. Defaults to checking if omitted.
            sig { returns(T.nilable(String)) }
            attr_accessor :account_type
            # The ID of a Financial Connections Account to use as a payment method.
            sig { returns(T.nilable(String)) }
            attr_accessor :financial_connections_account
            # Routing number of the bank account.
            sig { returns(T.nilable(String)) }
            attr_accessor :routing_number
            sig {
              params(account_holder_type: T.nilable(String), account_number: T.nilable(String), account_type: T.nilable(String), financial_connections_account: T.nilable(String), routing_number: T.nilable(String)).void
             }
            def initialize(
              account_holder_type: nil,
              account_number: nil,
              account_type: nil,
              financial_connections_account: nil,
              routing_number: nil
            ); end
          end
          # Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
          sig {
            returns(T.nilable(::Stripe::Treasury::OutboundPayment::CreateParams::DestinationPaymentMethodData::BillingDetails))
           }
          attr_accessor :billing_details
          # Required if type is set to `financial_account`. The FinancialAccount ID to send funds to.
          sig { returns(T.nilable(String)) }
          attr_accessor :financial_account
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_accessor :metadata
          # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
          sig { returns(String) }
          attr_accessor :type
          # Required hash if type is set to `us_bank_account`.
          sig {
            returns(T.nilable(::Stripe::Treasury::OutboundPayment::CreateParams::DestinationPaymentMethodData::UsBankAccount))
           }
          attr_accessor :us_bank_account
          sig {
            params(billing_details: T.nilable(::Stripe::Treasury::OutboundPayment::CreateParams::DestinationPaymentMethodData::BillingDetails), financial_account: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), type: String, us_bank_account: T.nilable(::Stripe::Treasury::OutboundPayment::CreateParams::DestinationPaymentMethodData::UsBankAccount)).void
           }
          def initialize(
            billing_details: nil,
            financial_account: nil,
            metadata: nil,
            type: nil,
            us_bank_account: nil
          ); end
        end
        class DestinationPaymentMethodOptions < Stripe::RequestParams
          class UsBankAccount < Stripe::RequestParams
            # Specifies the network rails to be used. If not set, will default to the PaymentMethod's preferred network. See the [docs](https://stripe.com/docs/treasury/money-movement/timelines) to learn more about money movement timelines for each network type.
            sig { returns(T.nilable(String)) }
            attr_accessor :network
            sig { params(network: T.nilable(String)).void }
            def initialize(network: nil); end
          end
          # Optional fields for `us_bank_account`.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::Treasury::OutboundPayment::CreateParams::DestinationPaymentMethodOptions::UsBankAccount)))
           }
          attr_accessor :us_bank_account
          sig {
            params(us_bank_account: T.nilable(T.any(String, ::Stripe::Treasury::OutboundPayment::CreateParams::DestinationPaymentMethodOptions::UsBankAccount))).void
           }
          def initialize(us_bank_account: nil); end
        end
        class EndUserDetails < Stripe::RequestParams
          # IP address of the user initiating the OutboundPayment. Must be supplied if `present` is set to `true`.
          sig { returns(T.nilable(String)) }
          attr_accessor :ip_address
          # `True` if the OutboundPayment creation request is being made on behalf of an end user by a platform. Otherwise, `false`.
          sig { returns(T::Boolean) }
          attr_accessor :present
          sig { params(ip_address: T.nilable(String), present: T::Boolean).void }
          def initialize(ip_address: nil, present: nil); end
        end
        # Amount (in cents) to be transferred.
        sig { returns(Integer) }
        attr_accessor :amount
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        attr_accessor :currency
        # ID of the customer to whom the OutboundPayment is sent. Must match the Customer attached to the `destination_payment_method` passed in.
        sig { returns(T.nilable(String)) }
        attr_accessor :customer
        # An arbitrary string attached to the object. Often useful for displaying to users.
        sig { returns(T.nilable(String)) }
        attr_accessor :description
        # The PaymentMethod to use as the payment instrument for the OutboundPayment. Exclusive with `destination_payment_method_data`.
        sig { returns(T.nilable(String)) }
        attr_accessor :destination_payment_method
        # Hash used to generate the PaymentMethod to be used for this OutboundPayment. Exclusive with `destination_payment_method`.
        sig {
          returns(T.nilable(::Stripe::Treasury::OutboundPayment::CreateParams::DestinationPaymentMethodData))
         }
        attr_accessor :destination_payment_method_data
        # Payment method-specific configuration for this OutboundPayment.
        sig {
          returns(T.nilable(::Stripe::Treasury::OutboundPayment::CreateParams::DestinationPaymentMethodOptions))
         }
        attr_accessor :destination_payment_method_options
        # End user details.
        sig {
          returns(T.nilable(::Stripe::Treasury::OutboundPayment::CreateParams::EndUserDetails))
         }
        attr_accessor :end_user_details
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # The FinancialAccount to pull funds from.
        sig { returns(String) }
        attr_accessor :financial_account
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # The description that appears on the receiving end for this OutboundPayment (for example, bank statement for external bank transfer). Maximum 10 characters for `ach` payments, 140 characters for `us_domestic_wire` payments, or 500 characters for `stripe` network transfers. The default value is "payment".
        sig { returns(T.nilable(String)) }
        attr_accessor :statement_descriptor
        sig {
          params(amount: Integer, currency: String, customer: T.nilable(String), description: T.nilable(String), destination_payment_method: T.nilable(String), destination_payment_method_data: T.nilable(::Stripe::Treasury::OutboundPayment::CreateParams::DestinationPaymentMethodData), destination_payment_method_options: T.nilable(::Stripe::Treasury::OutboundPayment::CreateParams::DestinationPaymentMethodOptions), end_user_details: T.nilable(::Stripe::Treasury::OutboundPayment::CreateParams::EndUserDetails), expand: T.nilable(T::Array[String]), financial_account: String, metadata: T.nilable(T::Hash[String, String]), statement_descriptor: T.nilable(String)).void
         }
        def initialize(
          amount: nil,
          currency: nil,
          customer: nil,
          description: nil,
          destination_payment_method: nil,
          destination_payment_method_data: nil,
          destination_payment_method_options: nil,
          end_user_details: nil,
          expand: nil,
          financial_account: nil,
          metadata: nil,
          statement_descriptor: nil
        ); end
      end
      class CancelParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class UpdateParams < Stripe::RequestParams
        class TrackingDetails < Stripe::RequestParams
          class Ach < Stripe::RequestParams
            # ACH trace ID for funds sent over the `ach` network.
            sig { returns(String) }
            attr_accessor :trace_id
            sig { params(trace_id: String).void }
            def initialize(trace_id: nil); end
          end
          class UsDomesticWire < Stripe::RequestParams
            # CHIPS System Sequence Number (SSN) for funds sent over the `us_domestic_wire` network.
            sig { returns(T.nilable(String)) }
            attr_accessor :chips
            # IMAD for funds sent over the `us_domestic_wire` network.
            sig { returns(T.nilable(String)) }
            attr_accessor :imad
            # OMAD for funds sent over the `us_domestic_wire` network.
            sig { returns(T.nilable(String)) }
            attr_accessor :omad
            sig {
              params(chips: T.nilable(String), imad: T.nilable(String), omad: T.nilable(String)).void
             }
            def initialize(chips: nil, imad: nil, omad: nil); end
          end
          # ACH network tracking details.
          sig {
            returns(T.nilable(::Stripe::Treasury::OutboundPayment::UpdateParams::TrackingDetails::Ach))
           }
          attr_accessor :ach
          # The US bank account network used to send funds.
          sig { returns(String) }
          attr_accessor :type
          # US domestic wire network tracking details.
          sig {
            returns(T.nilable(::Stripe::Treasury::OutboundPayment::UpdateParams::TrackingDetails::UsDomesticWire))
           }
          attr_accessor :us_domestic_wire
          sig {
            params(ach: T.nilable(::Stripe::Treasury::OutboundPayment::UpdateParams::TrackingDetails::Ach), type: String, us_domestic_wire: T.nilable(::Stripe::Treasury::OutboundPayment::UpdateParams::TrackingDetails::UsDomesticWire)).void
           }
          def initialize(ach: nil, type: nil, us_domestic_wire: nil); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Details about network-specific tracking information.
        sig { returns(::Stripe::Treasury::OutboundPayment::UpdateParams::TrackingDetails) }
        attr_accessor :tracking_details
        sig {
          params(expand: T.nilable(T::Array[String]), tracking_details: ::Stripe::Treasury::OutboundPayment::UpdateParams::TrackingDetails).void
         }
        def initialize(expand: nil, tracking_details: nil); end
      end
      class FailParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class PostParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class ReturnOutboundPaymentParams < Stripe::RequestParams
        class ReturnedDetails < Stripe::RequestParams
          # The return code to be set on the OutboundPayment object.
          sig { returns(T.nilable(String)) }
          attr_accessor :code
          sig { params(code: T.nilable(String)).void }
          def initialize(code: nil); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Optional hash to set the return code.
        sig {
          returns(T.nilable(::Stripe::Treasury::OutboundPayment::ReturnOutboundPaymentParams::ReturnedDetails))
         }
        attr_accessor :returned_details
        sig {
          params(expand: T.nilable(T::Array[String]), returned_details: T.nilable(::Stripe::Treasury::OutboundPayment::ReturnOutboundPaymentParams::ReturnedDetails)).void
         }
        def initialize(expand: nil, returned_details: nil); end
      end
      # Cancel an OutboundPayment.
      sig {
        params(params: T.any(::Stripe::Treasury::OutboundPayment::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::OutboundPayment)
       }
      def cancel(params = {}, opts = {}); end

      # Cancel an OutboundPayment.
      sig {
        params(id: String, params: T.any(::Stripe::Treasury::OutboundPayment::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::OutboundPayment)
       }
      def self.cancel(id, params = {}, opts = {}); end

      # Creates an OutboundPayment.
      sig {
        params(params: T.any(::Stripe::Treasury::OutboundPayment::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::OutboundPayment)
       }
      def self.create(params = {}, opts = {}); end

      # Returns a list of OutboundPayments sent from the specified FinancialAccount.
      sig {
        params(params: T.any(::Stripe::Treasury::OutboundPayment::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end
    end
  end
end