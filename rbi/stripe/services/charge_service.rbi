# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class ChargeService < StripeService
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
      # Only return charges that were created during the given date interval.
      sig { returns(T.nilable(T.any(::Stripe::ChargeService::ListParams::Created, Integer))) }
      def created; end
      sig {
        params(_created: T.nilable(T.any(::Stripe::ChargeService::ListParams::Created, Integer))).returns(T.nilable(T.any(::Stripe::ChargeService::ListParams::Created, Integer)))
       }
      def created=(_created); end
      # Only return charges for the customer specified by this customer ID.
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
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      def limit; end
      sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def limit=(_limit); end
      # Only return charges that were created by the PaymentIntent specified by this PaymentIntent ID.
      sig { returns(T.nilable(String)) }
      def payment_intent; end
      sig { params(_payment_intent: T.nilable(String)).returns(T.nilable(String)) }
      def payment_intent=(_payment_intent); end
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      def starting_after; end
      sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
      def starting_after=(_starting_after); end
      # Only return charges for this transfer group, limited to 100.
      sig { returns(T.nilable(String)) }
      def transfer_group; end
      sig { params(_transfer_group: T.nilable(String)).returns(T.nilable(String)) }
      def transfer_group=(_transfer_group); end
      sig {
        params(created: T.nilable(T.any(::Stripe::ChargeService::ListParams::Created, Integer)), customer: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), payment_intent: T.nilable(String), starting_after: T.nilable(String), transfer_group: T.nilable(String)).void
       }
      def initialize(
        created: nil,
        customer: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        payment_intent: nil,
        starting_after: nil,
        transfer_group: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      class Destination < Stripe::RequestParams
        # ID of an existing, connected Stripe account.
        sig { returns(String) }
        def account; end
        sig { params(_account: String).returns(String) }
        def account=(_account); end
        # The amount to transfer to the destination account without creating an `Application Fee` object. Cannot be combined with the `application_fee` parameter. Must be less than or equal to the charge amount.
        sig { returns(T.nilable(Integer)) }
        def amount; end
        sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def amount=(_amount); end
        sig { params(account: String, amount: T.nilable(Integer)).void }
        def initialize(account: nil, amount: nil); end
      end
      class RadarOptions < Stripe::RequestParams
        # A [Radar Session](https://stripe.com/docs/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
        sig { returns(T.nilable(String)) }
        def session; end
        sig { params(_session: T.nilable(String)).returns(T.nilable(String)) }
        def session=(_session); end
        sig { params(session: T.nilable(String)).void }
        def initialize(session: nil); end
      end
      class Shipping < Stripe::RequestParams
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
          # Address line 1, such as the street, PO Box, or company name.
          sig { returns(T.nilable(String)) }
          def line1; end
          sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_line1); end
          # Address line 2, such as the apartment, suite, unit, or building.
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
        # Shipping address.
        sig { returns(::Stripe::ChargeService::CreateParams::Shipping::Address) }
        def address; end
        sig {
          params(_address: ::Stripe::ChargeService::CreateParams::Shipping::Address).returns(::Stripe::ChargeService::CreateParams::Shipping::Address)
         }
        def address=(_address); end
        # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
        sig { returns(T.nilable(String)) }
        def carrier; end
        sig { params(_carrier: T.nilable(String)).returns(T.nilable(String)) }
        def carrier=(_carrier); end
        # Recipient name.
        sig { returns(String) }
        def name; end
        sig { params(_name: String).returns(String) }
        def name=(_name); end
        # Recipient phone (including extension).
        sig { returns(T.nilable(String)) }
        def phone; end
        sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
        def phone=(_phone); end
        # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
        sig { returns(T.nilable(String)) }
        def tracking_number; end
        sig { params(_tracking_number: T.nilable(String)).returns(T.nilable(String)) }
        def tracking_number=(_tracking_number); end
        sig {
          params(address: ::Stripe::ChargeService::CreateParams::Shipping::Address, carrier: T.nilable(String), name: String, phone: T.nilable(String), tracking_number: T.nilable(String)).void
         }
        def initialize(address: nil, carrier: nil, name: nil, phone: nil, tracking_number: nil); end
      end
      class TransferData < Stripe::RequestParams
        # The amount transferred to the destination account, if specified. By default, the entire charge amount is transferred to the destination account.
        sig { returns(T.nilable(Integer)) }
        def amount; end
        sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def amount=(_amount); end
        # ID of an existing, connected Stripe account.
        sig { returns(String) }
        def destination; end
        sig { params(_destination: String).returns(String) }
        def destination=(_destination); end
        sig { params(amount: T.nilable(Integer), destination: String).void }
        def initialize(amount: nil, destination: nil); end
      end
      # Amount intended to be collected by this payment. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
      sig { returns(T.nilable(Integer)) }
      def amount; end
      sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount=(_amount); end
      # Attribute for param field application_fee
      sig { returns(T.nilable(Integer)) }
      def application_fee; end
      sig { params(_application_fee: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def application_fee=(_application_fee); end
      # A fee in cents (or local equivalent) that will be applied to the charge and transferred to the application owner's Stripe account. The request must be made with an OAuth key or the `Stripe-Account` header in order to take an application fee. For more information, see the application fees [documentation](https://stripe.com/docs/connect/direct-charges#collect-fees).
      sig { returns(T.nilable(Integer)) }
      def application_fee_amount; end
      sig { params(_application_fee_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def application_fee_amount=(_application_fee_amount); end
      # Whether to immediately capture the charge. Defaults to `true`. When `false`, the charge issues an authorization (or pre-authorization), and will need to be [captured](https://stripe.com/docs/api#capture_charge) later. Uncaptured charges expire after a set number of days (7 by default). For more information, see the [authorizing charges and settling later](https://stripe.com/docs/charges/placing-a-hold) documentation.
      sig { returns(T.nilable(T::Boolean)) }
      def capture; end
      sig { params(_capture: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
      def capture=(_capture); end
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(T.nilable(String)) }
      def currency; end
      sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
      def currency=(_currency); end
      # The ID of an existing customer that will be charged in this request.
      sig { returns(T.nilable(String)) }
      def customer; end
      sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
      def customer=(_customer); end
      # An arbitrary string which you can attach to a `Charge` object. It is displayed when in the web interface alongside the charge. Note that if you use Stripe to send automatic email receipts to your customers, your receipt emails will include the `description` of the charge(s) that they are describing.
      sig { returns(T.nilable(String)) }
      def description; end
      sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_description); end
      # Attribute for param field destination
      sig { returns(T.nilable(::Stripe::ChargeService::CreateParams::Destination)) }
      def destination; end
      sig {
        params(_destination: T.nilable(::Stripe::ChargeService::CreateParams::Destination)).returns(T.nilable(::Stripe::ChargeService::CreateParams::Destination))
       }
      def destination=(_destination); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
       }
      def metadata=(_metadata); end
      # The Stripe account ID for which these funds are intended. Automatically set if you use the `destination` parameter. For details, see [Creating Separate Charges and Transfers](https://stripe.com/docs/connect/separate-charges-and-transfers#settlement-merchant).
      sig { returns(T.nilable(String)) }
      def on_behalf_of; end
      sig { params(_on_behalf_of: T.nilable(String)).returns(T.nilable(String)) }
      def on_behalf_of=(_on_behalf_of); end
      # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
      sig { returns(T.nilable(::Stripe::ChargeService::CreateParams::RadarOptions)) }
      def radar_options; end
      sig {
        params(_radar_options: T.nilable(::Stripe::ChargeService::CreateParams::RadarOptions)).returns(T.nilable(::Stripe::ChargeService::CreateParams::RadarOptions))
       }
      def radar_options=(_radar_options); end
      # The email address to which this charge's [receipt](https://stripe.com/docs/dashboard/receipts) will be sent. The receipt will not be sent until the charge is paid, and no receipts will be sent for test mode charges. If this charge is for a [Customer](https://stripe.com/docs/api/customers/object), the email address specified here will override the customer's email address. If `receipt_email` is specified for a charge in live mode, a receipt will be sent regardless of your [email settings](https://dashboard.stripe.com/account/emails).
      sig { returns(T.nilable(String)) }
      def receipt_email; end
      sig { params(_receipt_email: T.nilable(String)).returns(T.nilable(String)) }
      def receipt_email=(_receipt_email); end
      # Shipping information for the charge. Helps prevent fraud on charges for physical goods.
      sig { returns(T.nilable(::Stripe::ChargeService::CreateParams::Shipping)) }
      def shipping; end
      sig {
        params(_shipping: T.nilable(::Stripe::ChargeService::CreateParams::Shipping)).returns(T.nilable(::Stripe::ChargeService::CreateParams::Shipping))
       }
      def shipping=(_shipping); end
      # A payment source to be charged. This can be the ID of a [card](https://stripe.com/docs/api#cards) (i.e., credit or debit card), a [bank account](https://stripe.com/docs/api#bank_accounts), a [source](https://stripe.com/docs/api#sources), a [token](https://stripe.com/docs/api#tokens), or a [connected account](https://stripe.com/docs/connect/account-debits#charging-a-connected-account). For certain sources---namely, [cards](https://stripe.com/docs/api#cards), [bank accounts](https://stripe.com/docs/api#bank_accounts), and attached [sources](https://stripe.com/docs/api#sources)---you must also pass the ID of the associated customer.
      sig { returns(T.nilable(String)) }
      def source; end
      sig { params(_source: T.nilable(String)).returns(T.nilable(String)) }
      def source=(_source); end
      # For a non-card charge, text that appears on the customer's statement as the statement descriptor. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
      #
      # For a card charge, this value is ignored unless you don't specify a `statement_descriptor_suffix`, in which case this value is used as the suffix.
      sig { returns(T.nilable(String)) }
      def statement_descriptor; end
      sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
      def statement_descriptor=(_statement_descriptor); end
      # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement. If the account has no prefix value, the suffix is concatenated to the account's statement descriptor.
      sig { returns(T.nilable(String)) }
      def statement_descriptor_suffix; end
      sig { params(_statement_descriptor_suffix: T.nilable(String)).returns(T.nilable(String)) }
      def statement_descriptor_suffix=(_statement_descriptor_suffix); end
      # An optional dictionary including the account to automatically transfer to as part of a destination charge. [See the Connect documentation](https://stripe.com/docs/connect/destination-charges) for details.
      sig { returns(T.nilable(::Stripe::ChargeService::CreateParams::TransferData)) }
      def transfer_data; end
      sig {
        params(_transfer_data: T.nilable(::Stripe::ChargeService::CreateParams::TransferData)).returns(T.nilable(::Stripe::ChargeService::CreateParams::TransferData))
       }
      def transfer_data=(_transfer_data); end
      # A string that identifies this transaction as part of a group. For details, see [Grouping transactions](https://stripe.com/docs/connect/separate-charges-and-transfers#transfer-options).
      sig { returns(T.nilable(String)) }
      def transfer_group; end
      sig { params(_transfer_group: T.nilable(String)).returns(T.nilable(String)) }
      def transfer_group=(_transfer_group); end
      sig {
        params(amount: T.nilable(Integer), application_fee: T.nilable(Integer), application_fee_amount: T.nilable(Integer), capture: T.nilable(T::Boolean), currency: T.nilable(String), customer: T.nilable(String), description: T.nilable(String), destination: T.nilable(::Stripe::ChargeService::CreateParams::Destination), expand: T.nilable(T::Array[String]), metadata: T.nilable(T.any(String, T::Hash[String, String])), on_behalf_of: T.nilable(String), radar_options: T.nilable(::Stripe::ChargeService::CreateParams::RadarOptions), receipt_email: T.nilable(String), shipping: T.nilable(::Stripe::ChargeService::CreateParams::Shipping), source: T.nilable(String), statement_descriptor: T.nilable(String), statement_descriptor_suffix: T.nilable(String), transfer_data: T.nilable(::Stripe::ChargeService::CreateParams::TransferData), transfer_group: T.nilable(String)).void
       }
      def initialize(
        amount: nil,
        application_fee: nil,
        application_fee_amount: nil,
        capture: nil,
        currency: nil,
        customer: nil,
        description: nil,
        destination: nil,
        expand: nil,
        metadata: nil,
        on_behalf_of: nil,
        radar_options: nil,
        receipt_email: nil,
        shipping: nil,
        source: nil,
        statement_descriptor: nil,
        statement_descriptor_suffix: nil,
        transfer_data: nil,
        transfer_group: nil
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
    class UpdateParams < Stripe::RequestParams
      class FraudDetails < Stripe::RequestParams
        # Either `safe` or `fraudulent`.
        sig { returns(T.any(String, String)) }
        def user_report; end
        sig { params(_user_report: T.any(String, String)).returns(T.any(String, String)) }
        def user_report=(_user_report); end
        sig { params(user_report: T.any(String, String)).void }
        def initialize(user_report: nil); end
      end
      class PaymentDetails < Stripe::RequestParams
        class CarRental < Stripe::RequestParams
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            def name; end
            sig { params(_name: String).returns(String) }
            def name=(_name); end
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              def email; end
              sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
              def email=(_email); end
              # The name of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              def name; end
              sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
              def name=(_name); end
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              def phone; end
              sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
              def phone=(_phone); end
              sig {
                params(email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
               }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(T.nilable(String)) }
            def mode; end
            sig { params(_mode: T.nilable(String)).returns(T.nilable(String)) }
            def mode=(_mode); end
            # Details of the recipient.
            sig {
              returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::Delivery::Recipient))
             }
            def recipient; end
            sig {
              params(_recipient: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::Delivery::Recipient)).returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::Delivery::Recipient))
             }
            def recipient=(_recipient); end
            sig {
              params(mode: T.nilable(String), recipient: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::Delivery::Recipient)).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          class Distance < Stripe::RequestParams
            # Distance traveled.
            sig { returns(T.nilable(Integer)) }
            def amount; end
            sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def amount=(_amount); end
            # Unit of measurement for the distance traveled. One of `miles` or `kilometers`.
            sig { returns(T.nilable(String)) }
            def unit; end
            sig { params(_unit: T.nilable(String)).returns(T.nilable(String)) }
            def unit=(_unit); end
            sig { params(amount: T.nilable(Integer), unit: T.nilable(String)).void }
            def initialize(amount: nil, unit: nil); end
          end
          class Driver < Stripe::RequestParams
            # Driver's identification number.
            sig { returns(T.nilable(String)) }
            def driver_identification_number; end
            sig {
              params(_driver_identification_number: T.nilable(String)).returns(T.nilable(String))
             }
            def driver_identification_number=(_driver_identification_number); end
            # Driver's tax number.
            sig { returns(T.nilable(String)) }
            def driver_tax_number; end
            sig { params(_driver_tax_number: T.nilable(String)).returns(T.nilable(String)) }
            def driver_tax_number=(_driver_tax_number); end
            # Full name of the person or entity on the car reservation.
            sig { returns(String) }
            def name; end
            sig { params(_name: String).returns(String) }
            def name=(_name); end
            sig {
              params(driver_identification_number: T.nilable(String), driver_tax_number: T.nilable(String), name: String).void
             }
            def initialize(
              driver_identification_number: nil,
              driver_tax_number: nil,
              name: nil
            ); end
          end
          class PickupAddress < Stripe::RequestParams
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
            # Address line 1, such as the street, PO Box, or company name.
            sig { returns(T.nilable(String)) }
            def line1; end
            sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
            def line1=(_line1); end
            # Address line 2, such as the apartment, suite, unit, or building.
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
          class ReturnAddress < Stripe::RequestParams
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
            # Address line 1, such as the street, PO Box, or company name.
            sig { returns(T.nilable(String)) }
            def line1; end
            sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
            def line1=(_line1); end
            # Address line 2, such as the apartment, suite, unit, or building.
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
          # Affiliate details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::Affiliate))
           }
          def affiliate; end
          sig {
            params(_affiliate: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::Affiliate)).returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::Affiliate))
           }
          def affiliate=(_affiliate); end
          # The booking number associated with the car rental.
          sig { returns(String) }
          def booking_number; end
          sig { params(_booking_number: String).returns(String) }
          def booking_number=(_booking_number); end
          # Class code of the car.
          sig { returns(T.nilable(String)) }
          def car_class_code; end
          sig { params(_car_class_code: T.nilable(String)).returns(T.nilable(String)) }
          def car_class_code=(_car_class_code); end
          # Make of the car.
          sig { returns(T.nilable(String)) }
          def car_make; end
          sig { params(_car_make: T.nilable(String)).returns(T.nilable(String)) }
          def car_make=(_car_make); end
          # Model of the car.
          sig { returns(T.nilable(String)) }
          def car_model; end
          sig { params(_car_model: T.nilable(String)).returns(T.nilable(String)) }
          def car_model=(_car_model); end
          # The name of the rental car company.
          sig { returns(T.nilable(String)) }
          def company; end
          sig { params(_company: T.nilable(String)).returns(T.nilable(String)) }
          def company=(_company); end
          # The customer service phone number of the car rental company.
          sig { returns(T.nilable(String)) }
          def customer_service_phone_number; end
          sig {
            params(_customer_service_phone_number: T.nilable(String)).returns(T.nilable(String))
           }
          def customer_service_phone_number=(_customer_service_phone_number); end
          # Number of days the car is being rented.
          sig { returns(Integer) }
          def days_rented; end
          sig { params(_days_rented: Integer).returns(Integer) }
          def days_rented=(_days_rented); end
          # Delivery details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::Delivery))
           }
          def delivery; end
          sig {
            params(_delivery: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::Delivery)).returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::Delivery))
           }
          def delivery=(_delivery); end
          # The details of the distance traveled during the rental period.
          sig {
            returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::Distance))
           }
          def distance; end
          sig {
            params(_distance: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::Distance)).returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::Distance))
           }
          def distance=(_distance); end
          # The details of the passengers in the travel reservation
          sig {
            returns(T.nilable(T::Array[::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::Driver]))
           }
          def drivers; end
          sig {
            params(_drivers: T.nilable(T::Array[::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::Driver])).returns(T.nilable(T::Array[::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::Driver]))
           }
          def drivers=(_drivers); end
          # List of additional charges being billed.
          sig { returns(T.nilable(T::Array[String])) }
          def extra_charges; end
          sig {
            params(_extra_charges: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def extra_charges=(_extra_charges); end
          # Indicates if the customer did not keep nor cancel their booking.
          sig { returns(T.nilable(T::Boolean)) }
          def no_show; end
          sig { params(_no_show: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def no_show=(_no_show); end
          # Car pick-up address.
          sig {
            returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::PickupAddress))
           }
          def pickup_address; end
          sig {
            params(_pickup_address: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::PickupAddress)).returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::PickupAddress))
           }
          def pickup_address=(_pickup_address); end
          # Car pick-up time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          def pickup_at; end
          sig { params(_pickup_at: Integer).returns(Integer) }
          def pickup_at=(_pickup_at); end
          # Name of the pickup location.
          sig { returns(T.nilable(String)) }
          def pickup_location_name; end
          sig { params(_pickup_location_name: T.nilable(String)).returns(T.nilable(String)) }
          def pickup_location_name=(_pickup_location_name); end
          # Rental rate.
          sig { returns(T.nilable(Integer)) }
          def rate_amount; end
          sig { params(_rate_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def rate_amount=(_rate_amount); end
          # The frequency at which the rate amount is applied. One of `day`, `week` or `month`
          sig { returns(T.nilable(String)) }
          def rate_interval; end
          sig { params(_rate_interval: T.nilable(String)).returns(T.nilable(String)) }
          def rate_interval=(_rate_interval); end
          # The name of the person or entity renting the car.
          sig { returns(T.nilable(String)) }
          def renter_name; end
          sig { params(_renter_name: T.nilable(String)).returns(T.nilable(String)) }
          def renter_name=(_renter_name); end
          # Car return address.
          sig {
            returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::ReturnAddress))
           }
          def return_address; end
          sig {
            params(_return_address: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::ReturnAddress)).returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::ReturnAddress))
           }
          def return_address=(_return_address); end
          # Car return time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          def return_at; end
          sig { params(_return_at: Integer).returns(Integer) }
          def return_at=(_return_at); end
          # Name of the return location.
          sig { returns(T.nilable(String)) }
          def return_location_name; end
          sig { params(_return_location_name: T.nilable(String)).returns(T.nilable(String)) }
          def return_location_name=(_return_location_name); end
          # Indicates whether the goods or services are tax-exempt or tax is not collected.
          sig { returns(T.nilable(T::Boolean)) }
          def tax_exempt; end
          sig { params(_tax_exempt: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def tax_exempt=(_tax_exempt); end
          # The vehicle identification number.
          sig { returns(T.nilable(String)) }
          def vehicle_identification_number; end
          sig {
            params(_vehicle_identification_number: T.nilable(String)).returns(T.nilable(String))
           }
          def vehicle_identification_number=(_vehicle_identification_number); end
          sig {
            params(affiliate: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::Affiliate), booking_number: String, car_class_code: T.nilable(String), car_make: T.nilable(String), car_model: T.nilable(String), company: T.nilable(String), customer_service_phone_number: T.nilable(String), days_rented: Integer, delivery: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::Delivery), distance: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::Distance), drivers: T.nilable(T::Array[::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::Driver]), extra_charges: T.nilable(T::Array[String]), no_show: T.nilable(T::Boolean), pickup_address: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::PickupAddress), pickup_at: Integer, pickup_location_name: T.nilable(String), rate_amount: T.nilable(Integer), rate_interval: T.nilable(String), renter_name: T.nilable(String), return_address: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::ReturnAddress), return_at: Integer, return_location_name: T.nilable(String), tax_exempt: T.nilable(T::Boolean), vehicle_identification_number: T.nilable(String)).void
           }
          def initialize(
            affiliate: nil,
            booking_number: nil,
            car_class_code: nil,
            car_make: nil,
            car_model: nil,
            company: nil,
            customer_service_phone_number: nil,
            days_rented: nil,
            delivery: nil,
            distance: nil,
            drivers: nil,
            extra_charges: nil,
            no_show: nil,
            pickup_address: nil,
            pickup_at: nil,
            pickup_location_name: nil,
            rate_amount: nil,
            rate_interval: nil,
            renter_name: nil,
            return_address: nil,
            return_at: nil,
            return_location_name: nil,
            tax_exempt: nil,
            vehicle_identification_number: nil
          ); end
        end
        class EventDetails < Stripe::RequestParams
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
            # Address line 1, such as the street, PO Box, or company name.
            sig { returns(T.nilable(String)) }
            def line1; end
            sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
            def line1=(_line1); end
            # Address line 2, such as the apartment, suite, unit, or building.
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
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            def name; end
            sig { params(_name: String).returns(String) }
            def name=(_name); end
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              def email; end
              sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
              def email=(_email); end
              # The name of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              def name; end
              sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
              def name=(_name); end
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              def phone; end
              sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
              def phone=(_phone); end
              sig {
                params(email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
               }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(T.nilable(String)) }
            def mode; end
            sig { params(_mode: T.nilable(String)).returns(T.nilable(String)) }
            def mode=(_mode); end
            # Details of the recipient.
            sig {
              returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::EventDetails::Delivery::Recipient))
             }
            def recipient; end
            sig {
              params(_recipient: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::EventDetails::Delivery::Recipient)).returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::EventDetails::Delivery::Recipient))
             }
            def recipient=(_recipient); end
            sig {
              params(mode: T.nilable(String), recipient: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::EventDetails::Delivery::Recipient)).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          # Indicates if the tickets are digitally checked when entering the venue.
          sig { returns(T.nilable(T::Boolean)) }
          def access_controlled_venue; end
          sig {
            params(_access_controlled_venue: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
           }
          def access_controlled_venue=(_access_controlled_venue); end
          # The event location's address.
          sig {
            returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::EventDetails::Address))
           }
          def address; end
          sig {
            params(_address: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::EventDetails::Address)).returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::EventDetails::Address))
           }
          def address=(_address); end
          # Affiliate details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::EventDetails::Affiliate))
           }
          def affiliate; end
          sig {
            params(_affiliate: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::EventDetails::Affiliate)).returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::EventDetails::Affiliate))
           }
          def affiliate=(_affiliate); end
          # The name of the company
          sig { returns(T.nilable(String)) }
          def company; end
          sig { params(_company: T.nilable(String)).returns(T.nilable(String)) }
          def company=(_company); end
          # Delivery details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::EventDetails::Delivery))
           }
          def delivery; end
          sig {
            params(_delivery: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::EventDetails::Delivery)).returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::EventDetails::Delivery))
           }
          def delivery=(_delivery); end
          # Event end time. Measured in seconds since the Unix epoch.
          sig { returns(T.nilable(Integer)) }
          def ends_at; end
          sig { params(_ends_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def ends_at=(_ends_at); end
          # Type of the event entertainment (concert, sports event etc)
          sig { returns(T.nilable(String)) }
          def genre; end
          sig { params(_genre: T.nilable(String)).returns(T.nilable(String)) }
          def genre=(_genre); end
          # The name of the event.
          sig { returns(String) }
          def name; end
          sig { params(_name: String).returns(String) }
          def name=(_name); end
          # Event start time. Measured in seconds since the Unix epoch.
          sig { returns(T.nilable(Integer)) }
          def starts_at; end
          sig { params(_starts_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def starts_at=(_starts_at); end
          sig {
            params(access_controlled_venue: T.nilable(T::Boolean), address: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::EventDetails::Address), affiliate: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::EventDetails::Affiliate), company: T.nilable(String), delivery: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::EventDetails::Delivery), ends_at: T.nilable(Integer), genre: T.nilable(String), name: String, starts_at: T.nilable(Integer)).void
           }
          def initialize(
            access_controlled_venue: nil,
            address: nil,
            affiliate: nil,
            company: nil,
            delivery: nil,
            ends_at: nil,
            genre: nil,
            name: nil,
            starts_at: nil
          ); end
        end
        class Flight < Stripe::RequestParams
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            def name; end
            sig { params(_name: String).returns(String) }
            def name=(_name); end
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              def email; end
              sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
              def email=(_email); end
              # The name of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              def name; end
              sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
              def name=(_name); end
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              def phone; end
              sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
              def phone=(_phone); end
              sig {
                params(email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
               }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(T.nilable(String)) }
            def mode; end
            sig { params(_mode: T.nilable(String)).returns(T.nilable(String)) }
            def mode=(_mode); end
            # Details of the recipient.
            sig {
              returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Flight::Delivery::Recipient))
             }
            def recipient; end
            sig {
              params(_recipient: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Flight::Delivery::Recipient)).returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Flight::Delivery::Recipient))
             }
            def recipient=(_recipient); end
            sig {
              params(mode: T.nilable(String), recipient: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Flight::Delivery::Recipient)).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          class Passenger < Stripe::RequestParams
            # Full name of the person or entity on the flight reservation.
            sig { returns(String) }
            def name; end
            sig { params(_name: String).returns(String) }
            def name=(_name); end
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Segment < Stripe::RequestParams
            # The flight segment amount.
            sig { returns(T.nilable(Integer)) }
            def amount; end
            sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def amount=(_amount); end
            # The International Air Transport Association (IATA) airport code for the arrival airport.
            sig { returns(T.nilable(String)) }
            def arrival_airport; end
            sig { params(_arrival_airport: T.nilable(String)).returns(T.nilable(String)) }
            def arrival_airport=(_arrival_airport); end
            # The arrival time for the flight segment. Measured in seconds since the Unix epoch.
            sig { returns(T.nilable(Integer)) }
            def arrives_at; end
            sig { params(_arrives_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def arrives_at=(_arrives_at); end
            # The International Air Transport Association (IATA) carrier code of the carrier operating the flight segment.
            sig { returns(T.nilable(String)) }
            def carrier; end
            sig { params(_carrier: T.nilable(String)).returns(T.nilable(String)) }
            def carrier=(_carrier); end
            # The departure time for the flight segment. Measured in seconds since the Unix epoch.
            sig { returns(Integer) }
            def departs_at; end
            sig { params(_departs_at: Integer).returns(Integer) }
            def departs_at=(_departs_at); end
            # The International Air Transport Association (IATA) airport code for the departure airport.
            sig { returns(T.nilable(String)) }
            def departure_airport; end
            sig { params(_departure_airport: T.nilable(String)).returns(T.nilable(String)) }
            def departure_airport=(_departure_airport); end
            # The flight number associated with the segment
            sig { returns(T.nilable(String)) }
            def flight_number; end
            sig { params(_flight_number: T.nilable(String)).returns(T.nilable(String)) }
            def flight_number=(_flight_number); end
            # The fare class for the segment.
            sig { returns(T.nilable(String)) }
            def service_class; end
            sig { params(_service_class: T.nilable(String)).returns(T.nilable(String)) }
            def service_class=(_service_class); end
            sig {
              params(amount: T.nilable(Integer), arrival_airport: T.nilable(String), arrives_at: T.nilable(Integer), carrier: T.nilable(String), departs_at: Integer, departure_airport: T.nilable(String), flight_number: T.nilable(String), service_class: T.nilable(String)).void
             }
            def initialize(
              amount: nil,
              arrival_airport: nil,
              arrives_at: nil,
              carrier: nil,
              departs_at: nil,
              departure_airport: nil,
              flight_number: nil,
              service_class: nil
            ); end
          end
          # Affiliate details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Flight::Affiliate))
           }
          def affiliate; end
          sig {
            params(_affiliate: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Flight::Affiliate)).returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Flight::Affiliate))
           }
          def affiliate=(_affiliate); end
          # The agency number (i.e. International Air Transport Association (IATA) agency number) of the travel agency that made the booking.
          sig { returns(T.nilable(String)) }
          def agency_number; end
          sig { params(_agency_number: T.nilable(String)).returns(T.nilable(String)) }
          def agency_number=(_agency_number); end
          # The International Air Transport Association (IATA) carrier code of the carrier that issued the ticket.
          sig { returns(T.nilable(String)) }
          def carrier; end
          sig { params(_carrier: T.nilable(String)).returns(T.nilable(String)) }
          def carrier=(_carrier); end
          # Delivery details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Flight::Delivery))
           }
          def delivery; end
          sig {
            params(_delivery: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Flight::Delivery)).returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Flight::Delivery))
           }
          def delivery=(_delivery); end
          # The name of the person or entity on the reservation.
          sig { returns(T.nilable(String)) }
          def passenger_name; end
          sig { params(_passenger_name: T.nilable(String)).returns(T.nilable(String)) }
          def passenger_name=(_passenger_name); end
          # The details of the passengers in the travel reservation.
          sig {
            returns(T.nilable(T::Array[::Stripe::ChargeService::UpdateParams::PaymentDetails::Flight::Passenger]))
           }
          def passengers; end
          sig {
            params(_passengers: T.nilable(T::Array[::Stripe::ChargeService::UpdateParams::PaymentDetails::Flight::Passenger])).returns(T.nilable(T::Array[::Stripe::ChargeService::UpdateParams::PaymentDetails::Flight::Passenger]))
           }
          def passengers=(_passengers); end
          # The individual flight segments associated with the trip.
          sig {
            returns(T::Array[::Stripe::ChargeService::UpdateParams::PaymentDetails::Flight::Segment])
           }
          def segments; end
          sig {
            params(_segments: T::Array[::Stripe::ChargeService::UpdateParams::PaymentDetails::Flight::Segment]).returns(T::Array[::Stripe::ChargeService::UpdateParams::PaymentDetails::Flight::Segment])
           }
          def segments=(_segments); end
          # The ticket number associated with the travel reservation.
          sig { returns(T.nilable(String)) }
          def ticket_number; end
          sig { params(_ticket_number: T.nilable(String)).returns(T.nilable(String)) }
          def ticket_number=(_ticket_number); end
          sig {
            params(affiliate: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Flight::Affiliate), agency_number: T.nilable(String), carrier: T.nilable(String), delivery: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Flight::Delivery), passenger_name: T.nilable(String), passengers: T.nilable(T::Array[::Stripe::ChargeService::UpdateParams::PaymentDetails::Flight::Passenger]), segments: T::Array[::Stripe::ChargeService::UpdateParams::PaymentDetails::Flight::Segment], ticket_number: T.nilable(String)).void
           }
          def initialize(
            affiliate: nil,
            agency_number: nil,
            carrier: nil,
            delivery: nil,
            passenger_name: nil,
            passengers: nil,
            segments: nil,
            ticket_number: nil
          ); end
        end
        class Lodging < Stripe::RequestParams
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
            # Address line 1, such as the street, PO Box, or company name.
            sig { returns(T.nilable(String)) }
            def line1; end
            sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
            def line1=(_line1); end
            # Address line 2, such as the apartment, suite, unit, or building.
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
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            def name; end
            sig { params(_name: String).returns(String) }
            def name=(_name); end
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              def email; end
              sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
              def email=(_email); end
              # The name of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              def name; end
              sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
              def name=(_name); end
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              def phone; end
              sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
              def phone=(_phone); end
              sig {
                params(email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
               }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(T.nilable(String)) }
            def mode; end
            sig { params(_mode: T.nilable(String)).returns(T.nilable(String)) }
            def mode=(_mode); end
            # Details of the recipient.
            sig {
              returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Lodging::Delivery::Recipient))
             }
            def recipient; end
            sig {
              params(_recipient: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Lodging::Delivery::Recipient)).returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Lodging::Delivery::Recipient))
             }
            def recipient=(_recipient); end
            sig {
              params(mode: T.nilable(String), recipient: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Lodging::Delivery::Recipient)).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          class Passenger < Stripe::RequestParams
            # Full name of the person or entity on the lodging reservation.
            sig { returns(String) }
            def name; end
            sig { params(_name: String).returns(String) }
            def name=(_name); end
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          # The lodging location's address.
          sig {
            returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Lodging::Address))
           }
          def address; end
          sig {
            params(_address: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Lodging::Address)).returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Lodging::Address))
           }
          def address=(_address); end
          # The number of adults on the booking
          sig { returns(T.nilable(Integer)) }
          def adults; end
          sig { params(_adults: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def adults=(_adults); end
          # Affiliate details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Lodging::Affiliate))
           }
          def affiliate; end
          sig {
            params(_affiliate: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Lodging::Affiliate)).returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Lodging::Affiliate))
           }
          def affiliate=(_affiliate); end
          # The booking number associated with the lodging reservation.
          sig { returns(T.nilable(String)) }
          def booking_number; end
          sig { params(_booking_number: T.nilable(String)).returns(T.nilable(String)) }
          def booking_number=(_booking_number); end
          # The lodging category
          sig { returns(T.nilable(String)) }
          def category; end
          sig { params(_category: T.nilable(String)).returns(T.nilable(String)) }
          def category=(_category); end
          # Lodging check-in time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          def checkin_at; end
          sig { params(_checkin_at: Integer).returns(Integer) }
          def checkin_at=(_checkin_at); end
          # Lodging check-out time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          def checkout_at; end
          sig { params(_checkout_at: Integer).returns(Integer) }
          def checkout_at=(_checkout_at); end
          # The customer service phone number of the lodging company.
          sig { returns(T.nilable(String)) }
          def customer_service_phone_number; end
          sig {
            params(_customer_service_phone_number: T.nilable(String)).returns(T.nilable(String))
           }
          def customer_service_phone_number=(_customer_service_phone_number); end
          # The daily lodging room rate.
          sig { returns(T.nilable(Integer)) }
          def daily_room_rate_amount; end
          sig { params(_daily_room_rate_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def daily_room_rate_amount=(_daily_room_rate_amount); end
          # Delivery details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Lodging::Delivery))
           }
          def delivery; end
          sig {
            params(_delivery: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Lodging::Delivery)).returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Lodging::Delivery))
           }
          def delivery=(_delivery); end
          # List of additional charges being billed.
          sig { returns(T.nilable(T::Array[String])) }
          def extra_charges; end
          sig {
            params(_extra_charges: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def extra_charges=(_extra_charges); end
          # Indicates whether the lodging location is compliant with the Fire Safety Act.
          sig { returns(T.nilable(T::Boolean)) }
          def fire_safety_act_compliance; end
          sig {
            params(_fire_safety_act_compliance: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
           }
          def fire_safety_act_compliance=(_fire_safety_act_compliance); end
          # The name of the lodging location.
          sig { returns(T.nilable(String)) }
          def name; end
          sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_name); end
          # Indicates if the customer did not keep their booking while failing to cancel the reservation.
          sig { returns(T.nilable(T::Boolean)) }
          def no_show; end
          sig { params(_no_show: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def no_show=(_no_show); end
          # The number of rooms on the booking
          sig { returns(T.nilable(Integer)) }
          def number_of_rooms; end
          sig { params(_number_of_rooms: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def number_of_rooms=(_number_of_rooms); end
          # The details of the passengers in the travel reservation
          sig {
            returns(T.nilable(T::Array[::Stripe::ChargeService::UpdateParams::PaymentDetails::Lodging::Passenger]))
           }
          def passengers; end
          sig {
            params(_passengers: T.nilable(T::Array[::Stripe::ChargeService::UpdateParams::PaymentDetails::Lodging::Passenger])).returns(T.nilable(T::Array[::Stripe::ChargeService::UpdateParams::PaymentDetails::Lodging::Passenger]))
           }
          def passengers=(_passengers); end
          # The phone number of the lodging location.
          sig { returns(T.nilable(String)) }
          def property_phone_number; end
          sig { params(_property_phone_number: T.nilable(String)).returns(T.nilable(String)) }
          def property_phone_number=(_property_phone_number); end
          # The room class for this purchase.
          sig { returns(T.nilable(String)) }
          def room_class; end
          sig { params(_room_class: T.nilable(String)).returns(T.nilable(String)) }
          def room_class=(_room_class); end
          # The number of room nights
          sig { returns(T.nilable(Integer)) }
          def room_nights; end
          sig { params(_room_nights: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def room_nights=(_room_nights); end
          # The total tax amount associating with the room reservation.
          sig { returns(T.nilable(Integer)) }
          def total_room_tax_amount; end
          sig { params(_total_room_tax_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def total_room_tax_amount=(_total_room_tax_amount); end
          # The total tax amount
          sig { returns(T.nilable(Integer)) }
          def total_tax_amount; end
          sig { params(_total_tax_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def total_tax_amount=(_total_tax_amount); end
          sig {
            params(address: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Lodging::Address), adults: T.nilable(Integer), affiliate: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Lodging::Affiliate), booking_number: T.nilable(String), category: T.nilable(String), checkin_at: Integer, checkout_at: Integer, customer_service_phone_number: T.nilable(String), daily_room_rate_amount: T.nilable(Integer), delivery: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Lodging::Delivery), extra_charges: T.nilable(T::Array[String]), fire_safety_act_compliance: T.nilable(T::Boolean), name: T.nilable(String), no_show: T.nilable(T::Boolean), number_of_rooms: T.nilable(Integer), passengers: T.nilable(T::Array[::Stripe::ChargeService::UpdateParams::PaymentDetails::Lodging::Passenger]), property_phone_number: T.nilable(String), room_class: T.nilable(String), room_nights: T.nilable(Integer), total_room_tax_amount: T.nilable(Integer), total_tax_amount: T.nilable(Integer)).void
           }
          def initialize(
            address: nil,
            adults: nil,
            affiliate: nil,
            booking_number: nil,
            category: nil,
            checkin_at: nil,
            checkout_at: nil,
            customer_service_phone_number: nil,
            daily_room_rate_amount: nil,
            delivery: nil,
            extra_charges: nil,
            fire_safety_act_compliance: nil,
            name: nil,
            no_show: nil,
            number_of_rooms: nil,
            passengers: nil,
            property_phone_number: nil,
            room_class: nil,
            room_nights: nil,
            total_room_tax_amount: nil,
            total_tax_amount: nil
          ); end
        end
        class Subscription < Stripe::RequestParams
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            def name; end
            sig { params(_name: String).returns(String) }
            def name=(_name); end
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class BillingInterval < Stripe::RequestParams
            # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
            sig { returns(Integer) }
            def count; end
            sig { params(_count: Integer).returns(Integer) }
            def count=(_count); end
            # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            def interval; end
            sig { params(_interval: String).returns(String) }
            def interval=(_interval); end
            sig { params(count: Integer, interval: String).void }
            def initialize(count: nil, interval: nil); end
          end
          # Affiliate details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Subscription::Affiliate))
           }
          def affiliate; end
          sig {
            params(_affiliate: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Subscription::Affiliate)).returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Subscription::Affiliate))
           }
          def affiliate=(_affiliate); end
          # Info whether the subscription will be auto renewed upon expiry.
          sig { returns(T.nilable(T::Boolean)) }
          def auto_renewal; end
          sig { params(_auto_renewal: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def auto_renewal=(_auto_renewal); end
          # Subscription billing details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Subscription::BillingInterval))
           }
          def billing_interval; end
          sig {
            params(_billing_interval: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Subscription::BillingInterval)).returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Subscription::BillingInterval))
           }
          def billing_interval=(_billing_interval); end
          # Subscription end time. Measured in seconds since the Unix epoch.
          sig { returns(T.nilable(Integer)) }
          def ends_at; end
          sig { params(_ends_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def ends_at=(_ends_at); end
          # Name of the product on subscription. e.g. Apple Music Subscription
          sig { returns(String) }
          def name; end
          sig { params(_name: String).returns(String) }
          def name=(_name); end
          # Subscription start time. Measured in seconds since the Unix epoch.
          sig { returns(T.nilable(Integer)) }
          def starts_at; end
          sig { params(_starts_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def starts_at=(_starts_at); end
          sig {
            params(affiliate: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Subscription::Affiliate), auto_renewal: T.nilable(T::Boolean), billing_interval: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Subscription::BillingInterval), ends_at: T.nilable(Integer), name: String, starts_at: T.nilable(Integer)).void
           }
          def initialize(
            affiliate: nil,
            auto_renewal: nil,
            billing_interval: nil,
            ends_at: nil,
            name: nil,
            starts_at: nil
          ); end
        end
        # Car rental details for this PaymentIntent.
        sig { returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental)) }
        def car_rental; end
        sig {
          params(_car_rental: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental)).returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental))
         }
        def car_rental=(_car_rental); end
        # Some customers might be required by their company or organization to provide this information. If so, provide this value. Otherwise you can ignore this field.
        sig { returns(T.nilable(String)) }
        def customer_reference; end
        sig { params(_customer_reference: T.nilable(String)).returns(T.nilable(String)) }
        def customer_reference=(_customer_reference); end
        # Event details for this PaymentIntent
        sig {
          returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::EventDetails))
         }
        def event_details; end
        sig {
          params(_event_details: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::EventDetails)).returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::EventDetails))
         }
        def event_details=(_event_details); end
        # Flight reservation details for this PaymentIntent
        sig { returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Flight)) }
        def flight; end
        sig {
          params(_flight: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Flight)).returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Flight))
         }
        def flight=(_flight); end
        # Lodging reservation details for this PaymentIntent
        sig { returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Lodging)) }
        def lodging; end
        sig {
          params(_lodging: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Lodging)).returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Lodging))
         }
        def lodging=(_lodging); end
        # A unique value assigned by the business to identify the transaction.
        sig { returns(T.nilable(String)) }
        def order_reference; end
        sig { params(_order_reference: T.nilable(String)).returns(T.nilable(String)) }
        def order_reference=(_order_reference); end
        # Subscription details for this PaymentIntent
        sig {
          returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Subscription))
         }
        def subscription; end
        sig {
          params(_subscription: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Subscription)).returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Subscription))
         }
        def subscription=(_subscription); end
        sig {
          params(car_rental: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental), customer_reference: T.nilable(String), event_details: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::EventDetails), flight: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Flight), lodging: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Lodging), order_reference: T.nilable(String), subscription: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Subscription)).void
         }
        def initialize(
          car_rental: nil,
          customer_reference: nil,
          event_details: nil,
          flight: nil,
          lodging: nil,
          order_reference: nil,
          subscription: nil
        ); end
      end
      class Shipping < Stripe::RequestParams
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
          # Address line 1, such as the street, PO Box, or company name.
          sig { returns(T.nilable(String)) }
          def line1; end
          sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
          def line1=(_line1); end
          # Address line 2, such as the apartment, suite, unit, or building.
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
        # Shipping address.
        sig { returns(::Stripe::ChargeService::UpdateParams::Shipping::Address) }
        def address; end
        sig {
          params(_address: ::Stripe::ChargeService::UpdateParams::Shipping::Address).returns(::Stripe::ChargeService::UpdateParams::Shipping::Address)
         }
        def address=(_address); end
        # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
        sig { returns(T.nilable(String)) }
        def carrier; end
        sig { params(_carrier: T.nilable(String)).returns(T.nilable(String)) }
        def carrier=(_carrier); end
        # Recipient name.
        sig { returns(String) }
        def name; end
        sig { params(_name: String).returns(String) }
        def name=(_name); end
        # Recipient phone (including extension).
        sig { returns(T.nilable(String)) }
        def phone; end
        sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
        def phone=(_phone); end
        # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
        sig { returns(T.nilable(String)) }
        def tracking_number; end
        sig { params(_tracking_number: T.nilable(String)).returns(T.nilable(String)) }
        def tracking_number=(_tracking_number); end
        sig {
          params(address: ::Stripe::ChargeService::UpdateParams::Shipping::Address, carrier: T.nilable(String), name: String, phone: T.nilable(String), tracking_number: T.nilable(String)).void
         }
        def initialize(address: nil, carrier: nil, name: nil, phone: nil, tracking_number: nil); end
      end
      # The ID of an existing customer that will be associated with this request. This field may only be updated if there is no existing associated customer with this charge.
      sig { returns(T.nilable(String)) }
      def customer; end
      sig { params(_customer: T.nilable(String)).returns(T.nilable(String)) }
      def customer=(_customer); end
      # An arbitrary string which you can attach to a charge object. It is displayed when in the web interface alongside the charge. Note that if you use Stripe to send automatic email receipts to your customers, your receipt emails will include the `description` of the charge(s) that they are describing.
      sig { returns(T.nilable(String)) }
      def description; end
      sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
      def description=(_description); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # A set of key-value pairs you can attach to a charge giving information about its riskiness. If you believe a charge is fraudulent, include a `user_report` key with a value of `fraudulent`. If you believe a charge is safe, include a `user_report` key with a value of `safe`. Stripe will use the information you send to improve our fraud detection algorithms.
      sig { returns(T.nilable(::Stripe::ChargeService::UpdateParams::FraudDetails)) }
      def fraud_details; end
      sig {
        params(_fraud_details: T.nilable(::Stripe::ChargeService::UpdateParams::FraudDetails)).returns(T.nilable(::Stripe::ChargeService::UpdateParams::FraudDetails))
       }
      def fraud_details=(_fraud_details); end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
       }
      def metadata=(_metadata); end
      # Provides industry-specific information about the charge.
      sig { returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails)) }
      def payment_details; end
      sig {
        params(_payment_details: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails)).returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails))
       }
      def payment_details=(_payment_details); end
      # This is the email address that the receipt for this charge will be sent to. If this field is updated, then a new email receipt will be sent to the updated address.
      sig { returns(T.nilable(String)) }
      def receipt_email; end
      sig { params(_receipt_email: T.nilable(String)).returns(T.nilable(String)) }
      def receipt_email=(_receipt_email); end
      # Shipping information for the charge. Helps prevent fraud on charges for physical goods.
      sig { returns(T.nilable(::Stripe::ChargeService::UpdateParams::Shipping)) }
      def shipping; end
      sig {
        params(_shipping: T.nilable(::Stripe::ChargeService::UpdateParams::Shipping)).returns(T.nilable(::Stripe::ChargeService::UpdateParams::Shipping))
       }
      def shipping=(_shipping); end
      # A string that identifies this transaction as part of a group. `transfer_group` may only be provided if it has not been set. See the [Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers#transfer-options) for details.
      sig { returns(T.nilable(String)) }
      def transfer_group; end
      sig { params(_transfer_group: T.nilable(String)).returns(T.nilable(String)) }
      def transfer_group=(_transfer_group); end
      sig {
        params(customer: T.nilable(String), description: T.nilable(String), expand: T.nilable(T::Array[String]), fraud_details: T.nilable(::Stripe::ChargeService::UpdateParams::FraudDetails), metadata: T.nilable(T.any(String, T::Hash[String, String])), payment_details: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails), receipt_email: T.nilable(String), shipping: T.nilable(::Stripe::ChargeService::UpdateParams::Shipping), transfer_group: T.nilable(String)).void
       }
      def initialize(
        customer: nil,
        description: nil,
        expand: nil,
        fraud_details: nil,
        metadata: nil,
        payment_details: nil,
        receipt_email: nil,
        shipping: nil,
        transfer_group: nil
      ); end
    end
    class SearchParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      def limit; end
      sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def limit=(_limit); end
      # A cursor for pagination across multiple pages of results. Don't include this parameter on the first call. Use the next_page value returned in a previous response to request subsequent results.
      sig { returns(T.nilable(String)) }
      def page; end
      sig { params(_page: T.nilable(String)).returns(T.nilable(String)) }
      def page=(_page); end
      # The search query string. See [search query language](https://stripe.com/docs/search#search-query-language) and the list of supported [query fields for charges](https://stripe.com/docs/search#query-fields-for-charges).
      sig { returns(String) }
      def query; end
      sig { params(_query: String).returns(String) }
      def query=(_query); end
      sig {
        params(expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), page: T.nilable(String), query: String).void
       }
      def initialize(expand: nil, limit: nil, page: nil, query: nil); end
    end
    class CaptureParams < Stripe::RequestParams
      class PaymentDetails < Stripe::RequestParams
        class CarRental < Stripe::RequestParams
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            def name; end
            sig { params(_name: String).returns(String) }
            def name=(_name); end
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              def email; end
              sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
              def email=(_email); end
              # The name of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              def name; end
              sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
              def name=(_name); end
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              def phone; end
              sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
              def phone=(_phone); end
              sig {
                params(email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
               }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(T.nilable(String)) }
            def mode; end
            sig { params(_mode: T.nilable(String)).returns(T.nilable(String)) }
            def mode=(_mode); end
            # Details of the recipient.
            sig {
              returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::Delivery::Recipient))
             }
            def recipient; end
            sig {
              params(_recipient: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::Delivery::Recipient)).returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::Delivery::Recipient))
             }
            def recipient=(_recipient); end
            sig {
              params(mode: T.nilable(String), recipient: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::Delivery::Recipient)).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          class Distance < Stripe::RequestParams
            # Distance traveled.
            sig { returns(T.nilable(Integer)) }
            def amount; end
            sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def amount=(_amount); end
            # Unit of measurement for the distance traveled. One of `miles` or `kilometers`.
            sig { returns(T.nilable(String)) }
            def unit; end
            sig { params(_unit: T.nilable(String)).returns(T.nilable(String)) }
            def unit=(_unit); end
            sig { params(amount: T.nilable(Integer), unit: T.nilable(String)).void }
            def initialize(amount: nil, unit: nil); end
          end
          class Driver < Stripe::RequestParams
            # Driver's identification number.
            sig { returns(T.nilable(String)) }
            def driver_identification_number; end
            sig {
              params(_driver_identification_number: T.nilable(String)).returns(T.nilable(String))
             }
            def driver_identification_number=(_driver_identification_number); end
            # Driver's tax number.
            sig { returns(T.nilable(String)) }
            def driver_tax_number; end
            sig { params(_driver_tax_number: T.nilable(String)).returns(T.nilable(String)) }
            def driver_tax_number=(_driver_tax_number); end
            # Full name of the person or entity on the car reservation.
            sig { returns(String) }
            def name; end
            sig { params(_name: String).returns(String) }
            def name=(_name); end
            sig {
              params(driver_identification_number: T.nilable(String), driver_tax_number: T.nilable(String), name: String).void
             }
            def initialize(
              driver_identification_number: nil,
              driver_tax_number: nil,
              name: nil
            ); end
          end
          class PickupAddress < Stripe::RequestParams
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
            # Address line 1, such as the street, PO Box, or company name.
            sig { returns(T.nilable(String)) }
            def line1; end
            sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
            def line1=(_line1); end
            # Address line 2, such as the apartment, suite, unit, or building.
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
          class ReturnAddress < Stripe::RequestParams
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
            # Address line 1, such as the street, PO Box, or company name.
            sig { returns(T.nilable(String)) }
            def line1; end
            sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
            def line1=(_line1); end
            # Address line 2, such as the apartment, suite, unit, or building.
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
          # Affiliate details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::Affiliate))
           }
          def affiliate; end
          sig {
            params(_affiliate: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::Affiliate)).returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::Affiliate))
           }
          def affiliate=(_affiliate); end
          # The booking number associated with the car rental.
          sig { returns(String) }
          def booking_number; end
          sig { params(_booking_number: String).returns(String) }
          def booking_number=(_booking_number); end
          # Class code of the car.
          sig { returns(T.nilable(String)) }
          def car_class_code; end
          sig { params(_car_class_code: T.nilable(String)).returns(T.nilable(String)) }
          def car_class_code=(_car_class_code); end
          # Make of the car.
          sig { returns(T.nilable(String)) }
          def car_make; end
          sig { params(_car_make: T.nilable(String)).returns(T.nilable(String)) }
          def car_make=(_car_make); end
          # Model of the car.
          sig { returns(T.nilable(String)) }
          def car_model; end
          sig { params(_car_model: T.nilable(String)).returns(T.nilable(String)) }
          def car_model=(_car_model); end
          # The name of the rental car company.
          sig { returns(T.nilable(String)) }
          def company; end
          sig { params(_company: T.nilable(String)).returns(T.nilable(String)) }
          def company=(_company); end
          # The customer service phone number of the car rental company.
          sig { returns(T.nilable(String)) }
          def customer_service_phone_number; end
          sig {
            params(_customer_service_phone_number: T.nilable(String)).returns(T.nilable(String))
           }
          def customer_service_phone_number=(_customer_service_phone_number); end
          # Number of days the car is being rented.
          sig { returns(Integer) }
          def days_rented; end
          sig { params(_days_rented: Integer).returns(Integer) }
          def days_rented=(_days_rented); end
          # Delivery details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::Delivery))
           }
          def delivery; end
          sig {
            params(_delivery: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::Delivery)).returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::Delivery))
           }
          def delivery=(_delivery); end
          # The details of the distance traveled during the rental period.
          sig {
            returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::Distance))
           }
          def distance; end
          sig {
            params(_distance: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::Distance)).returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::Distance))
           }
          def distance=(_distance); end
          # The details of the passengers in the travel reservation
          sig {
            returns(T.nilable(T::Array[::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::Driver]))
           }
          def drivers; end
          sig {
            params(_drivers: T.nilable(T::Array[::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::Driver])).returns(T.nilable(T::Array[::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::Driver]))
           }
          def drivers=(_drivers); end
          # List of additional charges being billed.
          sig { returns(T.nilable(T::Array[String])) }
          def extra_charges; end
          sig {
            params(_extra_charges: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def extra_charges=(_extra_charges); end
          # Indicates if the customer did not keep nor cancel their booking.
          sig { returns(T.nilable(T::Boolean)) }
          def no_show; end
          sig { params(_no_show: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def no_show=(_no_show); end
          # Car pick-up address.
          sig {
            returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::PickupAddress))
           }
          def pickup_address; end
          sig {
            params(_pickup_address: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::PickupAddress)).returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::PickupAddress))
           }
          def pickup_address=(_pickup_address); end
          # Car pick-up time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          def pickup_at; end
          sig { params(_pickup_at: Integer).returns(Integer) }
          def pickup_at=(_pickup_at); end
          # Name of the pickup location.
          sig { returns(T.nilable(String)) }
          def pickup_location_name; end
          sig { params(_pickup_location_name: T.nilable(String)).returns(T.nilable(String)) }
          def pickup_location_name=(_pickup_location_name); end
          # Rental rate.
          sig { returns(T.nilable(Integer)) }
          def rate_amount; end
          sig { params(_rate_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def rate_amount=(_rate_amount); end
          # The frequency at which the rate amount is applied. One of `day`, `week` or `month`
          sig { returns(T.nilable(String)) }
          def rate_interval; end
          sig { params(_rate_interval: T.nilable(String)).returns(T.nilable(String)) }
          def rate_interval=(_rate_interval); end
          # The name of the person or entity renting the car.
          sig { returns(T.nilable(String)) }
          def renter_name; end
          sig { params(_renter_name: T.nilable(String)).returns(T.nilable(String)) }
          def renter_name=(_renter_name); end
          # Car return address.
          sig {
            returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::ReturnAddress))
           }
          def return_address; end
          sig {
            params(_return_address: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::ReturnAddress)).returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::ReturnAddress))
           }
          def return_address=(_return_address); end
          # Car return time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          def return_at; end
          sig { params(_return_at: Integer).returns(Integer) }
          def return_at=(_return_at); end
          # Name of the return location.
          sig { returns(T.nilable(String)) }
          def return_location_name; end
          sig { params(_return_location_name: T.nilable(String)).returns(T.nilable(String)) }
          def return_location_name=(_return_location_name); end
          # Indicates whether the goods or services are tax-exempt or tax is not collected.
          sig { returns(T.nilable(T::Boolean)) }
          def tax_exempt; end
          sig { params(_tax_exempt: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def tax_exempt=(_tax_exempt); end
          # The vehicle identification number.
          sig { returns(T.nilable(String)) }
          def vehicle_identification_number; end
          sig {
            params(_vehicle_identification_number: T.nilable(String)).returns(T.nilable(String))
           }
          def vehicle_identification_number=(_vehicle_identification_number); end
          sig {
            params(affiliate: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::Affiliate), booking_number: String, car_class_code: T.nilable(String), car_make: T.nilable(String), car_model: T.nilable(String), company: T.nilable(String), customer_service_phone_number: T.nilable(String), days_rented: Integer, delivery: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::Delivery), distance: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::Distance), drivers: T.nilable(T::Array[::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::Driver]), extra_charges: T.nilable(T::Array[String]), no_show: T.nilable(T::Boolean), pickup_address: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::PickupAddress), pickup_at: Integer, pickup_location_name: T.nilable(String), rate_amount: T.nilable(Integer), rate_interval: T.nilable(String), renter_name: T.nilable(String), return_address: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::ReturnAddress), return_at: Integer, return_location_name: T.nilable(String), tax_exempt: T.nilable(T::Boolean), vehicle_identification_number: T.nilable(String)).void
           }
          def initialize(
            affiliate: nil,
            booking_number: nil,
            car_class_code: nil,
            car_make: nil,
            car_model: nil,
            company: nil,
            customer_service_phone_number: nil,
            days_rented: nil,
            delivery: nil,
            distance: nil,
            drivers: nil,
            extra_charges: nil,
            no_show: nil,
            pickup_address: nil,
            pickup_at: nil,
            pickup_location_name: nil,
            rate_amount: nil,
            rate_interval: nil,
            renter_name: nil,
            return_address: nil,
            return_at: nil,
            return_location_name: nil,
            tax_exempt: nil,
            vehicle_identification_number: nil
          ); end
        end
        class EventDetails < Stripe::RequestParams
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
            # Address line 1, such as the street, PO Box, or company name.
            sig { returns(T.nilable(String)) }
            def line1; end
            sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
            def line1=(_line1); end
            # Address line 2, such as the apartment, suite, unit, or building.
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
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            def name; end
            sig { params(_name: String).returns(String) }
            def name=(_name); end
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              def email; end
              sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
              def email=(_email); end
              # The name of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              def name; end
              sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
              def name=(_name); end
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              def phone; end
              sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
              def phone=(_phone); end
              sig {
                params(email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
               }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(T.nilable(String)) }
            def mode; end
            sig { params(_mode: T.nilable(String)).returns(T.nilable(String)) }
            def mode=(_mode); end
            # Details of the recipient.
            sig {
              returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::EventDetails::Delivery::Recipient))
             }
            def recipient; end
            sig {
              params(_recipient: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::EventDetails::Delivery::Recipient)).returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::EventDetails::Delivery::Recipient))
             }
            def recipient=(_recipient); end
            sig {
              params(mode: T.nilable(String), recipient: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::EventDetails::Delivery::Recipient)).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          # Indicates if the tickets are digitally checked when entering the venue.
          sig { returns(T.nilable(T::Boolean)) }
          def access_controlled_venue; end
          sig {
            params(_access_controlled_venue: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
           }
          def access_controlled_venue=(_access_controlled_venue); end
          # The event location's address.
          sig {
            returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::EventDetails::Address))
           }
          def address; end
          sig {
            params(_address: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::EventDetails::Address)).returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::EventDetails::Address))
           }
          def address=(_address); end
          # Affiliate details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::EventDetails::Affiliate))
           }
          def affiliate; end
          sig {
            params(_affiliate: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::EventDetails::Affiliate)).returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::EventDetails::Affiliate))
           }
          def affiliate=(_affiliate); end
          # The name of the company
          sig { returns(T.nilable(String)) }
          def company; end
          sig { params(_company: T.nilable(String)).returns(T.nilable(String)) }
          def company=(_company); end
          # Delivery details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::EventDetails::Delivery))
           }
          def delivery; end
          sig {
            params(_delivery: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::EventDetails::Delivery)).returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::EventDetails::Delivery))
           }
          def delivery=(_delivery); end
          # Event end time. Measured in seconds since the Unix epoch.
          sig { returns(T.nilable(Integer)) }
          def ends_at; end
          sig { params(_ends_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def ends_at=(_ends_at); end
          # Type of the event entertainment (concert, sports event etc)
          sig { returns(T.nilable(String)) }
          def genre; end
          sig { params(_genre: T.nilable(String)).returns(T.nilable(String)) }
          def genre=(_genre); end
          # The name of the event.
          sig { returns(String) }
          def name; end
          sig { params(_name: String).returns(String) }
          def name=(_name); end
          # Event start time. Measured in seconds since the Unix epoch.
          sig { returns(T.nilable(Integer)) }
          def starts_at; end
          sig { params(_starts_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def starts_at=(_starts_at); end
          sig {
            params(access_controlled_venue: T.nilable(T::Boolean), address: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::EventDetails::Address), affiliate: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::EventDetails::Affiliate), company: T.nilable(String), delivery: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::EventDetails::Delivery), ends_at: T.nilable(Integer), genre: T.nilable(String), name: String, starts_at: T.nilable(Integer)).void
           }
          def initialize(
            access_controlled_venue: nil,
            address: nil,
            affiliate: nil,
            company: nil,
            delivery: nil,
            ends_at: nil,
            genre: nil,
            name: nil,
            starts_at: nil
          ); end
        end
        class Flight < Stripe::RequestParams
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            def name; end
            sig { params(_name: String).returns(String) }
            def name=(_name); end
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              def email; end
              sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
              def email=(_email); end
              # The name of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              def name; end
              sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
              def name=(_name); end
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              def phone; end
              sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
              def phone=(_phone); end
              sig {
                params(email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
               }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(T.nilable(String)) }
            def mode; end
            sig { params(_mode: T.nilable(String)).returns(T.nilable(String)) }
            def mode=(_mode); end
            # Details of the recipient.
            sig {
              returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Flight::Delivery::Recipient))
             }
            def recipient; end
            sig {
              params(_recipient: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Flight::Delivery::Recipient)).returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Flight::Delivery::Recipient))
             }
            def recipient=(_recipient); end
            sig {
              params(mode: T.nilable(String), recipient: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Flight::Delivery::Recipient)).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          class Passenger < Stripe::RequestParams
            # Full name of the person or entity on the flight reservation.
            sig { returns(String) }
            def name; end
            sig { params(_name: String).returns(String) }
            def name=(_name); end
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Segment < Stripe::RequestParams
            # The flight segment amount.
            sig { returns(T.nilable(Integer)) }
            def amount; end
            sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def amount=(_amount); end
            # The International Air Transport Association (IATA) airport code for the arrival airport.
            sig { returns(T.nilable(String)) }
            def arrival_airport; end
            sig { params(_arrival_airport: T.nilable(String)).returns(T.nilable(String)) }
            def arrival_airport=(_arrival_airport); end
            # The arrival time for the flight segment. Measured in seconds since the Unix epoch.
            sig { returns(T.nilable(Integer)) }
            def arrives_at; end
            sig { params(_arrives_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def arrives_at=(_arrives_at); end
            # The International Air Transport Association (IATA) carrier code of the carrier operating the flight segment.
            sig { returns(T.nilable(String)) }
            def carrier; end
            sig { params(_carrier: T.nilable(String)).returns(T.nilable(String)) }
            def carrier=(_carrier); end
            # The departure time for the flight segment. Measured in seconds since the Unix epoch.
            sig { returns(Integer) }
            def departs_at; end
            sig { params(_departs_at: Integer).returns(Integer) }
            def departs_at=(_departs_at); end
            # The International Air Transport Association (IATA) airport code for the departure airport.
            sig { returns(T.nilable(String)) }
            def departure_airport; end
            sig { params(_departure_airport: T.nilable(String)).returns(T.nilable(String)) }
            def departure_airport=(_departure_airport); end
            # The flight number associated with the segment
            sig { returns(T.nilable(String)) }
            def flight_number; end
            sig { params(_flight_number: T.nilable(String)).returns(T.nilable(String)) }
            def flight_number=(_flight_number); end
            # The fare class for the segment.
            sig { returns(T.nilable(String)) }
            def service_class; end
            sig { params(_service_class: T.nilable(String)).returns(T.nilable(String)) }
            def service_class=(_service_class); end
            sig {
              params(amount: T.nilable(Integer), arrival_airport: T.nilable(String), arrives_at: T.nilable(Integer), carrier: T.nilable(String), departs_at: Integer, departure_airport: T.nilable(String), flight_number: T.nilable(String), service_class: T.nilable(String)).void
             }
            def initialize(
              amount: nil,
              arrival_airport: nil,
              arrives_at: nil,
              carrier: nil,
              departs_at: nil,
              departure_airport: nil,
              flight_number: nil,
              service_class: nil
            ); end
          end
          # Affiliate details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Flight::Affiliate))
           }
          def affiliate; end
          sig {
            params(_affiliate: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Flight::Affiliate)).returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Flight::Affiliate))
           }
          def affiliate=(_affiliate); end
          # The agency number (i.e. International Air Transport Association (IATA) agency number) of the travel agency that made the booking.
          sig { returns(T.nilable(String)) }
          def agency_number; end
          sig { params(_agency_number: T.nilable(String)).returns(T.nilable(String)) }
          def agency_number=(_agency_number); end
          # The International Air Transport Association (IATA) carrier code of the carrier that issued the ticket.
          sig { returns(T.nilable(String)) }
          def carrier; end
          sig { params(_carrier: T.nilable(String)).returns(T.nilable(String)) }
          def carrier=(_carrier); end
          # Delivery details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Flight::Delivery))
           }
          def delivery; end
          sig {
            params(_delivery: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Flight::Delivery)).returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Flight::Delivery))
           }
          def delivery=(_delivery); end
          # The name of the person or entity on the reservation.
          sig { returns(T.nilable(String)) }
          def passenger_name; end
          sig { params(_passenger_name: T.nilable(String)).returns(T.nilable(String)) }
          def passenger_name=(_passenger_name); end
          # The details of the passengers in the travel reservation.
          sig {
            returns(T.nilable(T::Array[::Stripe::ChargeService::CaptureParams::PaymentDetails::Flight::Passenger]))
           }
          def passengers; end
          sig {
            params(_passengers: T.nilable(T::Array[::Stripe::ChargeService::CaptureParams::PaymentDetails::Flight::Passenger])).returns(T.nilable(T::Array[::Stripe::ChargeService::CaptureParams::PaymentDetails::Flight::Passenger]))
           }
          def passengers=(_passengers); end
          # The individual flight segments associated with the trip.
          sig {
            returns(T::Array[::Stripe::ChargeService::CaptureParams::PaymentDetails::Flight::Segment])
           }
          def segments; end
          sig {
            params(_segments: T::Array[::Stripe::ChargeService::CaptureParams::PaymentDetails::Flight::Segment]).returns(T::Array[::Stripe::ChargeService::CaptureParams::PaymentDetails::Flight::Segment])
           }
          def segments=(_segments); end
          # The ticket number associated with the travel reservation.
          sig { returns(T.nilable(String)) }
          def ticket_number; end
          sig { params(_ticket_number: T.nilable(String)).returns(T.nilable(String)) }
          def ticket_number=(_ticket_number); end
          sig {
            params(affiliate: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Flight::Affiliate), agency_number: T.nilable(String), carrier: T.nilable(String), delivery: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Flight::Delivery), passenger_name: T.nilable(String), passengers: T.nilable(T::Array[::Stripe::ChargeService::CaptureParams::PaymentDetails::Flight::Passenger]), segments: T::Array[::Stripe::ChargeService::CaptureParams::PaymentDetails::Flight::Segment], ticket_number: T.nilable(String)).void
           }
          def initialize(
            affiliate: nil,
            agency_number: nil,
            carrier: nil,
            delivery: nil,
            passenger_name: nil,
            passengers: nil,
            segments: nil,
            ticket_number: nil
          ); end
        end
        class Lodging < Stripe::RequestParams
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
            # Address line 1, such as the street, PO Box, or company name.
            sig { returns(T.nilable(String)) }
            def line1; end
            sig { params(_line1: T.nilable(String)).returns(T.nilable(String)) }
            def line1=(_line1); end
            # Address line 2, such as the apartment, suite, unit, or building.
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
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            def name; end
            sig { params(_name: String).returns(String) }
            def name=(_name); end
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              def email; end
              sig { params(_email: T.nilable(String)).returns(T.nilable(String)) }
              def email=(_email); end
              # The name of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              def name; end
              sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
              def name=(_name); end
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              def phone; end
              sig { params(_phone: T.nilable(String)).returns(T.nilable(String)) }
              def phone=(_phone); end
              sig {
                params(email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
               }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(T.nilable(String)) }
            def mode; end
            sig { params(_mode: T.nilable(String)).returns(T.nilable(String)) }
            def mode=(_mode); end
            # Details of the recipient.
            sig {
              returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Lodging::Delivery::Recipient))
             }
            def recipient; end
            sig {
              params(_recipient: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Lodging::Delivery::Recipient)).returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Lodging::Delivery::Recipient))
             }
            def recipient=(_recipient); end
            sig {
              params(mode: T.nilable(String), recipient: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Lodging::Delivery::Recipient)).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          class Passenger < Stripe::RequestParams
            # Full name of the person or entity on the lodging reservation.
            sig { returns(String) }
            def name; end
            sig { params(_name: String).returns(String) }
            def name=(_name); end
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          # The lodging location's address.
          sig {
            returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Lodging::Address))
           }
          def address; end
          sig {
            params(_address: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Lodging::Address)).returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Lodging::Address))
           }
          def address=(_address); end
          # The number of adults on the booking
          sig { returns(T.nilable(Integer)) }
          def adults; end
          sig { params(_adults: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def adults=(_adults); end
          # Affiliate details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Lodging::Affiliate))
           }
          def affiliate; end
          sig {
            params(_affiliate: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Lodging::Affiliate)).returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Lodging::Affiliate))
           }
          def affiliate=(_affiliate); end
          # The booking number associated with the lodging reservation.
          sig { returns(T.nilable(String)) }
          def booking_number; end
          sig { params(_booking_number: T.nilable(String)).returns(T.nilable(String)) }
          def booking_number=(_booking_number); end
          # The lodging category
          sig { returns(T.nilable(String)) }
          def category; end
          sig { params(_category: T.nilable(String)).returns(T.nilable(String)) }
          def category=(_category); end
          # Lodging check-in time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          def checkin_at; end
          sig { params(_checkin_at: Integer).returns(Integer) }
          def checkin_at=(_checkin_at); end
          # Lodging check-out time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          def checkout_at; end
          sig { params(_checkout_at: Integer).returns(Integer) }
          def checkout_at=(_checkout_at); end
          # The customer service phone number of the lodging company.
          sig { returns(T.nilable(String)) }
          def customer_service_phone_number; end
          sig {
            params(_customer_service_phone_number: T.nilable(String)).returns(T.nilable(String))
           }
          def customer_service_phone_number=(_customer_service_phone_number); end
          # The daily lodging room rate.
          sig { returns(T.nilable(Integer)) }
          def daily_room_rate_amount; end
          sig { params(_daily_room_rate_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def daily_room_rate_amount=(_daily_room_rate_amount); end
          # Delivery details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Lodging::Delivery))
           }
          def delivery; end
          sig {
            params(_delivery: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Lodging::Delivery)).returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Lodging::Delivery))
           }
          def delivery=(_delivery); end
          # List of additional charges being billed.
          sig { returns(T.nilable(T::Array[String])) }
          def extra_charges; end
          sig {
            params(_extra_charges: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String]))
           }
          def extra_charges=(_extra_charges); end
          # Indicates whether the lodging location is compliant with the Fire Safety Act.
          sig { returns(T.nilable(T::Boolean)) }
          def fire_safety_act_compliance; end
          sig {
            params(_fire_safety_act_compliance: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
           }
          def fire_safety_act_compliance=(_fire_safety_act_compliance); end
          # The name of the lodging location.
          sig { returns(T.nilable(String)) }
          def name; end
          sig { params(_name: T.nilable(String)).returns(T.nilable(String)) }
          def name=(_name); end
          # Indicates if the customer did not keep their booking while failing to cancel the reservation.
          sig { returns(T.nilable(T::Boolean)) }
          def no_show; end
          sig { params(_no_show: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def no_show=(_no_show); end
          # The number of rooms on the booking
          sig { returns(T.nilable(Integer)) }
          def number_of_rooms; end
          sig { params(_number_of_rooms: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def number_of_rooms=(_number_of_rooms); end
          # The details of the passengers in the travel reservation
          sig {
            returns(T.nilable(T::Array[::Stripe::ChargeService::CaptureParams::PaymentDetails::Lodging::Passenger]))
           }
          def passengers; end
          sig {
            params(_passengers: T.nilable(T::Array[::Stripe::ChargeService::CaptureParams::PaymentDetails::Lodging::Passenger])).returns(T.nilable(T::Array[::Stripe::ChargeService::CaptureParams::PaymentDetails::Lodging::Passenger]))
           }
          def passengers=(_passengers); end
          # The phone number of the lodging location.
          sig { returns(T.nilable(String)) }
          def property_phone_number; end
          sig { params(_property_phone_number: T.nilable(String)).returns(T.nilable(String)) }
          def property_phone_number=(_property_phone_number); end
          # The room class for this purchase.
          sig { returns(T.nilable(String)) }
          def room_class; end
          sig { params(_room_class: T.nilable(String)).returns(T.nilable(String)) }
          def room_class=(_room_class); end
          # The number of room nights
          sig { returns(T.nilable(Integer)) }
          def room_nights; end
          sig { params(_room_nights: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def room_nights=(_room_nights); end
          # The total tax amount associating with the room reservation.
          sig { returns(T.nilable(Integer)) }
          def total_room_tax_amount; end
          sig { params(_total_room_tax_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def total_room_tax_amount=(_total_room_tax_amount); end
          # The total tax amount
          sig { returns(T.nilable(Integer)) }
          def total_tax_amount; end
          sig { params(_total_tax_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def total_tax_amount=(_total_tax_amount); end
          sig {
            params(address: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Lodging::Address), adults: T.nilable(Integer), affiliate: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Lodging::Affiliate), booking_number: T.nilable(String), category: T.nilable(String), checkin_at: Integer, checkout_at: Integer, customer_service_phone_number: T.nilable(String), daily_room_rate_amount: T.nilable(Integer), delivery: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Lodging::Delivery), extra_charges: T.nilable(T::Array[String]), fire_safety_act_compliance: T.nilable(T::Boolean), name: T.nilable(String), no_show: T.nilable(T::Boolean), number_of_rooms: T.nilable(Integer), passengers: T.nilable(T::Array[::Stripe::ChargeService::CaptureParams::PaymentDetails::Lodging::Passenger]), property_phone_number: T.nilable(String), room_class: T.nilable(String), room_nights: T.nilable(Integer), total_room_tax_amount: T.nilable(Integer), total_tax_amount: T.nilable(Integer)).void
           }
          def initialize(
            address: nil,
            adults: nil,
            affiliate: nil,
            booking_number: nil,
            category: nil,
            checkin_at: nil,
            checkout_at: nil,
            customer_service_phone_number: nil,
            daily_room_rate_amount: nil,
            delivery: nil,
            extra_charges: nil,
            fire_safety_act_compliance: nil,
            name: nil,
            no_show: nil,
            number_of_rooms: nil,
            passengers: nil,
            property_phone_number: nil,
            room_class: nil,
            room_nights: nil,
            total_room_tax_amount: nil,
            total_tax_amount: nil
          ); end
        end
        class Subscription < Stripe::RequestParams
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            def name; end
            sig { params(_name: String).returns(String) }
            def name=(_name); end
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class BillingInterval < Stripe::RequestParams
            # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
            sig { returns(Integer) }
            def count; end
            sig { params(_count: Integer).returns(Integer) }
            def count=(_count); end
            # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            def interval; end
            sig { params(_interval: String).returns(String) }
            def interval=(_interval); end
            sig { params(count: Integer, interval: String).void }
            def initialize(count: nil, interval: nil); end
          end
          # Affiliate details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Subscription::Affiliate))
           }
          def affiliate; end
          sig {
            params(_affiliate: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Subscription::Affiliate)).returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Subscription::Affiliate))
           }
          def affiliate=(_affiliate); end
          # Info whether the subscription will be auto renewed upon expiry.
          sig { returns(T.nilable(T::Boolean)) }
          def auto_renewal; end
          sig { params(_auto_renewal: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def auto_renewal=(_auto_renewal); end
          # Subscription billing details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Subscription::BillingInterval))
           }
          def billing_interval; end
          sig {
            params(_billing_interval: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Subscription::BillingInterval)).returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Subscription::BillingInterval))
           }
          def billing_interval=(_billing_interval); end
          # Subscription end time. Measured in seconds since the Unix epoch.
          sig { returns(T.nilable(Integer)) }
          def ends_at; end
          sig { params(_ends_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def ends_at=(_ends_at); end
          # Name of the product on subscription. e.g. Apple Music Subscription
          sig { returns(String) }
          def name; end
          sig { params(_name: String).returns(String) }
          def name=(_name); end
          # Subscription start time. Measured in seconds since the Unix epoch.
          sig { returns(T.nilable(Integer)) }
          def starts_at; end
          sig { params(_starts_at: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def starts_at=(_starts_at); end
          sig {
            params(affiliate: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Subscription::Affiliate), auto_renewal: T.nilable(T::Boolean), billing_interval: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Subscription::BillingInterval), ends_at: T.nilable(Integer), name: String, starts_at: T.nilable(Integer)).void
           }
          def initialize(
            affiliate: nil,
            auto_renewal: nil,
            billing_interval: nil,
            ends_at: nil,
            name: nil,
            starts_at: nil
          ); end
        end
        # Car rental details for this PaymentIntent.
        sig {
          returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental))
         }
        def car_rental; end
        sig {
          params(_car_rental: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental)).returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental))
         }
        def car_rental=(_car_rental); end
        # Some customers might be required by their company or organization to provide this information. If so, provide this value. Otherwise you can ignore this field.
        sig { returns(T.nilable(String)) }
        def customer_reference; end
        sig { params(_customer_reference: T.nilable(String)).returns(T.nilable(String)) }
        def customer_reference=(_customer_reference); end
        # Event details for this PaymentIntent
        sig {
          returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::EventDetails))
         }
        def event_details; end
        sig {
          params(_event_details: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::EventDetails)).returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::EventDetails))
         }
        def event_details=(_event_details); end
        # Flight reservation details for this PaymentIntent
        sig { returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Flight)) }
        def flight; end
        sig {
          params(_flight: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Flight)).returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Flight))
         }
        def flight=(_flight); end
        # Lodging reservation details for this PaymentIntent
        sig { returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Lodging)) }
        def lodging; end
        sig {
          params(_lodging: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Lodging)).returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Lodging))
         }
        def lodging=(_lodging); end
        # A unique value assigned by the business to identify the transaction.
        sig { returns(T.nilable(String)) }
        def order_reference; end
        sig { params(_order_reference: T.nilable(String)).returns(T.nilable(String)) }
        def order_reference=(_order_reference); end
        # Subscription details for this PaymentIntent
        sig {
          returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Subscription))
         }
        def subscription; end
        sig {
          params(_subscription: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Subscription)).returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Subscription))
         }
        def subscription=(_subscription); end
        sig {
          params(car_rental: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental), customer_reference: T.nilable(String), event_details: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::EventDetails), flight: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Flight), lodging: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Lodging), order_reference: T.nilable(String), subscription: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Subscription)).void
         }
        def initialize(
          car_rental: nil,
          customer_reference: nil,
          event_details: nil,
          flight: nil,
          lodging: nil,
          order_reference: nil,
          subscription: nil
        ); end
      end
      class TransferData < Stripe::RequestParams
        # The amount transferred to the destination account, if specified. By default, the entire charge amount is transferred to the destination account.
        sig { returns(T.nilable(Integer)) }
        def amount; end
        sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def amount=(_amount); end
        sig { params(amount: T.nilable(Integer)).void }
        def initialize(amount: nil); end
      end
      # The amount to capture, which must be less than or equal to the original amount.
      sig { returns(T.nilable(Integer)) }
      def amount; end
      sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount=(_amount); end
      # An application fee to add on to this charge.
      sig { returns(T.nilable(Integer)) }
      def application_fee; end
      sig { params(_application_fee: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def application_fee=(_application_fee); end
      # An application fee amount to add on to this charge, which must be less than or equal to the original amount.
      sig { returns(T.nilable(Integer)) }
      def application_fee_amount; end
      sig { params(_application_fee_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def application_fee_amount=(_application_fee_amount); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Provides industry-specific information about the charge.
      sig { returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails)) }
      def payment_details; end
      sig {
        params(_payment_details: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails)).returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails))
       }
      def payment_details=(_payment_details); end
      # The email address to send this charge's receipt to. This will override the previously-specified email address for this charge, if one was set. Receipts will not be sent in test mode.
      sig { returns(T.nilable(String)) }
      def receipt_email; end
      sig { params(_receipt_email: T.nilable(String)).returns(T.nilable(String)) }
      def receipt_email=(_receipt_email); end
      # For a non-card charge, text that appears on the customer's statement as the statement descriptor. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
      #
      # For a card charge, this value is ignored unless you don't specify a `statement_descriptor_suffix`, in which case this value is used as the suffix.
      sig { returns(T.nilable(String)) }
      def statement_descriptor; end
      sig { params(_statement_descriptor: T.nilable(String)).returns(T.nilable(String)) }
      def statement_descriptor=(_statement_descriptor); end
      # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement. If the account has no prefix value, the suffix is concatenated to the account's statement descriptor.
      sig { returns(T.nilable(String)) }
      def statement_descriptor_suffix; end
      sig { params(_statement_descriptor_suffix: T.nilable(String)).returns(T.nilable(String)) }
      def statement_descriptor_suffix=(_statement_descriptor_suffix); end
      # An optional dictionary including the account to automatically transfer to as part of a destination charge. [See the Connect documentation](https://stripe.com/docs/connect/destination-charges) for details.
      sig { returns(T.nilable(::Stripe::ChargeService::CaptureParams::TransferData)) }
      def transfer_data; end
      sig {
        params(_transfer_data: T.nilable(::Stripe::ChargeService::CaptureParams::TransferData)).returns(T.nilable(::Stripe::ChargeService::CaptureParams::TransferData))
       }
      def transfer_data=(_transfer_data); end
      # A string that identifies this transaction as part of a group. `transfer_group` may only be provided if it has not been set. See the [Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers#transfer-options) for details.
      sig { returns(T.nilable(String)) }
      def transfer_group; end
      sig { params(_transfer_group: T.nilable(String)).returns(T.nilable(String)) }
      def transfer_group=(_transfer_group); end
      sig {
        params(amount: T.nilable(Integer), application_fee: T.nilable(Integer), application_fee_amount: T.nilable(Integer), expand: T.nilable(T::Array[String]), payment_details: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails), receipt_email: T.nilable(String), statement_descriptor: T.nilable(String), statement_descriptor_suffix: T.nilable(String), transfer_data: T.nilable(::Stripe::ChargeService::CaptureParams::TransferData), transfer_group: T.nilable(String)).void
       }
      def initialize(
        amount: nil,
        application_fee: nil,
        application_fee_amount: nil,
        expand: nil,
        payment_details: nil,
        receipt_email: nil,
        statement_descriptor: nil,
        statement_descriptor_suffix: nil,
        transfer_data: nil,
        transfer_group: nil
      ); end
    end
    # Capture the payment of an existing, uncaptured charge that was created with the capture option set to false.
    #
    # Uncaptured payments expire a set number of days after they are created ([7 by default](https://docs.stripe.com/docs/charges/placing-a-hold)), after which they are marked as refunded and capture attempts will fail.
    #
    # Don't use this method to capture a PaymentIntent-initiated charge. Use [Capture a PaymentIntent](https://docs.stripe.com/docs/api/payment_intents/capture).
    sig {
      params(charge: String, params: T.any(::Stripe::ChargeService::CaptureParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Charge)
     }
    def capture(charge, params = {}, opts = {}); end

    # This method is no longer recommended—use the [Payment Intents API](https://docs.stripe.com/docs/api/payment_intents)
    # to initiate a new payment instead. Confirmation of the PaymentIntent creates the Charge
    # object used to request payment.
    sig {
      params(params: T.any(::Stripe::ChargeService::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Charge)
     }
    def create(params = {}, opts = {}); end

    # Returns a list of charges you've previously created. The charges are returned in sorted order, with the most recent charges appearing first.
    sig {
      params(params: T.any(::Stripe::ChargeService::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list(params = {}, opts = {}); end

    # Retrieves the details of a charge that has previously been created. Supply the unique charge ID that was returned from your previous request, and Stripe will return the corresponding charge information. The same information is returned when creating or refunding the charge.
    sig {
      params(charge: String, params: T.any(::Stripe::ChargeService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Charge)
     }
    def retrieve(charge, params = {}, opts = {}); end

    # Search for charges you've previously created using Stripe's [Search Query Language](https://docs.stripe.com/docs/search#search-query-language).
    # Don't use search in read-after-write flows where strict consistency is necessary. Under normal operating
    # conditions, data is searchable in less than a minute. Occasionally, propagation of new or updated data can be up
    # to an hour behind during outages. Search functionality is not available to merchants in India.
    sig {
      params(params: T.any(::Stripe::ChargeService::SearchParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::SearchResultObject)
     }
    def search(params = {}, opts = {}); end

    # Updates the specified charge by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
    sig {
      params(charge: String, params: T.any(::Stripe::ChargeService::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Charge)
     }
    def update(charge, params = {}, opts = {}); end
  end
end