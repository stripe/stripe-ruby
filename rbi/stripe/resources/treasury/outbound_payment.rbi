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
            def city; end
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(T.nilable(String)) }
            def country; end
            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(T.nilable(String)) }
            def line1; end
            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(T.nilable(String)) }
            def line2; end
            # ZIP or postal code.
            sig { returns(T.nilable(String)) }
            def postal_code; end
            # State, county, province, or region.
            sig { returns(T.nilable(String)) }
            def state; end
          end
          # Attribute for field address
          sig { returns(Address) }
          def address; end
          # Email address.
          sig { returns(T.nilable(String)) }
          def email; end
          # Full name.
          sig { returns(T.nilable(String)) }
          def name; end
        end
        class FinancialAccount < Stripe::StripeObject
          # Token of the FinancialAccount.
          sig { returns(String) }
          def id; end
          # The rails used to send funds.
          sig { returns(String) }
          def network; end
        end
        class UsBankAccount < Stripe::StripeObject
          # Account holder type: individual or company.
          sig { returns(T.nilable(String)) }
          def account_holder_type; end
          # Account type: checkings or savings. Defaults to checking if omitted.
          sig { returns(T.nilable(String)) }
          def account_type; end
          # Name of the bank associated with the bank account.
          sig { returns(T.nilable(String)) }
          def bank_name; end
          # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
          sig { returns(T.nilable(String)) }
          def fingerprint; end
          # Last four digits of the bank account number.
          sig { returns(T.nilable(String)) }
          def last4; end
          # ID of the mandate used to make this payment.
          sig { returns(T.any(String, Stripe::Mandate)) }
          def mandate; end
          # The network rails used. See the [docs](https://stripe.com/docs/treasury/money-movement/timelines) to learn more about money movement timelines for each network type.
          sig { returns(String) }
          def network; end
          # Routing number of the bank account.
          sig { returns(T.nilable(String)) }
          def routing_number; end
        end
        # Attribute for field billing_details
        sig { returns(BillingDetails) }
        def billing_details; end
        # Attribute for field financial_account
        sig { returns(FinancialAccount) }
        def financial_account; end
        # The type of the payment method used in the OutboundPayment.
        sig { returns(String) }
        def type; end
        # Attribute for field us_bank_account
        sig { returns(UsBankAccount) }
        def us_bank_account; end
      end
      class EndUserDetails < Stripe::StripeObject
        # IP address of the user initiating the OutboundPayment. Set if `present` is set to `true`. IP address collection is required for risk and compliance reasons. This will be used to help determine if the OutboundPayment is authorized or should be blocked.
        sig { returns(T.nilable(String)) }
        def ip_address; end
        # `true` if the OutboundPayment creation request is being made on behalf of an end user by a platform. Otherwise, `false`.
        sig { returns(T::Boolean) }
        def present; end
      end
      class ReturnedDetails < Stripe::StripeObject
        # Reason for the return.
        sig { returns(String) }
        def code; end
        # The Transaction associated with this object.
        sig { returns(T.any(String, Stripe::Treasury::Transaction)) }
        def transaction; end
      end
      class StatusTransitions < Stripe::StripeObject
        # Timestamp describing when an OutboundPayment changed status to `canceled`.
        sig { returns(T.nilable(Integer)) }
        def canceled_at; end
        # Timestamp describing when an OutboundPayment changed status to `failed`.
        sig { returns(T.nilable(Integer)) }
        def failed_at; end
        # Timestamp describing when an OutboundPayment changed status to `posted`.
        sig { returns(T.nilable(Integer)) }
        def posted_at; end
        # Timestamp describing when an OutboundPayment changed status to `returned`.
        sig { returns(T.nilable(Integer)) }
        def returned_at; end
      end
      class TrackingDetails < Stripe::StripeObject
        class Ach < Stripe::StripeObject
          # ACH trace ID of the OutboundPayment for payments sent over the `ach` network.
          sig { returns(String) }
          def trace_id; end
        end
        class UsDomesticWire < Stripe::StripeObject
          # CHIPS System Sequence Number (SSN) of the OutboundPayment for payments sent over the `us_domestic_wire` network.
          sig { returns(T.nilable(String)) }
          def chips; end
          # IMAD of the OutboundPayment for payments sent over the `us_domestic_wire` network.
          sig { returns(T.nilable(String)) }
          def imad; end
          # OMAD of the OutboundPayment for payments sent over the `us_domestic_wire` network.
          sig { returns(T.nilable(String)) }
          def omad; end
        end
        # Attribute for field ach
        sig { returns(Ach) }
        def ach; end
        # The US bank account network used to send funds.
        sig { returns(String) }
        def type; end
        # Attribute for field us_domestic_wire
        sig { returns(UsDomesticWire) }
        def us_domestic_wire; end
      end
      # Amount (in cents) transferred.
      sig { returns(Integer) }
      def amount; end
      # Returns `true` if the object can be canceled, and `false` otherwise.
      sig { returns(T::Boolean) }
      def cancelable; end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(String) }
      def currency; end
      # ID of the [customer](https://stripe.com/docs/api/customers) to whom an OutboundPayment is sent.
      sig { returns(T.nilable(String)) }
      def customer; end
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(T.nilable(String)) }
      def description; end
      # The PaymentMethod via which an OutboundPayment is sent. This field can be empty if the OutboundPayment was created using `destination_payment_method_data`.
      sig { returns(T.nilable(String)) }
      def destination_payment_method; end
      # Details about the PaymentMethod for an OutboundPayment.
      sig { returns(T.nilable(DestinationPaymentMethodDetails)) }
      def destination_payment_method_details; end
      # Details about the end user.
      sig { returns(T.nilable(EndUserDetails)) }
      def end_user_details; end
      # The date when funds are expected to arrive in the destination account.
      sig { returns(Integer) }
      def expected_arrival_date; end
      # The FinancialAccount that funds were pulled from.
      sig { returns(String) }
      def financial_account; end
      # A [hosted transaction receipt](https://stripe.com/docs/treasury/moving-money/regulatory-receipts) URL that is provided when money movement is considered regulated under Stripe's money transmission licenses.
      sig { returns(T.nilable(String)) }
      def hosted_regulatory_receipt_url; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T::Hash[String, String]) }
      def metadata; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # Details about a returned OutboundPayment. Only set when the status is `returned`.
      sig { returns(T.nilable(ReturnedDetails)) }
      def returned_details; end
      # The description that appears on the receiving end for an OutboundPayment (for example, bank statement for external bank transfer).
      sig { returns(String) }
      def statement_descriptor; end
      # Current status of the OutboundPayment: `processing`, `failed`, `posted`, `returned`, `canceled`. An OutboundPayment is `processing` if it has been created and is pending. The status changes to `posted` once the OutboundPayment has been "confirmed" and funds have left the account, or to `failed` or `canceled`. If an OutboundPayment fails to arrive at its destination, its status will change to `returned`.
      sig { returns(String) }
      def status; end
      # Attribute for field status_transitions
      sig { returns(StatusTransitions) }
      def status_transitions; end
      # Details about network-specific tracking information if available.
      sig { returns(T.nilable(TrackingDetails)) }
      def tracking_details; end
      # The Transaction associated with this object.
      sig { returns(T.any(String, Stripe::Treasury::Transaction)) }
      def transaction; end
      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          def gt; end
          sig { params(_gt: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def gt=(_gt); end
          # Minimum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          def gte; end
          sig { params(_gte: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def gte=(_gte); end
          # Maximum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          def lt; end
          sig { params(_lt: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def lt=(_lt); end
          # Maximum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          def lte; end
          sig { params(_lte: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def lte=(_lte); end
          sig {
            params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
           }
          def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
        end
        # Only return OutboundPayments that were created during the given date interval.
        sig {
          returns(T.nilable(T.any(::Stripe::Treasury::OutboundPayment::ListParams::Created, Integer)))
         }
        def created; end
        sig {
          params(_created: T.nilable(T.any(::Stripe::Treasury::OutboundPayment::ListParams::Created, Integer))).returns(T.nilable(T.any(::Stripe::Treasury::OutboundPayment::ListParams::Created, Integer)))
         }
        def created=(_created); end
        # Only return OutboundPayments sent to this customer.
        sig { returns(T.nilable(String)) }
        def customer; end
        sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
        def customer=(_customer); end
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        def ending_before; end
        sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
        def ending_before=(_ending_before); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Returns objects associated with this FinancialAccount.
        sig { returns(String) }
        def financial_account; end
        sig { params(_financial_account: String).returns(String) }
        def financial_account=(_financial_account); end
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        def starting_after; end
        sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
        def starting_after=(_starting_after); end
        # Only return OutboundPayments that have the given status: `processing`, `failed`, `posted`, `returned`, or `canceled`.
        sig { returns(T.nilable(String)) }
        def status; end
        sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
        def status=(_status); end
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
              def city; end
              sig { params(_city: T.nilable(String)).returns(T.nilable(String)) }
              def city=(_city); end
              # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
              sig { returns(T.nilable(String)) }
              def country; end
              sig { params(_country: T.nilable(String)).returns(T.nilable(String)) }
              def country=(_country); end
              # Address line 1 (e.g., street, PO Box, or company name).
              sig { returns(T.nilable(String)) }
              def line1; end
              sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
              def line1=(_line1); end
              # Address line 2 (e.g., apartment, suite, unit, or building).
              sig { returns(T.nilable(String)) }
              def line2; end
              sig { params(_line2: T.nilable(String)).returns(T.nilable(String)) }
              def line2=(_line2); end
              # ZIP or postal code.
              sig { returns(T.nilable(String)) }
              def postal_code; end
              sig { params(_postal_code: T.nilable(String)).returns(T.nilable(String)) }
              def postal_code=(_postal_code); end
              # State, county, province, or region.
              sig { returns(T.nilable(String)) }
              def state; end
              sig { params(_state: T.nilable(String)).returns(T.nilable(String)) }
              def state=(_state); end
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
            def address; end
            sig {
              params(_address: T.nilable(T.any(String, ::Stripe::Treasury::OutboundPayment::CreateParams::DestinationPaymentMethodData::BillingDetails::Address))).returns(T.nilable(T.any(String, ::Stripe::Treasury::OutboundPayment::CreateParams::DestinationPaymentMethodData::BillingDetails::Address)))
             }
            def address=(_address); end
            # Email address.
            sig { returns(T.nilable(String)) }
            def email; end
            sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
            def email=(_email); end
            # Full name.
            sig { returns(T.nilable(String)) }
            def name; end
            sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
            def name=(_name); end
            # Billing phone number (including extension).
            sig { returns(T.nilable(String)) }
            def phone; end
            sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
            def phone=(_phone); end
            sig {
              params(address: T.nilable(T.any(String, ::Stripe::Treasury::OutboundPayment::CreateParams::DestinationPaymentMethodData::BillingDetails::Address)), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
             }
            def initialize(address: nil, email: nil, name: nil, phone: nil); end
          end
          class UsBankAccount < Stripe::RequestParams
            # Account holder type: individual or company.
            sig { returns(T.nilable(String)) }
            def account_holder_type; end
            sig { params(_account_holder_type: T.nilable(String)).returns(T.nilable(String)) }
            def account_holder_type=(_account_holder_type); end
            # Account number of the bank account.
            sig { returns(T.nilable(String)) }
            def account_number; end
            sig { params(_account_number: T.nilable(String)).returns(T.nilable(String)) }
            def account_number=(_account_number); end
            # Account type: checkings or savings. Defaults to checking if omitted.
            sig { returns(T.nilable(String)) }
            def account_type; end
            sig { params(_account_type: T.nilable(String)).returns(T.nilable(String)) }
            def account_type=(_account_type); end
            # The ID of a Financial Connections Account to use as a payment method.
            sig { returns(T.nilable(String)) }
            def financial_connections_account; end
            sig {
              params(_financial_connections_account: T.nilable(String)).returns(T.nilable(String))
             }
            def financial_connections_account=(_financial_connections_account); end
            # Routing number of the bank account.
            sig { returns(T.nilable(String)) }
            def routing_number; end
            sig { params(_routing_number: T.nilable(String)).returns(T.nilable(String)) }
            def routing_number=(_routing_number); end
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
          def billing_details; end
          sig {
            params(_billing_details: T.nilable(::Stripe::Treasury::OutboundPayment::CreateParams::DestinationPaymentMethodData::BillingDetails)).returns(T.nilable(::Stripe::Treasury::OutboundPayment::CreateParams::DestinationPaymentMethodData::BillingDetails))
           }
          def billing_details=(_billing_details); end
          # Required if type is set to `financial_account`. The FinancialAccount ID to send funds to.
          sig { returns(T.nilable(String)) }
          def financial_account; end
          sig { params(_financial_account: T.nilable(String)).returns(T.nilable(String)) }
          def financial_account=(_financial_account); end
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          sig { returns(T.nilable(T::Hash[String, String])) }
          def metadata; end
          sig {
            params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
           }
          def metadata=(_metadata); end
          # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          # Required hash if type is set to `us_bank_account`.
          sig {
            returns(T.nilable(::Stripe::Treasury::OutboundPayment::CreateParams::DestinationPaymentMethodData::UsBankAccount))
           }
          def us_bank_account; end
          sig {
            params(_us_bank_account: T.nilable(::Stripe::Treasury::OutboundPayment::CreateParams::DestinationPaymentMethodData::UsBankAccount)).returns(T.nilable(::Stripe::Treasury::OutboundPayment::CreateParams::DestinationPaymentMethodData::UsBankAccount))
           }
          def us_bank_account=(_us_bank_account); end
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
            def network; end
            sig { params(_network: T.nilable(String)).returns(T.nilable(String)) }
            def network=(_network); end
            sig { params(network: T.nilable(String)).void }
            def initialize(network: nil); end
          end
          # Optional fields for `us_bank_account`.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::Treasury::OutboundPayment::CreateParams::DestinationPaymentMethodOptions::UsBankAccount)))
           }
          def us_bank_account; end
          sig {
            params(_us_bank_account: T.nilable(T.any(String, ::Stripe::Treasury::OutboundPayment::CreateParams::DestinationPaymentMethodOptions::UsBankAccount))).returns(T.nilable(T.any(String, ::Stripe::Treasury::OutboundPayment::CreateParams::DestinationPaymentMethodOptions::UsBankAccount)))
           }
          def us_bank_account=(_us_bank_account); end
          sig {
            params(us_bank_account: T.nilable(T.any(String, ::Stripe::Treasury::OutboundPayment::CreateParams::DestinationPaymentMethodOptions::UsBankAccount))).void
           }
          def initialize(us_bank_account: nil); end
        end
        class EndUserDetails < Stripe::RequestParams
          # IP address of the user initiating the OutboundPayment. Must be supplied if `present` is set to `true`.
          sig { returns(T.nilable(String)) }
          def ip_address; end
          sig { params(_ip_address: T.nilable(String)).returns(T.nilable(String)) }
          def ip_address=(_ip_address); end
          # `True` if the OutboundPayment creation request is being made on behalf of an end user by a platform. Otherwise, `false`.
          sig { returns(T::Boolean) }
          def present; end
          sig { params(_present: T::Boolean).returns(T::Boolean) }
          def present=(_present); end
          sig { params(ip_address: T.nilable(String), present: T::Boolean).void }
          def initialize(ip_address: nil, present: nil); end
        end
        # Amount (in cents) to be transferred.
        sig { returns(Integer) }
        def amount; end
        sig { params(_amount: Integer).returns(Integer) }
        def amount=(_amount); end
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        def currency; end
        sig { params(_currency: String).returns(String) }
        def currency=(_currency); end
        # ID of the customer to whom the OutboundPayment is sent. Must match the Customer attached to the `destination_payment_method` passed in.
        sig { returns(T.nilable(String)) }
        def customer; end
        sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
        def customer=(_customer); end
        # An arbitrary string attached to the object. Often useful for displaying to users.
        sig { returns(T.nilable(String)) }
        def description; end
        sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
        def description=(_description); end
        # The PaymentMethod to use as the payment instrument for the OutboundPayment. Exclusive with `destination_payment_method_data`.
        sig { returns(T.nilable(String)) }
        def destination_payment_method; end
        sig { params(_destination_payment_method: T.nilable(String)).returns(T.nilable(String)) }
        def destination_payment_method=(_destination_payment_method); end
        # Hash used to generate the PaymentMethod to be used for this OutboundPayment. Exclusive with `destination_payment_method`.
        sig {
          returns(T.nilable(::Stripe::Treasury::OutboundPayment::CreateParams::DestinationPaymentMethodData))
         }
        def destination_payment_method_data; end
        sig {
          params(_destination_payment_method_data: T.nilable(::Stripe::Treasury::OutboundPayment::CreateParams::DestinationPaymentMethodData)).returns(T.nilable(::Stripe::Treasury::OutboundPayment::CreateParams::DestinationPaymentMethodData))
         }
        def destination_payment_method_data=(_destination_payment_method_data); end
        # Payment method-specific configuration for this OutboundPayment.
        sig {
          returns(T.nilable(::Stripe::Treasury::OutboundPayment::CreateParams::DestinationPaymentMethodOptions))
         }
        def destination_payment_method_options; end
        sig {
          params(_destination_payment_method_options: T.nilable(::Stripe::Treasury::OutboundPayment::CreateParams::DestinationPaymentMethodOptions)).returns(T.nilable(::Stripe::Treasury::OutboundPayment::CreateParams::DestinationPaymentMethodOptions))
         }
        def destination_payment_method_options=(_destination_payment_method_options); end
        # End user details.
        sig {
          returns(T.nilable(::Stripe::Treasury::OutboundPayment::CreateParams::EndUserDetails))
         }
        def end_user_details; end
        sig {
          params(_end_user_details: T.nilable(::Stripe::Treasury::OutboundPayment::CreateParams::EndUserDetails)).returns(T.nilable(::Stripe::Treasury::OutboundPayment::CreateParams::EndUserDetails))
         }
        def end_user_details=(_end_user_details); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # The FinancialAccount to pull funds from.
        sig { returns(String) }
        def financial_account; end
        sig { params(_financial_account: String).returns(String) }
        def financial_account=(_financial_account); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # The description that appears on the receiving end for this OutboundPayment (for example, bank statement for external bank transfer). Maximum 10 characters for `ach` payments, 140 characters for `us_domestic_wire` payments, or 500 characters for `stripe` network transfers. The default value is "payment".
        sig { returns(T.nilable(String)) }
        def statement_descriptor; end
        sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
        def statement_descriptor=(_statement_descriptor); end
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
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class UpdateParams < Stripe::RequestParams
        class TrackingDetails < Stripe::RequestParams
          class Ach < Stripe::RequestParams
            # ACH trace ID for funds sent over the `ach` network.
            sig { returns(String) }
            def trace_id; end
            sig { params(_trace_id: String).returns(String) }
            def trace_id=(_trace_id); end
            sig { params(trace_id: String).void }
            def initialize(trace_id: nil); end
          end
          class UsDomesticWire < Stripe::RequestParams
            # CHIPS System Sequence Number (SSN) for funds sent over the `us_domestic_wire` network.
            sig { returns(T.nilable(String)) }
            def chips; end
            sig { params(_chips: T.nilable(String)).returns(T.nilable(String)) }
            def chips=(_chips); end
            # IMAD for funds sent over the `us_domestic_wire` network.
            sig { returns(T.nilable(String)) }
            def imad; end
            sig { params(_imad: T.nilable(String)).returns(T.nilable(String)) }
            def imad=(_imad); end
            # OMAD for funds sent over the `us_domestic_wire` network.
            sig { returns(T.nilable(String)) }
            def omad; end
            sig { params(_omad: T.nilable(String)).returns(T.nilable(String)) }
            def omad=(_omad); end
            sig {
              params(chips: T.nilable(String), imad: T.nilable(String), omad: T.nilable(String)).void
             }
            def initialize(chips: nil, imad: nil, omad: nil); end
          end
          # ACH network tracking details.
          sig {
            returns(T.nilable(::Stripe::Treasury::OutboundPayment::UpdateParams::TrackingDetails::Ach))
           }
          def ach; end
          sig {
            params(_ach: T.nilable(::Stripe::Treasury::OutboundPayment::UpdateParams::TrackingDetails::Ach)).returns(T.nilable(::Stripe::Treasury::OutboundPayment::UpdateParams::TrackingDetails::Ach))
           }
          def ach=(_ach); end
          # The US bank account network used to send funds.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          # US domestic wire network tracking details.
          sig {
            returns(T.nilable(::Stripe::Treasury::OutboundPayment::UpdateParams::TrackingDetails::UsDomesticWire))
           }
          def us_domestic_wire; end
          sig {
            params(_us_domestic_wire: T.nilable(::Stripe::Treasury::OutboundPayment::UpdateParams::TrackingDetails::UsDomesticWire)).returns(T.nilable(::Stripe::Treasury::OutboundPayment::UpdateParams::TrackingDetails::UsDomesticWire))
           }
          def us_domestic_wire=(_us_domestic_wire); end
          sig {
            params(ach: T.nilable(::Stripe::Treasury::OutboundPayment::UpdateParams::TrackingDetails::Ach), type: String, us_domestic_wire: T.nilable(::Stripe::Treasury::OutboundPayment::UpdateParams::TrackingDetails::UsDomesticWire)).void
           }
          def initialize(ach: nil, type: nil, us_domestic_wire: nil); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Details about network-specific tracking information.
        sig { returns(::Stripe::Treasury::OutboundPayment::UpdateParams::TrackingDetails) }
        def tracking_details; end
        sig {
          params(_tracking_details: ::Stripe::Treasury::OutboundPayment::UpdateParams::TrackingDetails).returns(::Stripe::Treasury::OutboundPayment::UpdateParams::TrackingDetails)
         }
        def tracking_details=(_tracking_details); end
        sig {
          params(expand: T.nilable(T::Array[String]), tracking_details: ::Stripe::Treasury::OutboundPayment::UpdateParams::TrackingDetails).void
         }
        def initialize(expand: nil, tracking_details: nil); end
      end
      class FailParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class PostParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class ReturnOutboundPaymentParams < Stripe::RequestParams
        class ReturnedDetails < Stripe::RequestParams
          # The return code to be set on the OutboundPayment object.
          sig { returns(T.nilable(String)) }
          def code; end
          sig { params(_code: T.nilable(String)).returns(T.nilable(String)) }
          def code=(_code); end
          sig { params(code: T.nilable(String)).void }
          def initialize(code: nil); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Optional hash to set the return code.
        sig {
          returns(T.nilable(::Stripe::Treasury::OutboundPayment::ReturnOutboundPaymentParams::ReturnedDetails))
         }
        def returned_details; end
        sig {
          params(_returned_details: T.nilable(::Stripe::Treasury::OutboundPayment::ReturnOutboundPaymentParams::ReturnedDetails)).returns(T.nilable(::Stripe::Treasury::OutboundPayment::ReturnOutboundPaymentParams::ReturnedDetails))
         }
        def returned_details=(_returned_details); end
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