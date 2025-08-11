# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class ChargeService < StripeService
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
      # Only return charges that were created during the given date interval.
      sig { returns(T.nilable(T.any(::Stripe::ChargeService::ListParams::Created, Integer))) }
      attr_accessor :created
      # Only return charges for the customer specified by this customer ID.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # Only return charges that were created by the PaymentIntent specified by this PaymentIntent ID.
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_intent
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      # Only return charges for this transfer group, limited to 100.
      sig { returns(T.nilable(String)) }
      attr_accessor :transfer_group
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
        attr_accessor :account
        # The amount to transfer to the destination account without creating an `Application Fee` object. Cannot be combined with the `application_fee` parameter. Must be less than or equal to the charge amount.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount
        sig { params(account: String, amount: T.nilable(Integer)).void }
        def initialize(account: nil, amount: nil); end
      end
      class RadarOptions < Stripe::RequestParams
        # A [Radar Session](https://stripe.com/docs/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
        sig { returns(T.nilable(String)) }
        attr_accessor :session
        sig { params(session: T.nilable(String)).void }
        def initialize(session: nil); end
      end
      class Shipping < Stripe::RequestParams
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
        # Shipping address.
        sig { returns(::Stripe::ChargeService::CreateParams::Shipping::Address) }
        attr_accessor :address
        # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
        sig { returns(T.nilable(String)) }
        attr_accessor :carrier
        # Recipient name.
        sig { returns(String) }
        attr_accessor :name
        # Recipient phone (including extension).
        sig { returns(T.nilable(String)) }
        attr_accessor :phone
        # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
        sig { returns(T.nilable(String)) }
        attr_accessor :tracking_number
        sig {
          params(address: ::Stripe::ChargeService::CreateParams::Shipping::Address, carrier: T.nilable(String), name: String, phone: T.nilable(String), tracking_number: T.nilable(String)).void
         }
        def initialize(address: nil, carrier: nil, name: nil, phone: nil, tracking_number: nil); end
      end
      class TransferData < Stripe::RequestParams
        # The amount transferred to the destination account, if specified. By default, the entire charge amount is transferred to the destination account.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount
        # ID of an existing, connected Stripe account.
        sig { returns(String) }
        attr_accessor :destination
        sig { params(amount: T.nilable(Integer), destination: String).void }
        def initialize(amount: nil, destination: nil); end
      end
      # Amount intended to be collected by this payment. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount
      # Attribute for param field application_fee
      sig { returns(T.nilable(Integer)) }
      attr_accessor :application_fee
      # A fee in cents (or local equivalent) that will be applied to the charge and transferred to the application owner's Stripe account. The request must be made with an OAuth key or the `Stripe-Account` header in order to take an application fee. For more information, see the application fees [documentation](https://stripe.com/docs/connect/direct-charges#collect-fees).
      sig { returns(T.nilable(Integer)) }
      attr_accessor :application_fee_amount
      # Whether to immediately capture the charge. Defaults to `true`. When `false`, the charge issues an authorization (or pre-authorization), and will need to be [captured](https://stripe.com/docs/api#capture_charge) later. Uncaptured charges expire after a set number of days (7 by default). For more information, see the [authorizing charges and settling later](https://stripe.com/docs/charges/placing-a-hold) documentation.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :capture
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(T.nilable(String)) }
      attr_accessor :currency
      # The ID of an existing customer that will be charged in this request.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer
      # An arbitrary string which you can attach to a `Charge` object. It is displayed when in the web interface alongside the charge. Note that if you use Stripe to send automatic email receipts to your customers, your receipt emails will include the `description` of the charge(s) that they are describing.
      sig { returns(T.nilable(String)) }
      attr_accessor :description
      # Attribute for param field destination
      sig { returns(T.nilable(::Stripe::ChargeService::CreateParams::Destination)) }
      attr_accessor :destination
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      attr_accessor :metadata
      # The Stripe account ID for which these funds are intended. Automatically set if you use the `destination` parameter. For details, see [Creating Separate Charges and Transfers](https://stripe.com/docs/connect/separate-charges-and-transfers#settlement-merchant).
      sig { returns(T.nilable(String)) }
      attr_accessor :on_behalf_of
      # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
      sig { returns(T.nilable(::Stripe::ChargeService::CreateParams::RadarOptions)) }
      attr_accessor :radar_options
      # The email address to which this charge's [receipt](https://stripe.com/docs/dashboard/receipts) will be sent. The receipt will not be sent until the charge is paid, and no receipts will be sent for test mode charges. If this charge is for a [Customer](https://stripe.com/docs/api/customers/object), the email address specified here will override the customer's email address. If `receipt_email` is specified for a charge in live mode, a receipt will be sent regardless of your [email settings](https://dashboard.stripe.com/account/emails).
      sig { returns(T.nilable(String)) }
      attr_accessor :receipt_email
      # Shipping information for the charge. Helps prevent fraud on charges for physical goods.
      sig { returns(T.nilable(::Stripe::ChargeService::CreateParams::Shipping)) }
      attr_accessor :shipping
      # A payment source to be charged. This can be the ID of a [card](https://stripe.com/docs/api#cards) (i.e., credit or debit card), a [bank account](https://stripe.com/docs/api#bank_accounts), a [source](https://stripe.com/docs/api#sources), a [token](https://stripe.com/docs/api#tokens), or a [connected account](https://stripe.com/docs/connect/account-debits#charging-a-connected-account). For certain sources---namely, [cards](https://stripe.com/docs/api#cards), [bank accounts](https://stripe.com/docs/api#bank_accounts), and attached [sources](https://stripe.com/docs/api#sources)---you must also pass the ID of the associated customer.
      sig { returns(T.nilable(String)) }
      attr_accessor :source
      # For a non-card charge, text that appears on the customer's statement as the statement descriptor. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
      #
      # For a card charge, this value is ignored unless you don't specify a `statement_descriptor_suffix`, in which case this value is used as the suffix.
      sig { returns(T.nilable(String)) }
      attr_accessor :statement_descriptor
      # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement. If the account has no prefix value, the suffix is concatenated to the account's statement descriptor.
      sig { returns(T.nilable(String)) }
      attr_accessor :statement_descriptor_suffix
      # An optional dictionary including the account to automatically transfer to as part of a destination charge. [See the Connect documentation](https://stripe.com/docs/connect/destination-charges) for details.
      sig { returns(T.nilable(::Stripe::ChargeService::CreateParams::TransferData)) }
      attr_accessor :transfer_data
      # A string that identifies this transaction as part of a group. For details, see [Grouping transactions](https://stripe.com/docs/connect/separate-charges-and-transfers#transfer-options).
      sig { returns(T.nilable(String)) }
      attr_accessor :transfer_group
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
      attr_accessor :expand
      sig { params(expand: T.nilable(T::Array[String])).void }
      def initialize(expand: nil); end
    end
    class UpdateParams < Stripe::RequestParams
      class FraudDetails < Stripe::RequestParams
        # Either `safe` or `fraudulent`.
        sig { returns(T.any(String, String)) }
        attr_accessor :user_report
        sig { params(user_report: T.any(String, String)).void }
        def initialize(user_report: nil); end
      end
      class Shipping < Stripe::RequestParams
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
        # Shipping address.
        sig { returns(::Stripe::ChargeService::UpdateParams::Shipping::Address) }
        attr_accessor :address
        # The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc.
        sig { returns(T.nilable(String)) }
        attr_accessor :carrier
        # Recipient name.
        sig { returns(String) }
        attr_accessor :name
        # Recipient phone (including extension).
        sig { returns(T.nilable(String)) }
        attr_accessor :phone
        # The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
        sig { returns(T.nilable(String)) }
        attr_accessor :tracking_number
        sig {
          params(address: ::Stripe::ChargeService::UpdateParams::Shipping::Address, carrier: T.nilable(String), name: String, phone: T.nilable(String), tracking_number: T.nilable(String)).void
         }
        def initialize(address: nil, carrier: nil, name: nil, phone: nil, tracking_number: nil); end
      end
      # The ID of an existing customer that will be associated with this request. This field may only be updated if there is no existing associated customer with this charge.
      sig { returns(T.nilable(String)) }
      attr_accessor :customer
      # An arbitrary string which you can attach to a charge object. It is displayed when in the web interface alongside the charge. Note that if you use Stripe to send automatic email receipts to your customers, your receipt emails will include the `description` of the charge(s) that they are describing.
      sig { returns(T.nilable(String)) }
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A set of key-value pairs you can attach to a charge giving information about its riskiness. If you believe a charge is fraudulent, include a `user_report` key with a value of `fraudulent`. If you believe a charge is safe, include a `user_report` key with a value of `safe`. Stripe will use the information you send to improve our fraud detection algorithms.
      sig { returns(T.nilable(::Stripe::ChargeService::UpdateParams::FraudDetails)) }
      attr_accessor :fraud_details
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      attr_accessor :metadata
      # This is the email address that the receipt for this charge will be sent to. If this field is updated, then a new email receipt will be sent to the updated address.
      sig { returns(T.nilable(String)) }
      attr_accessor :receipt_email
      # Shipping information for the charge. Helps prevent fraud on charges for physical goods.
      sig { returns(T.nilable(::Stripe::ChargeService::UpdateParams::Shipping)) }
      attr_accessor :shipping
      # A string that identifies this transaction as part of a group. `transfer_group` may only be provided if it has not been set. See the [Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers#transfer-options) for details.
      sig { returns(T.nilable(String)) }
      attr_accessor :transfer_group
      sig {
        params(customer: T.nilable(String), description: T.nilable(String), expand: T.nilable(T::Array[String]), fraud_details: T.nilable(::Stripe::ChargeService::UpdateParams::FraudDetails), metadata: T.nilable(T.any(String, T::Hash[String, String])), receipt_email: T.nilable(String), shipping: T.nilable(::Stripe::ChargeService::UpdateParams::Shipping), transfer_group: T.nilable(String)).void
       }
      def initialize(
        customer: nil,
        description: nil,
        expand: nil,
        fraud_details: nil,
        metadata: nil,
        receipt_email: nil,
        shipping: nil,
        transfer_group: nil
      ); end
    end
    class SearchParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # A cursor for pagination across multiple pages of results. Don't include this parameter on the first call. Use the next_page value returned in a previous response to request subsequent results.
      sig { returns(T.nilable(String)) }
      attr_accessor :page
      # The search query string. See [search query language](https://stripe.com/docs/search#search-query-language) and the list of supported [query fields for charges](https://stripe.com/docs/search#query-fields-for-charges).
      sig { returns(String) }
      attr_accessor :query
      sig {
        params(expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), page: T.nilable(String), query: String).void
       }
      def initialize(expand: nil, limit: nil, page: nil, query: nil); end
    end
    class CaptureParams < Stripe::RequestParams
      class TransferData < Stripe::RequestParams
        # The amount transferred to the destination account, if specified. By default, the entire charge amount is transferred to the destination account.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount
        sig { params(amount: T.nilable(Integer)).void }
        def initialize(amount: nil); end
      end
      # The amount to capture, which must be less than or equal to the original amount.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :amount
      # An application fee to add on to this charge.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :application_fee
      # An application fee amount to add on to this charge, which must be less than or equal to the original amount.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :application_fee_amount
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # The email address to send this charge's receipt to. This will override the previously-specified email address for this charge, if one was set. Receipts will not be sent in test mode.
      sig { returns(T.nilable(String)) }
      attr_accessor :receipt_email
      # For a non-card charge, text that appears on the customer's statement as the statement descriptor. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
      #
      # For a card charge, this value is ignored unless you don't specify a `statement_descriptor_suffix`, in which case this value is used as the suffix.
      sig { returns(T.nilable(String)) }
      attr_accessor :statement_descriptor
      # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement. If the account has no prefix value, the suffix is concatenated to the account's statement descriptor.
      sig { returns(T.nilable(String)) }
      attr_accessor :statement_descriptor_suffix
      # An optional dictionary including the account to automatically transfer to as part of a destination charge. [See the Connect documentation](https://stripe.com/docs/connect/destination-charges) for details.
      sig { returns(T.nilable(::Stripe::ChargeService::CaptureParams::TransferData)) }
      attr_accessor :transfer_data
      # A string that identifies this transaction as part of a group. `transfer_group` may only be provided if it has not been set. See the [Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers#transfer-options) for details.
      sig { returns(T.nilable(String)) }
      attr_accessor :transfer_group
      sig {
        params(amount: T.nilable(Integer), application_fee: T.nilable(Integer), application_fee_amount: T.nilable(Integer), expand: T.nilable(T::Array[String]), receipt_email: T.nilable(String), statement_descriptor: T.nilable(String), statement_descriptor_suffix: T.nilable(String), transfer_data: T.nilable(::Stripe::ChargeService::CaptureParams::TransferData), transfer_group: T.nilable(String)).void
       }
      def initialize(
        amount: nil,
        application_fee: nil,
        application_fee_amount: nil,
        expand: nil,
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