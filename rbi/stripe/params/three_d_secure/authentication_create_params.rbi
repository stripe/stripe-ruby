# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module ThreeDSecure
    class AuthenticationCreateParams < ::Stripe::RequestParams
      class AcquirerDetails < ::Stripe::RequestParams
        # The Acquirer BIN (specific to the directory_server).
        sig { returns(String) }
        def acquirer_bin; end
        sig { params(_acquirer_bin: String).returns(String) }
        def acquirer_bin=(_acquirer_bin); end
        # The two-letter country code of the acquirer ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(String) }
        def acquirer_country; end
        sig { params(_acquirer_country: String).returns(String) }
        def acquirer_country=(_acquirer_country); end
        # The Merchant ID (or Card Acceptor ID) that your acquirer assigned you (specific to the directory_server).
        sig { returns(String) }
        def acquirer_merchant_id; end
        sig { params(_acquirer_merchant_id: String).returns(String) }
        def acquirer_merchant_id=(_acquirer_merchant_id); end
        # The [merchant category code](https://en.wikipedia.org/wiki/Merchant_category_code) as defined by each payment system or directory server.
        sig { returns(T.nilable(String)) }
        def mcc; end
        sig { params(_mcc: T.nilable(String)).returns(T.nilable(String)) }
        def mcc=(_mcc); end
        # The merchant name assigned by the acquirer or payment system. Same name used in the authorization message as defined in [ISO 8583](https://en.wikipedia.org/wiki/ISO_8583).
        sig { returns(T.nilable(String)) }
        def merchant_name; end
        sig { params(_merchant_name: T.nilable(String)).returns(T.nilable(String)) }
        def merchant_name=(_merchant_name); end
        # Requestor ID if you’re enrolled in the card network’s 3DS program. Otherwise, you can omit this field because Stripe assigns a Requestor ID with the card networks.
        sig { returns(T.nilable(String)) }
        def requestor_id; end
        sig { params(_requestor_id: T.nilable(String)).returns(T.nilable(String)) }
        def requestor_id=(_requestor_id); end
        sig {
          params(acquirer_bin: String, acquirer_country: String, acquirer_merchant_id: String, mcc: T.nilable(String), merchant_name: T.nilable(String), requestor_id: T.nilable(String)).void
         }
        def initialize(
          acquirer_bin: nil,
          acquirer_country: nil,
          acquirer_merchant_id: nil,
          mcc: nil,
          merchant_name: nil,
          requestor_id: nil
        ); end
      end
      class Channel < ::Stripe::RequestParams
        class Browser < ::Stripe::RequestParams
          # The HTTP accept headers from the cardholder's browser. Collected server-side.
          sig { returns(String) }
          def accept_header; end
          sig { params(_accept_header: String).returns(String) }
          def accept_header=(_accept_header); end
          # The color depth of the cardholder’s screen.
          #
          # Returned from the `screen.colorDepth` property.
          sig { returns(T.nilable(Integer)) }
          def color_depth; end
          sig { params(_color_depth: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def color_depth=(_color_depth); end
          # Unique and immutable identifier linked to a device that is consistent across 3DS transactions for the specific user device. For example: hardware device ID or a platform-calculated device fingerprint.
          sig { returns(T.nilable(String)) }
          def device_id; end
          sig { params(_device_id: T.nilable(String)).returns(T.nilable(String)) }
          def device_id=(_device_id); end
          # The IP address of the browser. Included in the HTTP request to your server before you create the 3DS Authentication.
          #
          # Collected server-side.
          sig { returns(String) }
          def ip_address; end
          sig { params(_ip_address: String).returns(String) }
          def ip_address=(_ip_address); end
          # The cardholder browser’s ability to execute Java. Returned from the navigator.javaEnabled property.
          sig { returns(T.nilable(T::Boolean)) }
          def java_enabled; end
          sig { params(_java_enabled: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def java_enabled=(_java_enabled); end
          # The cardholder browser’s ability to execute JavaScript.
          sig { returns(T::Boolean) }
          def javascript_enabled; end
          sig { params(_javascript_enabled: T::Boolean).returns(T::Boolean) }
          def javascript_enabled=(_javascript_enabled); end
          # An IETF BCP 47 language tag representing the browser language. Typically returned from the `navigator.language` property, but might also be returned from `navigator.languages` or `navigator.browserLanguage`.
          #
          #  In some cases, this value might be an array. To cast it to a string or null value, you can use the `getBrowserLanguage()` [example function](/payments/3d-secure/standalone-3d-secure#pass-client-side-collected-channel-information).
          sig { returns(String) }
          def language; end
          sig { params(_language: String).returns(String) }
          def language=(_language); end
          # The total height of the cardholder’s screen in pixels.
          #
          # Returned from the `screen.height` property.
          sig { returns(T.nilable(Integer)) }
          def screen_height; end
          sig { params(_screen_height: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def screen_height=(_screen_height); end
          # The total width of the cardholder’s screen in pixels.
          #
          # Returned from the `screen.width` property.
          sig { returns(T.nilable(Integer)) }
          def screen_width; end
          sig { params(_screen_width: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def screen_width=(_screen_width); end
          # The time difference between UTC time and the local time of the cardholder’s browser, in minutes.
          #
          # Returned by `new Date().getTimezoneOffset()`
          sig { returns(T.nilable(Integer)) }
          def timezone_offset; end
          sig { params(_timezone_offset: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def timezone_offset=(_timezone_offset); end
          # The browser user agent. You can retrieve this value on the client side using the `navigator.userAgent` property, or in the HTTP request to your server before you create the 3DS Authentication.
          sig { returns(String) }
          def user_agent; end
          sig { params(_user_agent: String).returns(String) }
          def user_agent=(_user_agent); end
          sig {
            params(accept_header: String, color_depth: T.nilable(Integer), device_id: T.nilable(String), ip_address: String, java_enabled: T.nilable(T::Boolean), javascript_enabled: T::Boolean, language: String, screen_height: T.nilable(Integer), screen_width: T.nilable(Integer), timezone_offset: T.nilable(Integer), user_agent: String).void
           }
          def initialize(
            accept_header: nil,
            color_depth: nil,
            device_id: nil,
            ip_address: nil,
            java_enabled: nil,
            javascript_enabled: nil,
            language: nil,
            screen_height: nil,
            screen_width: nil,
            timezone_offset: nil,
            user_agent: nil
          ); end
        end
        class ThreeRI < ::Stripe::RequestParams
          # ID of a prior `Authentication`. For example, the first recurring transaction that was authenticated by the cardholder.
          sig { returns(String) }
          def previous_authentication; end
          sig { params(_previous_authentication: String).returns(String) }
          def previous_authentication=(_previous_authentication); end
          # It provides additional information to the ACS to determine the best approach for handling a 3RI request.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig { params(previous_authentication: String, type: String).void }
          def initialize(previous_authentication: nil, type: nil); end
        end
        # Contains additional details about the browser details you collected.
        sig {
          returns(T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::Channel::Browser))
         }
        def browser; end
        sig {
          params(_browser: T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::Channel::Browser)).returns(T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::Channel::Browser))
         }
        def browser=(_browser); end
        # Contains additional details about the 3DS Requestor Initiated (3RI) channel.
        sig {
          returns(T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::Channel::ThreeRI))
         }
        def three_r_i; end
        sig {
          params(_three_r_i: T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::Channel::ThreeRI)).returns(T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::Channel::ThreeRI))
         }
        def three_r_i=(_three_r_i); end
        # Type of channel you would prefer to use for this 3DS Authentication.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(browser: T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::Channel::Browser), three_r_i: T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::Channel::ThreeRI), type: String).void
         }
        def initialize(browser: nil, three_r_i: nil, type: nil); end
      end
      class FlowPreference < ::Stripe::RequestParams
        class Challenge < ::Stripe::RequestParams
          # Type of challenge flow you requested for this 3DS Authentication.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig { params(type: String).void }
          def initialize(type: nil); end
        end
        class DataShare < ::Stripe::RequestParams
          # Type of data share only flow you requested for this 3DS Authentication.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig { params(type: String).void }
          def initialize(type: nil); end
        end
        class Frictionless < ::Stripe::RequestParams
          # Type of frictionless flow you requested for this 3DS Authentication.
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
          sig { params(type: String).void }
          def initialize(type: nil); end
        end
        # Contains additional details about your challenge flow preference for this 3DS Authentication.
        sig {
          returns(T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::FlowPreference::Challenge))
         }
        def challenge; end
        sig {
          params(_challenge: T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::FlowPreference::Challenge)).returns(T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::FlowPreference::Challenge))
         }
        def challenge=(_challenge); end
        # Contains additional details about your data share only flow preference for this 3DS Authentication.
        sig {
          returns(T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::FlowPreference::DataShare))
         }
        def data_share; end
        sig {
          params(_data_share: T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::FlowPreference::DataShare)).returns(T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::FlowPreference::DataShare))
         }
        def data_share=(_data_share); end
        # Contains additional details about your frictionless flow preference for this 3DS Authentication.
        sig {
          returns(T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::FlowPreference::Frictionless))
         }
        def frictionless; end
        sig {
          params(_frictionless: T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::FlowPreference::Frictionless)).returns(T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::FlowPreference::Frictionless))
         }
        def frictionless=(_frictionless); end
        # Type of flow you requested for this 3DS Authentication.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(challenge: T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::FlowPreference::Challenge), data_share: T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::FlowPreference::DataShare), frictionless: T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::FlowPreference::Frictionless), type: String).void
         }
        def initialize(challenge: nil, data_share: nil, frictionless: nil, type: nil); end
      end
      class FutureUsage < ::Stripe::RequestParams
        class Installment < ::Stripe::RequestParams
          class Expiry < ::Stripe::RequestParams
            # The date before which the last authorization related to this authentication will occur.
            sig { returns(T.nilable(String)) }
            def date; end
            sig { params(_date: T.nilable(String)).returns(T.nilable(String)) }
            def date=(_date); end
            # The type of expiry for the future use of this authentication.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(date: T.nilable(String), type: String).void }
            def initialize(date: nil, type: nil); end
          end
          # A non-negative integer representing the future authorizations' amount in the [smallest currency unit](/currencies#zero-decimal).
          sig { returns(Integer) }
          def amount; end
          sig { params(_amount: Integer).returns(Integer) }
          def amount=(_amount); end
          # Information about the expiry of the future usage of this authentication.
          sig {
            returns(::Stripe::ThreeDSecure::AuthenticationCreateParams::FutureUsage::Installment::Expiry)
           }
          def expiry; end
          sig {
            params(_expiry: ::Stripe::ThreeDSecure::AuthenticationCreateParams::FutureUsage::Installment::Expiry).returns(::Stripe::ThreeDSecure::AuthenticationCreateParams::FutureUsage::Installment::Expiry)
           }
          def expiry=(_expiry); end
          # The unit of time for `interval_count`.
          sig { returns(T.nilable(String)) }
          def interval; end
          sig { params(_interval: T.nilable(String)).returns(T.nilable(String)) }
          def interval=(_interval); end
          # The minimum number of time intervals between authorizations. Must be greater than 0, and defaults to 1.
          sig { returns(T.nilable(Integer)) }
          def interval_count; end
          sig { params(_interval_count: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def interval_count=(_interval_count); end
          # The maximum number of installments. Must be greater than 1.
          sig { returns(Integer) }
          def number; end
          sig { params(_number: Integer).returns(Integer) }
          def number=(_number); end
          sig {
            params(amount: Integer, expiry: ::Stripe::ThreeDSecure::AuthenticationCreateParams::FutureUsage::Installment::Expiry, interval: T.nilable(String), interval_count: T.nilable(Integer), number: Integer).void
           }
          def initialize(
            amount: nil,
            expiry: nil,
            interval: nil,
            interval_count: nil,
            number: nil
          ); end
        end
        class Recurring < ::Stripe::RequestParams
          class Expiry < ::Stripe::RequestParams
            # The date before which the last authorization related to this authentication will occur.
            sig { returns(T.nilable(String)) }
            def date; end
            sig { params(_date: T.nilable(String)).returns(T.nilable(String)) }
            def date=(_date); end
            # The type of expiry for the future use of this authentication.
            sig { returns(String) }
            def type; end
            sig { params(_type: String).returns(String) }
            def type=(_type); end
            sig { params(date: T.nilable(String), type: String).void }
            def initialize(date: nil, type: nil); end
          end
          # A non-negative integer representing the future authorizations' amount in the [smallest currency unit](/currencies#zero-decimal).
          sig { returns(Integer) }
          def amount; end
          sig { params(_amount: Integer).returns(Integer) }
          def amount=(_amount); end
          # Information about the expiry of the future usage of this authentication.
          sig {
            returns(::Stripe::ThreeDSecure::AuthenticationCreateParams::FutureUsage::Recurring::Expiry)
           }
          def expiry; end
          sig {
            params(_expiry: ::Stripe::ThreeDSecure::AuthenticationCreateParams::FutureUsage::Recurring::Expiry).returns(::Stripe::ThreeDSecure::AuthenticationCreateParams::FutureUsage::Recurring::Expiry)
           }
          def expiry=(_expiry); end
          # The unit of time for `interval_count`.
          sig { returns(T.nilable(String)) }
          def interval; end
          sig { params(_interval: T.nilable(String)).returns(T.nilable(String)) }
          def interval=(_interval); end
          # The minimum number of time intervals between authorizations. Must be greater than 0, and defaults to 1.
          sig { returns(T.nilable(Integer)) }
          def interval_count; end
          sig { params(_interval_count: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def interval_count=(_interval_count); end
          sig {
            params(amount: Integer, expiry: ::Stripe::ThreeDSecure::AuthenticationCreateParams::FutureUsage::Recurring::Expiry, interval: T.nilable(String), interval_count: T.nilable(Integer)).void
           }
          def initialize(amount: nil, expiry: nil, interval: nil, interval_count: nil); end
        end
        # Parameters related to an installment payment.
        sig {
          returns(T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::FutureUsage::Installment))
         }
        def installment; end
        sig {
          params(_installment: T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::FutureUsage::Installment)).returns(T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::FutureUsage::Installment))
         }
        def installment=(_installment); end
        # Parameters related to a recurring payment.
        sig {
          returns(T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::FutureUsage::Recurring))
         }
        def recurring; end
        sig {
          params(_recurring: T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::FutureUsage::Recurring)).returns(T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::FutureUsage::Recurring))
         }
        def recurring=(_recurring); end
        # The type of future usage declared for this 3DS Authentication
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(installment: T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::FutureUsage::Installment), recurring: T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::FutureUsage::Recurring), type: String).void
         }
        def initialize(installment: nil, recurring: nil, type: nil); end
      end
      class PaymentMethodData < ::Stripe::RequestParams
        class BillingDetails < ::Stripe::RequestParams
          class Address < ::Stripe::RequestParams
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
            # Country subdivision code defined in ISO 3166-2.
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
            returns(T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::PaymentMethodData::BillingDetails::Address))
           }
          def address; end
          sig {
            params(_address: T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::PaymentMethodData::BillingDetails::Address)).returns(T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::PaymentMethodData::BillingDetails::Address))
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
            params(address: T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::PaymentMethodData::BillingDetails::Address), email: T.nilable(String), name: T.nilable(String), phone: T.nilable(String)).void
           }
          def initialize(address: nil, email: nil, name: nil, phone: nil); end
        end
        class Card < ::Stripe::RequestParams
          # Attribute for param field cvc
          sig { returns(T.nilable(String)) }
          def cvc; end
          sig { params(_cvc: T.nilable(String)).returns(T.nilable(String)) }
          def cvc=(_cvc); end
          # Attribute for param field exp_month
          sig { returns(T.nilable(Integer)) }
          def exp_month; end
          sig { params(_exp_month: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def exp_month=(_exp_month); end
          # Attribute for param field exp_year
          sig { returns(T.nilable(Integer)) }
          def exp_year; end
          sig { params(_exp_year: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def exp_year=(_exp_year); end
          # Attribute for param field number
          sig { returns(T.nilable(String)) }
          def number; end
          sig { params(_number: T.nilable(String)).returns(T.nilable(String)) }
          def number=(_number); end
          # Attribute for param field token
          sig { returns(T.nilable(String)) }
          def token; end
          sig { params(_token: T.nilable(String)).returns(T.nilable(String)) }
          def token=(_token); end
          sig {
            params(cvc: T.nilable(String), exp_month: T.nilable(Integer), exp_year: T.nilable(Integer), number: T.nilable(String), token: T.nilable(String)).void
           }
          def initialize(cvc: nil, exp_month: nil, exp_year: nil, number: nil, token: nil); end
        end
        # Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
        sig {
          returns(T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::PaymentMethodData::BillingDetails))
         }
        def billing_details; end
        sig {
          params(_billing_details: T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::PaymentMethodData::BillingDetails)).returns(T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::PaymentMethodData::BillingDetails))
         }
        def billing_details=(_billing_details); end
        # Attribute for param field card
        sig { returns(::Stripe::ThreeDSecure::AuthenticationCreateParams::PaymentMethodData::Card) }
        def card; end
        sig {
          params(_card: ::Stripe::ThreeDSecure::AuthenticationCreateParams::PaymentMethodData::Card).returns(::Stripe::ThreeDSecure::AuthenticationCreateParams::PaymentMethodData::Card)
         }
        def card=(_card); end
        # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(billing_details: T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::PaymentMethodData::BillingDetails), card: ::Stripe::ThreeDSecure::AuthenticationCreateParams::PaymentMethodData::Card, type: String).void
         }
        def initialize(billing_details: nil, card: nil, type: nil); end
      end
      class ShippingAddress < ::Stripe::RequestParams
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
        # Country subdivision code defined in ISO 3166-2.
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
      # Contains additional details about the acquirer for this 3DS Authentication.
      #
      # Refer to the [Pass acquirer details and directory server section of the standalone 3DS guide](/payments/3d-secure/standalone-3d-secure#pass-acquirer-details-and-directory-server) for more information.
      sig {
        returns(T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::AcquirerDetails))
       }
      def acquirer_details; end
      sig {
        params(_acquirer_details: T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::AcquirerDetails)).returns(T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::AcquirerDetails))
       }
      def acquirer_details=(_acquirer_details); end
      # A non-negative integer representing the amount in the [smallest currency unit](/currencies#zero-decimal). You can't include this parameter if `message_category` is `non_payment_authentication`
      sig { returns(T.nilable(Integer)) }
      def amount; end
      sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
      def amount=(_amount); end
      # Contains additional details on the channel used for this 3DS Authentication.
      sig { returns(::Stripe::ThreeDSecure::AuthenticationCreateParams::Channel) }
      def channel; end
      sig {
        params(_channel: ::Stripe::ThreeDSecure::AuthenticationCreateParams::Channel).returns(::Stripe::ThreeDSecure::AuthenticationCreateParams::Channel)
       }
      def channel=(_channel); end
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(T.nilable(String)) }
      def currency; end
      sig { params(_currency: T.nilable(String)).returns(T.nilable(String)) }
      def currency=(_currency); end
      # The 3DS directory server with which this 3DS Authentication was processed.
      sig { returns(T.nilable(String)) }
      def directory_server; end
      sig { params(_directory_server: T.nilable(String)).returns(T.nilable(String)) }
      def directory_server=(_directory_server); end
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      def expand; end
      sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
      def expand=(_expand); end
      # Contains additional details on your flow preference for this 3DS Authentication.
      #
      # Refer to the [Specify a flow preference section of the standalone 3DS guide](/payments/3d-secure/standalone-3d-secure#specify-a-flow-preference) for more information.
      sig { returns(T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::FlowPreference)) }
      def flow_preference; end
      sig {
        params(_flow_preference: T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::FlowPreference)).returns(T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::FlowPreference))
       }
      def flow_preference=(_flow_preference); end
      # Contains information about future usage of this 3DS Authentication
      sig { returns(T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::FutureUsage)) }
      def future_usage; end
      sig {
        params(_future_usage: T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::FutureUsage)).returns(T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::FutureUsage))
       }
      def future_usage=(_future_usage); end
      # Indicates whether this 3DS Authentication is being performed for a payment or non-payment use case.
      sig { returns(String) }
      def message_category; end
      sig { params(_message_category: String).returns(String) }
      def message_category=(_message_category); end
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
      def metadata; end
      sig {
        params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
       }
      def metadata=(_metadata); end
      # ID of the payment method (a PaymentMethod object) to attach to this 3DS Authentication.
      sig { returns(T.nilable(String)) }
      def payment_method; end
      sig { params(_payment_method: T.nilable(String)).returns(T.nilable(String)) }
      def payment_method=(_payment_method); end
      # Hash used to generate the PaymentMethod to be used for this Authentication. This is mutually exclusive with the `payment_method` parameter.
      sig {
        returns(T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::PaymentMethodData))
       }
      def payment_method_data; end
      sig {
        params(_payment_method_data: T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::PaymentMethodData)).returns(T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::PaymentMethodData))
       }
      def payment_method_data=(_payment_method_data); end
      # The reason for invoking standalone 3DS. This is tailored specifically for cases when you want Stripe to help determine the standalone 3DS flow to fit your use case instead of needing to select a specific 3DS flow.
      #
      # This parameter is exclusive with `flow_preference`. You can either use `reason` for controlling 3DS according to your business requirements, or use `flow_preference` for having fine-grained control over your 3DS flow preference.
      sig { returns(T.nilable(String)) }
      def reason; end
      sig { params(_reason: T.nilable(String)).returns(T.nilable(String)) }
      def reason=(_reason); end
      # The shipping address requested by the cardholder. You should try to include as complete address information as possible.
      sig {
        returns(T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::ShippingAddress))
       }
      def shipping_address; end
      sig {
        params(_shipping_address: T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::ShippingAddress)).returns(T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::ShippingAddress))
       }
      def shipping_address=(_shipping_address); end
      # Set to `always` to skip the fingerprinting step and submit this Authentication immediately or `if_fingerprinting_not_supported` to submit this Authentication only if fingerprinting is not available. This parameter defaults to `never`.
      #
      # Refer to the [Submit at creation section of the standalone 3DS guide](/payments/3d-secure/standalone-3d-secure#submit-at-creation) for more information.
      sig { returns(T.nilable(String)) }
      def submit; end
      sig { params(_submit: T.nilable(String)).returns(T.nilable(String)) }
      def submit=(_submit); end
      sig {
        params(acquirer_details: T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::AcquirerDetails), amount: T.nilable(Integer), channel: ::Stripe::ThreeDSecure::AuthenticationCreateParams::Channel, currency: T.nilable(String), directory_server: T.nilable(String), expand: T.nilable(T::Array[String]), flow_preference: T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::FlowPreference), future_usage: T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::FutureUsage), message_category: String, metadata: T.nilable(T.any(String, T::Hash[String, String])), payment_method: T.nilable(String), payment_method_data: T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::PaymentMethodData), reason: T.nilable(String), shipping_address: T.nilable(::Stripe::ThreeDSecure::AuthenticationCreateParams::ShippingAddress), submit: T.nilable(String)).void
       }
      def initialize(
        acquirer_details: nil,
        amount: nil,
        channel: nil,
        currency: nil,
        directory_server: nil,
        expand: nil,
        flow_preference: nil,
        future_usage: nil,
        message_category: nil,
        metadata: nil,
        payment_method: nil,
        payment_method_data: nil,
        reason: nil,
        shipping_address: nil,
        submit: nil
      ); end
    end
  end
end