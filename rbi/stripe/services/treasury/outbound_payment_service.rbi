# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Treasury
    class OutboundPaymentService < StripeService
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
          returns(T.nilable(T.any(::Stripe::Treasury::OutboundPaymentService::ListParams::Created, Integer)))
         }
        def created; end
        sig {
          params(_created: T.nilable(T.any(::Stripe::Treasury::OutboundPaymentService::ListParams::Created, Integer))).returns(T.nilable(T.any(::Stripe::Treasury::OutboundPaymentService::ListParams::Created, Integer)))
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
          params(created: T.nilable(T.any(::Stripe::Treasury::OutboundPaymentService::ListParams::Created, Integer)), customer: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), financial_account: String, limit: T.nilable(Integer), starting_after: T.nilable(String), status: T.nilable(String)).void
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
              returns(T.nilable(T.any(String, ::Stripe::Treasury::OutboundPaymentService::CreateParams::DestinationPaymentMethodData::BillingDetails::Address)))
             }
            def address; end
            sig {
              params(_address: T.nilable(T.any(String, ::Stripe::Treasury::OutboundPaymentService::CreateParams::DestinationPaymentMethodData::BillingDetails::Address))).returns(T.nilable(T.any(String, ::Stripe::Treasury::OutboundPaymentService::CreateParams::DestinationPaymentMethodData::BillingDetails::Address)))
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
              params(address: T.nilable(T.any(String, ::Stripe::Treasury::OutboundPaymentService::CreateParams::DestinationPaymentMethodData::BillingDetails::Address)), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
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
            returns(T.nilable(::Stripe::Treasury::OutboundPaymentService::CreateParams::DestinationPaymentMethodData::BillingDetails))
           }
          def billing_details; end
          sig {
            params(_billing_details: T.nilable(::Stripe::Treasury::OutboundPaymentService::CreateParams::DestinationPaymentMethodData::BillingDetails)).returns(T.nilable(::Stripe::Treasury::OutboundPaymentService::CreateParams::DestinationPaymentMethodData::BillingDetails))
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
            returns(T.nilable(::Stripe::Treasury::OutboundPaymentService::CreateParams::DestinationPaymentMethodData::UsBankAccount))
           }
          def us_bank_account; end
          sig {
            params(_us_bank_account: T.nilable(::Stripe::Treasury::OutboundPaymentService::CreateParams::DestinationPaymentMethodData::UsBankAccount)).returns(T.nilable(::Stripe::Treasury::OutboundPaymentService::CreateParams::DestinationPaymentMethodData::UsBankAccount))
           }
          def us_bank_account=(_us_bank_account); end
          sig {
            params(billing_details: T.nilable(::Stripe::Treasury::OutboundPaymentService::CreateParams::DestinationPaymentMethodData::BillingDetails), financial_account: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), type: String, us_bank_account: T.nilable(::Stripe::Treasury::OutboundPaymentService::CreateParams::DestinationPaymentMethodData::UsBankAccount)).void
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
            returns(T.nilable(T.any(String, ::Stripe::Treasury::OutboundPaymentService::CreateParams::DestinationPaymentMethodOptions::UsBankAccount)))
           }
          def us_bank_account; end
          sig {
            params(_us_bank_account: T.nilable(T.any(String, ::Stripe::Treasury::OutboundPaymentService::CreateParams::DestinationPaymentMethodOptions::UsBankAccount))).returns(T.nilable(T.any(String, ::Stripe::Treasury::OutboundPaymentService::CreateParams::DestinationPaymentMethodOptions::UsBankAccount)))
           }
          def us_bank_account=(_us_bank_account); end
          sig {
            params(us_bank_account: T.nilable(T.any(String, ::Stripe::Treasury::OutboundPaymentService::CreateParams::DestinationPaymentMethodOptions::UsBankAccount))).void
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
          returns(T.nilable(::Stripe::Treasury::OutboundPaymentService::CreateParams::DestinationPaymentMethodData))
         }
        def destination_payment_method_data; end
        sig {
          params(_destination_payment_method_data: T.nilable(::Stripe::Treasury::OutboundPaymentService::CreateParams::DestinationPaymentMethodData)).returns(T.nilable(::Stripe::Treasury::OutboundPaymentService::CreateParams::DestinationPaymentMethodData))
         }
        def destination_payment_method_data=(_destination_payment_method_data); end
        # Payment method-specific configuration for this OutboundPayment.
        sig {
          returns(T.nilable(::Stripe::Treasury::OutboundPaymentService::CreateParams::DestinationPaymentMethodOptions))
         }
        def destination_payment_method_options; end
        sig {
          params(_destination_payment_method_options: T.nilable(::Stripe::Treasury::OutboundPaymentService::CreateParams::DestinationPaymentMethodOptions)).returns(T.nilable(::Stripe::Treasury::OutboundPaymentService::CreateParams::DestinationPaymentMethodOptions))
         }
        def destination_payment_method_options=(_destination_payment_method_options); end
        # End user details.
        sig {
          returns(T.nilable(::Stripe::Treasury::OutboundPaymentService::CreateParams::EndUserDetails))
         }
        def end_user_details; end
        sig {
          params(_end_user_details: T.nilable(::Stripe::Treasury::OutboundPaymentService::CreateParams::EndUserDetails)).returns(T.nilable(::Stripe::Treasury::OutboundPaymentService::CreateParams::EndUserDetails))
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
          params(amount: Integer, currency: String, customer: T.nilable(String), description: T.nilable(String), destination_payment_method: T.nilable(String), destination_payment_method_data: T.nilable(::Stripe::Treasury::OutboundPaymentService::CreateParams::DestinationPaymentMethodData), destination_payment_method_options: T.nilable(::Stripe::Treasury::OutboundPaymentService::CreateParams::DestinationPaymentMethodOptions), end_user_details: T.nilable(::Stripe::Treasury::OutboundPaymentService::CreateParams::EndUserDetails), expand: T.nilable(T::Array[String]), financial_account: String, metadata: T.nilable(T::Hash[String, String]), statement_descriptor: T.nilable(String)).void
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
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
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
      # Cancel an OutboundPayment.
      sig {
        params(id: String, params: T.any(::Stripe::Treasury::OutboundPaymentService::CancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::OutboundPayment)
       }
      def cancel(id, params = {}, opts = {}); end

      # Creates an OutboundPayment.
      sig {
        params(params: T.any(::Stripe::Treasury::OutboundPaymentService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::OutboundPayment)
       }
      def create(params = {}, opts = {}); end

      # Returns a list of OutboundPayments sent from the specified FinancialAccount.
      sig {
        params(params: T.any(::Stripe::Treasury::OutboundPaymentService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def list(params = {}, opts = {}); end

      # Retrieves the details of an existing OutboundPayment by passing the unique OutboundPayment ID from either the OutboundPayment creation request or OutboundPayment list.
      sig {
        params(id: String, params: T.any(::Stripe::Treasury::OutboundPaymentService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Treasury::OutboundPayment)
       }
      def retrieve(id, params = {}, opts = {}); end
    end
  end
end