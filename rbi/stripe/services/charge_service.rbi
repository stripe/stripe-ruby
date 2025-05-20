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
      sig { returns(T.nilable(T.nilable(T.any(String, T::Hash[String, String])))) }
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
        params(amount: T.nilable(Integer), application_fee: T.nilable(Integer), application_fee_amount: T.nilable(Integer), capture: T.nilable(T::Boolean), currency: T.nilable(String), customer: T.nilable(String), description: T.nilable(String), destination: T.nilable(::Stripe::ChargeService::CreateParams::Destination), expand: T.nilable(T::Array[String]), metadata: T.nilable(T.nilable(T.any(String, T::Hash[String, String]))), on_behalf_of: T.nilable(String), radar_options: T.nilable(::Stripe::ChargeService::CreateParams::RadarOptions), receipt_email: T.nilable(String), shipping: T.nilable(::Stripe::ChargeService::CreateParams::Shipping), source: T.nilable(String), statement_descriptor: T.nilable(String), statement_descriptor_suffix: T.nilable(String), transfer_data: T.nilable(::Stripe::ChargeService::CreateParams::TransferData), transfer_group: T.nilable(String)).void
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
        sig { returns(T.nilable(T.any(String, String))) }
        attr_accessor :user_report
        sig { params(user_report: T.nilable(T.any(String, String))).void }
        def initialize(user_report: nil); end
      end
      class PaymentDetails < Stripe::RequestParams
        class CarRental < Stripe::RequestParams
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              attr_accessor :phone
              sig {
                params(email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
               }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(T.nilable(String)) }
            attr_accessor :mode
            # Details of the recipient.
            sig {
              returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::Delivery::Recipient))
             }
            attr_accessor :recipient
            sig {
              params(mode: T.nilable(String), recipient: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::Delivery::Recipient)).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          class Distance < Stripe::RequestParams
            # Distance traveled.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :amount
            # Unit of measurement for the distance traveled. One of `miles` or `kilometers`.
            sig { returns(T.nilable(String)) }
            attr_accessor :unit
            sig { params(amount: T.nilable(Integer), unit: T.nilable(String)).void }
            def initialize(amount: nil, unit: nil); end
          end
          class Driver < Stripe::RequestParams
            # Driver's identification number.
            sig { returns(T.nilable(String)) }
            attr_accessor :driver_identification_number
            # Driver's tax number.
            sig { returns(T.nilable(String)) }
            attr_accessor :driver_tax_number
            # Full name of the person or entity on the car reservation.
            sig { returns(String) }
            attr_accessor :name
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
          class ReturnAddress < Stripe::RequestParams
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
          # Affiliate details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::Affiliate))
           }
          attr_accessor :affiliate
          # The booking number associated with the car rental.
          sig { returns(String) }
          attr_accessor :booking_number
          # Class code of the car.
          sig { returns(T.nilable(String)) }
          attr_accessor :car_class_code
          # Make of the car.
          sig { returns(T.nilable(String)) }
          attr_accessor :car_make
          # Model of the car.
          sig { returns(T.nilable(String)) }
          attr_accessor :car_model
          # The name of the rental car company.
          sig { returns(T.nilable(String)) }
          attr_accessor :company
          # The customer service phone number of the car rental company.
          sig { returns(T.nilable(String)) }
          attr_accessor :customer_service_phone_number
          # Number of days the car is being rented.
          sig { returns(Integer) }
          attr_accessor :days_rented
          # Delivery details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::Delivery))
           }
          attr_accessor :delivery
          # The details of the distance traveled during the rental period.
          sig {
            returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::Distance))
           }
          attr_accessor :distance
          # The details of the passengers in the travel reservation
          sig {
            returns(T.nilable(T::Array[::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::Driver]))
           }
          attr_accessor :drivers
          # List of additional charges being billed.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :extra_charges
          # Indicates if the customer did not keep nor cancel their booking.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :no_show
          # Car pick-up address.
          sig {
            returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::PickupAddress))
           }
          attr_accessor :pickup_address
          # Car pick-up time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :pickup_at
          # Name of the pickup location.
          sig { returns(T.nilable(String)) }
          attr_accessor :pickup_location_name
          # Rental rate.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :rate_amount
          # The frequency at which the rate amount is applied. One of `day`, `week` or `month`
          sig { returns(T.nilable(String)) }
          attr_accessor :rate_interval
          # The name of the person or entity renting the car.
          sig { returns(T.nilable(String)) }
          attr_accessor :renter_name
          # Car return address.
          sig {
            returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental::ReturnAddress))
           }
          attr_accessor :return_address
          # Car return time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :return_at
          # Name of the return location.
          sig { returns(T.nilable(String)) }
          attr_accessor :return_location_name
          # Indicates whether the goods or services are tax-exempt or tax is not collected.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :tax_exempt
          # The vehicle identification number.
          sig { returns(T.nilable(String)) }
          attr_accessor :vehicle_identification_number
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
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              attr_accessor :phone
              sig {
                params(email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
               }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(T.nilable(String)) }
            attr_accessor :mode
            # Details of the recipient.
            sig {
              returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::EventDetails::Delivery::Recipient))
             }
            attr_accessor :recipient
            sig {
              params(mode: T.nilable(String), recipient: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::EventDetails::Delivery::Recipient)).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          # Indicates if the tickets are digitally checked when entering the venue.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :access_controlled_venue
          # The event location's address.
          sig {
            returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::EventDetails::Address))
           }
          attr_accessor :address
          # Affiliate details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::EventDetails::Affiliate))
           }
          attr_accessor :affiliate
          # The name of the company
          sig { returns(T.nilable(String)) }
          attr_accessor :company
          # Delivery details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::EventDetails::Delivery))
           }
          attr_accessor :delivery
          # Event end time. Measured in seconds since the Unix epoch.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :ends_at
          # Type of the event entertainment (concert, sports event etc)
          sig { returns(T.nilable(String)) }
          attr_accessor :genre
          # The name of the event.
          sig { returns(String) }
          attr_accessor :name
          # Event start time. Measured in seconds since the Unix epoch.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :starts_at
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
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              attr_accessor :phone
              sig {
                params(email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
               }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(T.nilable(String)) }
            attr_accessor :mode
            # Details of the recipient.
            sig {
              returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Flight::Delivery::Recipient))
             }
            attr_accessor :recipient
            sig {
              params(mode: T.nilable(String), recipient: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Flight::Delivery::Recipient)).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          class Passenger < Stripe::RequestParams
            # Full name of the person or entity on the flight reservation.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Segment < Stripe::RequestParams
            # The flight segment amount.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :amount
            # The International Air Transport Association (IATA) airport code for the arrival airport.
            sig { returns(T.nilable(String)) }
            attr_accessor :arrival_airport
            # The arrival time for the flight segment. Measured in seconds since the Unix epoch.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :arrives_at
            # The International Air Transport Association (IATA) carrier code of the carrier operating the flight segment.
            sig { returns(T.nilable(String)) }
            attr_accessor :carrier
            # The departure time for the flight segment. Measured in seconds since the Unix epoch.
            sig { returns(Integer) }
            attr_accessor :departs_at
            # The International Air Transport Association (IATA) airport code for the departure airport.
            sig { returns(T.nilable(String)) }
            attr_accessor :departure_airport
            # The flight number associated with the segment
            sig { returns(T.nilable(String)) }
            attr_accessor :flight_number
            # The fare class for the segment.
            sig { returns(T.nilable(String)) }
            attr_accessor :service_class
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
          attr_accessor :affiliate
          # The agency number (i.e. International Air Transport Association (IATA) agency number) of the travel agency that made the booking.
          sig { returns(T.nilable(String)) }
          attr_accessor :agency_number
          # The International Air Transport Association (IATA) carrier code of the carrier that issued the ticket.
          sig { returns(T.nilable(String)) }
          attr_accessor :carrier
          # Delivery details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Flight::Delivery))
           }
          attr_accessor :delivery
          # The name of the person or entity on the reservation.
          sig { returns(T.nilable(String)) }
          attr_accessor :passenger_name
          # The details of the passengers in the travel reservation.
          sig {
            returns(T.nilable(T::Array[::Stripe::ChargeService::UpdateParams::PaymentDetails::Flight::Passenger]))
           }
          attr_accessor :passengers
          # The individual flight segments associated with the trip.
          sig {
            returns(T::Array[::Stripe::ChargeService::UpdateParams::PaymentDetails::Flight::Segment])
           }
          attr_accessor :segments
          # The ticket number associated with the travel reservation.
          sig { returns(T.nilable(String)) }
          attr_accessor :ticket_number
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
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              attr_accessor :phone
              sig {
                params(email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
               }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(T.nilable(String)) }
            attr_accessor :mode
            # Details of the recipient.
            sig {
              returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Lodging::Delivery::Recipient))
             }
            attr_accessor :recipient
            sig {
              params(mode: T.nilable(String), recipient: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Lodging::Delivery::Recipient)).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          class Passenger < Stripe::RequestParams
            # Full name of the person or entity on the lodging reservation.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          # The lodging location's address.
          sig {
            returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Lodging::Address))
           }
          attr_accessor :address
          # The number of adults on the booking
          sig { returns(T.nilable(Integer)) }
          attr_accessor :adults
          # Affiliate details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Lodging::Affiliate))
           }
          attr_accessor :affiliate
          # The booking number associated with the lodging reservation.
          sig { returns(T.nilable(String)) }
          attr_accessor :booking_number
          # The lodging category
          sig { returns(T.nilable(String)) }
          attr_accessor :category
          # Lodging check-in time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :checkin_at
          # Lodging check-out time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :checkout_at
          # The customer service phone number of the lodging company.
          sig { returns(T.nilable(String)) }
          attr_accessor :customer_service_phone_number
          # The daily lodging room rate.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :daily_room_rate_amount
          # Delivery details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Lodging::Delivery))
           }
          attr_accessor :delivery
          # List of additional charges being billed.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :extra_charges
          # Indicates whether the lodging location is compliant with the Fire Safety Act.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :fire_safety_act_compliance
          # The name of the lodging location.
          sig { returns(T.nilable(String)) }
          attr_accessor :name
          # Indicates if the customer did not keep their booking while failing to cancel the reservation.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :no_show
          # The number of rooms on the booking
          sig { returns(T.nilable(Integer)) }
          attr_accessor :number_of_rooms
          # The details of the passengers in the travel reservation
          sig {
            returns(T.nilable(T::Array[::Stripe::ChargeService::UpdateParams::PaymentDetails::Lodging::Passenger]))
           }
          attr_accessor :passengers
          # The phone number of the lodging location.
          sig { returns(T.nilable(String)) }
          attr_accessor :property_phone_number
          # The room class for this purchase.
          sig { returns(T.nilable(String)) }
          attr_accessor :room_class
          # The number of room nights
          sig { returns(T.nilable(Integer)) }
          attr_accessor :room_nights
          # The total tax amount associating with the room reservation.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :total_room_tax_amount
          # The total tax amount
          sig { returns(T.nilable(Integer)) }
          attr_accessor :total_tax_amount
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
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class BillingInterval < Stripe::RequestParams
            # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
            sig { returns(Integer) }
            attr_accessor :count
            # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            attr_accessor :interval
            sig { params(count: Integer, interval: String).void }
            def initialize(count: nil, interval: nil); end
          end
          # Affiliate details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Subscription::Affiliate))
           }
          attr_accessor :affiliate
          # Info whether the subscription will be auto renewed upon expiry.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :auto_renewal
          # Subscription billing details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Subscription::BillingInterval))
           }
          attr_accessor :billing_interval
          # Subscription end time. Measured in seconds since the Unix epoch.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :ends_at
          # Name of the product on subscription. e.g. Apple Music Subscription
          sig { returns(String) }
          attr_accessor :name
          # Subscription start time. Measured in seconds since the Unix epoch.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :starts_at
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
        attr_accessor :car_rental
        # Some customers might be required by their company or organization to provide this information. If so, provide this value. Otherwise you can ignore this field.
        sig { returns(T.nilable(T.nilable(String))) }
        attr_accessor :customer_reference
        # Event details for this PaymentIntent
        sig {
          returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::EventDetails))
         }
        attr_accessor :event_details
        # Flight reservation details for this PaymentIntent
        sig { returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Flight)) }
        attr_accessor :flight
        # Lodging reservation details for this PaymentIntent
        sig { returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Lodging)) }
        attr_accessor :lodging
        # A unique value assigned by the business to identify the transaction.
        sig { returns(T.nilable(T.nilable(String))) }
        attr_accessor :order_reference
        # Subscription details for this PaymentIntent
        sig {
          returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Subscription))
         }
        attr_accessor :subscription
        sig {
          params(car_rental: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::CarRental), customer_reference: T.nilable(T.nilable(String)), event_details: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::EventDetails), flight: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Flight), lodging: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Lodging), order_reference: T.nilable(T.nilable(String)), subscription: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails::Subscription)).void
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
      sig { returns(T.nilable(T.nilable(T.any(String, T::Hash[String, String])))) }
      attr_accessor :metadata
      # Provides industry-specific information about the charge.
      sig { returns(T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails)) }
      attr_accessor :payment_details
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
        params(customer: T.nilable(String), description: T.nilable(String), expand: T.nilable(T::Array[String]), fraud_details: T.nilable(::Stripe::ChargeService::UpdateParams::FraudDetails), metadata: T.nilable(T.nilable(T.any(String, T::Hash[String, String]))), payment_details: T.nilable(::Stripe::ChargeService::UpdateParams::PaymentDetails), receipt_email: T.nilable(String), shipping: T.nilable(::Stripe::ChargeService::UpdateParams::Shipping), transfer_group: T.nilable(String)).void
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
      class PaymentDetails < Stripe::RequestParams
        class CarRental < Stripe::RequestParams
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              attr_accessor :phone
              sig {
                params(email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
               }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(T.nilable(String)) }
            attr_accessor :mode
            # Details of the recipient.
            sig {
              returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::Delivery::Recipient))
             }
            attr_accessor :recipient
            sig {
              params(mode: T.nilable(String), recipient: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::Delivery::Recipient)).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          class Distance < Stripe::RequestParams
            # Distance traveled.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :amount
            # Unit of measurement for the distance traveled. One of `miles` or `kilometers`.
            sig { returns(T.nilable(String)) }
            attr_accessor :unit
            sig { params(amount: T.nilable(Integer), unit: T.nilable(String)).void }
            def initialize(amount: nil, unit: nil); end
          end
          class Driver < Stripe::RequestParams
            # Driver's identification number.
            sig { returns(T.nilable(String)) }
            attr_accessor :driver_identification_number
            # Driver's tax number.
            sig { returns(T.nilable(String)) }
            attr_accessor :driver_tax_number
            # Full name of the person or entity on the car reservation.
            sig { returns(String) }
            attr_accessor :name
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
          class ReturnAddress < Stripe::RequestParams
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
          # Affiliate details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::Affiliate))
           }
          attr_accessor :affiliate
          # The booking number associated with the car rental.
          sig { returns(String) }
          attr_accessor :booking_number
          # Class code of the car.
          sig { returns(T.nilable(String)) }
          attr_accessor :car_class_code
          # Make of the car.
          sig { returns(T.nilable(String)) }
          attr_accessor :car_make
          # Model of the car.
          sig { returns(T.nilable(String)) }
          attr_accessor :car_model
          # The name of the rental car company.
          sig { returns(T.nilable(String)) }
          attr_accessor :company
          # The customer service phone number of the car rental company.
          sig { returns(T.nilable(String)) }
          attr_accessor :customer_service_phone_number
          # Number of days the car is being rented.
          sig { returns(Integer) }
          attr_accessor :days_rented
          # Delivery details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::Delivery))
           }
          attr_accessor :delivery
          # The details of the distance traveled during the rental period.
          sig {
            returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::Distance))
           }
          attr_accessor :distance
          # The details of the passengers in the travel reservation
          sig {
            returns(T.nilable(T::Array[::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::Driver]))
           }
          attr_accessor :drivers
          # List of additional charges being billed.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :extra_charges
          # Indicates if the customer did not keep nor cancel their booking.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :no_show
          # Car pick-up address.
          sig {
            returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::PickupAddress))
           }
          attr_accessor :pickup_address
          # Car pick-up time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :pickup_at
          # Name of the pickup location.
          sig { returns(T.nilable(String)) }
          attr_accessor :pickup_location_name
          # Rental rate.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :rate_amount
          # The frequency at which the rate amount is applied. One of `day`, `week` or `month`
          sig { returns(T.nilable(String)) }
          attr_accessor :rate_interval
          # The name of the person or entity renting the car.
          sig { returns(T.nilable(String)) }
          attr_accessor :renter_name
          # Car return address.
          sig {
            returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental::ReturnAddress))
           }
          attr_accessor :return_address
          # Car return time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :return_at
          # Name of the return location.
          sig { returns(T.nilable(String)) }
          attr_accessor :return_location_name
          # Indicates whether the goods or services are tax-exempt or tax is not collected.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :tax_exempt
          # The vehicle identification number.
          sig { returns(T.nilable(String)) }
          attr_accessor :vehicle_identification_number
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
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              attr_accessor :phone
              sig {
                params(email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
               }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(T.nilable(String)) }
            attr_accessor :mode
            # Details of the recipient.
            sig {
              returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::EventDetails::Delivery::Recipient))
             }
            attr_accessor :recipient
            sig {
              params(mode: T.nilable(String), recipient: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::EventDetails::Delivery::Recipient)).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          # Indicates if the tickets are digitally checked when entering the venue.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :access_controlled_venue
          # The event location's address.
          sig {
            returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::EventDetails::Address))
           }
          attr_accessor :address
          # Affiliate details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::EventDetails::Affiliate))
           }
          attr_accessor :affiliate
          # The name of the company
          sig { returns(T.nilable(String)) }
          attr_accessor :company
          # Delivery details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::EventDetails::Delivery))
           }
          attr_accessor :delivery
          # Event end time. Measured in seconds since the Unix epoch.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :ends_at
          # Type of the event entertainment (concert, sports event etc)
          sig { returns(T.nilable(String)) }
          attr_accessor :genre
          # The name of the event.
          sig { returns(String) }
          attr_accessor :name
          # Event start time. Measured in seconds since the Unix epoch.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :starts_at
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
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              attr_accessor :phone
              sig {
                params(email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
               }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(T.nilable(String)) }
            attr_accessor :mode
            # Details of the recipient.
            sig {
              returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Flight::Delivery::Recipient))
             }
            attr_accessor :recipient
            sig {
              params(mode: T.nilable(String), recipient: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Flight::Delivery::Recipient)).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          class Passenger < Stripe::RequestParams
            # Full name of the person or entity on the flight reservation.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Segment < Stripe::RequestParams
            # The flight segment amount.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :amount
            # The International Air Transport Association (IATA) airport code for the arrival airport.
            sig { returns(T.nilable(String)) }
            attr_accessor :arrival_airport
            # The arrival time for the flight segment. Measured in seconds since the Unix epoch.
            sig { returns(T.nilable(Integer)) }
            attr_accessor :arrives_at
            # The International Air Transport Association (IATA) carrier code of the carrier operating the flight segment.
            sig { returns(T.nilable(String)) }
            attr_accessor :carrier
            # The departure time for the flight segment. Measured in seconds since the Unix epoch.
            sig { returns(Integer) }
            attr_accessor :departs_at
            # The International Air Transport Association (IATA) airport code for the departure airport.
            sig { returns(T.nilable(String)) }
            attr_accessor :departure_airport
            # The flight number associated with the segment
            sig { returns(T.nilable(String)) }
            attr_accessor :flight_number
            # The fare class for the segment.
            sig { returns(T.nilable(String)) }
            attr_accessor :service_class
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
          attr_accessor :affiliate
          # The agency number (i.e. International Air Transport Association (IATA) agency number) of the travel agency that made the booking.
          sig { returns(T.nilable(String)) }
          attr_accessor :agency_number
          # The International Air Transport Association (IATA) carrier code of the carrier that issued the ticket.
          sig { returns(T.nilable(String)) }
          attr_accessor :carrier
          # Delivery details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Flight::Delivery))
           }
          attr_accessor :delivery
          # The name of the person or entity on the reservation.
          sig { returns(T.nilable(String)) }
          attr_accessor :passenger_name
          # The details of the passengers in the travel reservation.
          sig {
            returns(T.nilable(T::Array[::Stripe::ChargeService::CaptureParams::PaymentDetails::Flight::Passenger]))
           }
          attr_accessor :passengers
          # The individual flight segments associated with the trip.
          sig {
            returns(T::Array[::Stripe::ChargeService::CaptureParams::PaymentDetails::Flight::Segment])
           }
          attr_accessor :segments
          # The ticket number associated with the travel reservation.
          sig { returns(T.nilable(String)) }
          attr_accessor :ticket_number
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
          class Affiliate < Stripe::RequestParams
            # The name of the affiliate that originated the purchase.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class Delivery < Stripe::RequestParams
            class Recipient < Stripe::RequestParams
              # The email of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              attr_accessor :email
              # The name of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              attr_accessor :name
              # The phone number of the recipient the ticket is delivered to.
              sig { returns(T.nilable(String)) }
              attr_accessor :phone
              sig {
                params(email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
               }
              def initialize(email: nil, name: nil, phone: nil); end
            end
            # The delivery method for the payment
            sig { returns(T.nilable(String)) }
            attr_accessor :mode
            # Details of the recipient.
            sig {
              returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Lodging::Delivery::Recipient))
             }
            attr_accessor :recipient
            sig {
              params(mode: T.nilable(String), recipient: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Lodging::Delivery::Recipient)).void
             }
            def initialize(mode: nil, recipient: nil); end
          end
          class Passenger < Stripe::RequestParams
            # Full name of the person or entity on the lodging reservation.
            sig { returns(String) }
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          # The lodging location's address.
          sig {
            returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Lodging::Address))
           }
          attr_accessor :address
          # The number of adults on the booking
          sig { returns(T.nilable(Integer)) }
          attr_accessor :adults
          # Affiliate details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Lodging::Affiliate))
           }
          attr_accessor :affiliate
          # The booking number associated with the lodging reservation.
          sig { returns(T.nilable(String)) }
          attr_accessor :booking_number
          # The lodging category
          sig { returns(T.nilable(String)) }
          attr_accessor :category
          # Lodging check-in time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :checkin_at
          # Lodging check-out time. Measured in seconds since the Unix epoch.
          sig { returns(Integer) }
          attr_accessor :checkout_at
          # The customer service phone number of the lodging company.
          sig { returns(T.nilable(String)) }
          attr_accessor :customer_service_phone_number
          # The daily lodging room rate.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :daily_room_rate_amount
          # Delivery details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Lodging::Delivery))
           }
          attr_accessor :delivery
          # List of additional charges being billed.
          sig { returns(T.nilable(T::Array[String])) }
          attr_accessor :extra_charges
          # Indicates whether the lodging location is compliant with the Fire Safety Act.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :fire_safety_act_compliance
          # The name of the lodging location.
          sig { returns(T.nilable(String)) }
          attr_accessor :name
          # Indicates if the customer did not keep their booking while failing to cancel the reservation.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :no_show
          # The number of rooms on the booking
          sig { returns(T.nilable(Integer)) }
          attr_accessor :number_of_rooms
          # The details of the passengers in the travel reservation
          sig {
            returns(T.nilable(T::Array[::Stripe::ChargeService::CaptureParams::PaymentDetails::Lodging::Passenger]))
           }
          attr_accessor :passengers
          # The phone number of the lodging location.
          sig { returns(T.nilable(String)) }
          attr_accessor :property_phone_number
          # The room class for this purchase.
          sig { returns(T.nilable(String)) }
          attr_accessor :room_class
          # The number of room nights
          sig { returns(T.nilable(Integer)) }
          attr_accessor :room_nights
          # The total tax amount associating with the room reservation.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :total_room_tax_amount
          # The total tax amount
          sig { returns(T.nilable(Integer)) }
          attr_accessor :total_tax_amount
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
            attr_accessor :name
            sig { params(name: String).void }
            def initialize(name: nil); end
          end
          class BillingInterval < Stripe::RequestParams
            # The number of intervals, as an whole number greater than 0. Stripe multiplies this by the interval type to get the overall duration.
            sig { returns(Integer) }
            attr_accessor :count
            # Specifies a type of interval unit. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            attr_accessor :interval
            sig { params(count: Integer, interval: String).void }
            def initialize(count: nil, interval: nil); end
          end
          # Affiliate details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Subscription::Affiliate))
           }
          attr_accessor :affiliate
          # Info whether the subscription will be auto renewed upon expiry.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :auto_renewal
          # Subscription billing details for this purchase.
          sig {
            returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Subscription::BillingInterval))
           }
          attr_accessor :billing_interval
          # Subscription end time. Measured in seconds since the Unix epoch.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :ends_at
          # Name of the product on subscription. e.g. Apple Music Subscription
          sig { returns(String) }
          attr_accessor :name
          # Subscription start time. Measured in seconds since the Unix epoch.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :starts_at
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
        attr_accessor :car_rental
        # Some customers might be required by their company or organization to provide this information. If so, provide this value. Otherwise you can ignore this field.
        sig { returns(T.nilable(T.nilable(String))) }
        attr_accessor :customer_reference
        # Event details for this PaymentIntent
        sig {
          returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::EventDetails))
         }
        attr_accessor :event_details
        # Flight reservation details for this PaymentIntent
        sig { returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Flight)) }
        attr_accessor :flight
        # Lodging reservation details for this PaymentIntent
        sig { returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Lodging)) }
        attr_accessor :lodging
        # A unique value assigned by the business to identify the transaction.
        sig { returns(T.nilable(T.nilable(String))) }
        attr_accessor :order_reference
        # Subscription details for this PaymentIntent
        sig {
          returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Subscription))
         }
        attr_accessor :subscription
        sig {
          params(car_rental: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::CarRental), customer_reference: T.nilable(T.nilable(String)), event_details: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::EventDetails), flight: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Flight), lodging: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Lodging), order_reference: T.nilable(T.nilable(String)), subscription: T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails::Subscription)).void
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
      # Provides industry-specific information about the charge.
      sig { returns(T.nilable(::Stripe::ChargeService::CaptureParams::PaymentDetails)) }
      attr_accessor :payment_details
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