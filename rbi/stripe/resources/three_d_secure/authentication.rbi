# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module ThreeDSecure
    # The Standalone 3DS API allows you to run EMV 3D Secure (3DS) authentication using Stripe while authorizing the payment with any PSP.
    #
    # Related guide: [Standalone 3DS](https://docs.stripe.com/payments/3d-secure/standalone-3d-secure)
    class Authentication < APIResource
      class AcquirerDetails < ::Stripe::StripeObject
        # The Acquirer BIN (specific to the directory_server).
        sig { returns(T.nilable(String)) }
        def acquirer_bin; end
        # The two-letter country code of the acquirer ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(T.nilable(String)) }
        def acquirer_country; end
        # The Merchant ID (or Card Acceptor ID) that your acquirer assigned you (specific to the directory_server).
        sig { returns(T.nilable(String)) }
        def acquirer_merchant_id; end
        # The [merchant category code](https://en.wikipedia.org/wiki/Merchant_category_code) as defined by each payment system or directory server.
        sig { returns(T.nilable(String)) }
        def mcc; end
        # The merchant name assigned by the acquirer or payment system. Same name used in the authorization message as defined in [ISO 8583](https://en.wikipedia.org/wiki/ISO_8583).
        sig { returns(T.nilable(String)) }
        def merchant_name; end
        # Requestor ID if you’re enrolled in the card network’s 3DS program. Otherwise, you can omit this field because Stripe assigns a Requestor ID with the card networks.
        sig { returns(T.nilable(String)) }
        def requestor_id; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class Channel < ::Stripe::StripeObject
        class Browser < ::Stripe::StripeObject
          # The HTTP accept headers from the cardholder's browser.
          sig { returns(String) }
          def accept_header; end
          # The color depth of the cardholder’s screen.
          sig { returns(T.nilable(Integer)) }
          def color_depth; end
          # The IP address of the browser.
          sig { returns(String) }
          def ip_address; end
          # The cardholder browser’s ability to execute Java.
          sig { returns(T.nilable(T::Boolean)) }
          def java_enabled; end
          # The cardholder browser’s ability to execute JavaScript.
          sig { returns(T::Boolean) }
          def javascript_enabled; end
          # An IETF BCP 47 language tag representing the browser language.
          sig { returns(String) }
          def language; end
          # The total height of the cardholder’s screen in pixels.
          sig { returns(T.nilable(Integer)) }
          def screen_height; end
          # The total width of the cardholder’s screen in pixels.
          sig { returns(T.nilable(Integer)) }
          def screen_width; end
          # The time difference between UTC time and the local time of the cardholder’s browser, in minutes.
          sig { returns(T.nilable(Integer)) }
          def timezone_offset; end
          # The browser user agent.
          sig { returns(String) }
          def user_agent; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class ThreeRI < ::Stripe::StripeObject
          # ID of the previous initial authenticated 3DS Authentication object.
          sig { returns(String) }
          def previous_authentication; end
          # Type of the 3RI Authentication.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Contains details on the browser for a standalone 3DS Authentication.
        sig { returns(T.nilable(Browser)) }
        def browser; end
        # Contains details for a 3RI standalone 3DS Authentication.
        sig { returns(T.nilable(ThreeRI)) }
        def three_r_i; end
        # Type of channel you would prefer to use for this 3DS Authentication. Only browser.
        sig { returns(String) }
        def type; end
        def self.inner_class_types
          @inner_class_types = {browser: Browser, three_r_i: ThreeRI}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class FlowPreference < ::Stripe::StripeObject
        class Challenge < ::Stripe::StripeObject
          # Type of challenge flow you requested for this 3DS Authentication.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class DataShare < ::Stripe::StripeObject
          # Type of data share flow you requested for this 3DS Authentication.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Frictionless < ::Stripe::StripeObject
          # Type of frictionless flow you requested for this 3DS Authentication.
          sig { returns(String) }
          def type; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field challenge
        sig { returns(T.nilable(Challenge)) }
        def challenge; end
        # Attribute for field data_share
        sig { returns(T.nilable(DataShare)) }
        def data_share; end
        # Attribute for field frictionless
        sig { returns(T.nilable(Frictionless)) }
        def frictionless; end
        # Type of flow you requested for this 3DS Authentication.
        sig { returns(String) }
        def type; end
        def self.inner_class_types
          @inner_class_types = {
            challenge: Challenge,
            data_share: DataShare,
            frictionless: Frictionless,
          }
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class FutureUsage < ::Stripe::StripeObject
        class Installment < ::Stripe::StripeObject
          class Expiry < ::Stripe::StripeObject
            # Attribute for field date
            sig { returns(T.nilable(String)) }
            def date; end
            # Attribute for field type
            sig { returns(String) }
            def type; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # A non-negative integer representing the amount in the [smallest currency unit](/currencies#zero-decimal).
          sig { returns(T.nilable(Integer)) }
          def amount; end
          # Information about recurring payment expiry
          sig { returns(Expiry) }
          def expiry; end
          # The unit of time for `interval_count`.
          sig { returns(String) }
          def interval; end
          # The minimum number of time intervals between authorizations.
          sig { returns(Integer) }
          def interval_count; end
          # The maximum number of installments.
          sig { returns(Integer) }
          def number; end
          def self.inner_class_types
            @inner_class_types = {expiry: Expiry}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        class Recurring < ::Stripe::StripeObject
          class Expiry < ::Stripe::StripeObject
            # Attribute for field date
            sig { returns(T.nilable(String)) }
            def date; end
            # Attribute for field type
            sig { returns(String) }
            def type; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # A non-negative integer representing the amount in the [smallest currency unit](/currencies#zero-decimal).
          sig { returns(T.nilable(Integer)) }
          def amount; end
          # Information about recurring payment expiry
          sig { returns(Expiry) }
          def expiry; end
          # The unit of time for `interval_count`.
          sig { returns(String) }
          def interval; end
          # The minimum number of time intervals between authorizations.
          sig { returns(Integer) }
          def interval_count; end
          def self.inner_class_types
            @inner_class_types = {expiry: Expiry}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Details about installment payments
        sig { returns(T.nilable(Installment)) }
        def installment; end
        # Details about recurring payments
        sig { returns(T.nilable(Recurring)) }
        def recurring; end
        # The type of future usage declared for this 3DS Authentication.
        sig { returns(String) }
        def type; end
        def self.inner_class_types
          @inner_class_types = {installment: Installment, recurring: Recurring}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class OutcomeDetails < ::Stripe::StripeObject
        class NetworkDetails < ::Stripe::StripeObject
          class CartesBancaires < ::Stripe::StripeObject
            # The cryptogram calculation algorithm used by the card Issuer's ACS to calculate the Authentication cryptogram. Also known as cavvAlgorithm. ARes/RReq messageExtension: `CB-AVALGO`
            sig { returns(String) }
            def avalgo; end
            # The exemption indicator returned from Cartes Bancaires in the ARes. This is a 3 byte bitmap (lowest significant byte first and most significant bit first) that has been Base64 encoded. String (4 characters). ARes message extension: `CB-EXEMPTION`
            sig { returns(T.nilable(String)) }
            def cb_exemption; end
            # The risk score returned from Cartes Bancaires in the ARes. Numeric value 0-99. ARes/RReq message extension: `CB-SCORE`
            sig { returns(T.nilable(String)) }
            def cb_score; end
            def self.inner_class_types
              @inner_class_types = {}
            end
            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Contains details for Cartes Bancaires specific fields in the authentication outcomes.
          sig { returns(T.nilable(CartesBancaires)) }
          def cartes_bancaires; end
          def self.inner_class_types
            @inner_class_types = {cartes_bancaires: CartesBancaires}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Universally unique transaction identifier assigned by the issuer to identify the transaction.
        sig { returns(T.nilable(String)) }
        def acs_transaction_id; end
        # The Authentication Response Message (ARes) is the issuer's response to the AReq message.
        sig { returns(T.nilable(String)) }
        def ares; end
        # TransStatus field on the ARes
        sig { returns(T.nilable(String)) }
        def ares_trans_status; end
        # A 28-character Base64 string proving that 3DS was completed. Store this value securely, and don’t reuse it for multiple authorizations.
        sig { returns(T.nilable(String)) }
        def cryptogram; end
        # The 3DS2 Directory Server Transaction ID.
        sig { returns(T.nilable(String)) }
        def ds_transaction_id; end
        # Electronic Commerce Indicator provided by the issuer to indicate the result of this 3DS Authentication.
        sig { returns(T.nilable(String)) }
        def eci; end
        # Contains details specific to the individual network.
        sig { returns(T.nilable(NetworkDetails)) }
        def network_details; end
        # The 3DS protocol version used for this 3DS Authentication.
        sig { returns(String) }
        def protocol_version; end
        # The indicator provided to the issuer by Stripe in the AReq that indicates whether a challenge is requested for this Authentication. This indicator should match the flow_preference you specified but may be overridden (for compliance reasons for example).
        sig { returns(T.nilable(String)) }
        def requestor_challenge_indicator; end
        # The Results Request Message (RReq) communicates the results of the authentication or verification.
        sig { returns(T.nilable(String)) }
        def rreq; end
        # TransStatus field on the RReq
        sig { returns(T.nilable(String)) }
        def rreq_trans_status; end
        # Universally unique transaction identifier assigned by Stripe to identify the transaction.
        sig { returns(String) }
        def three_ds_server_transaction_id; end
        def self.inner_class_types
          @inner_class_types = {network_details: NetworkDetails}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class ShippingAddress < ::Stripe::StripeObject
        # City, district, suburb, town, or village.
        sig { returns(T.nilable(String)) }
        def city; end
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        sig { returns(T.nilable(String)) }
        def country; end
        # Address line 1, such as the street, PO Box, or company name.
        sig { returns(T.nilable(String)) }
        def line1; end
        # Address line 2, such as the apartment, suite, unit, or building.
        sig { returns(T.nilable(String)) }
        def line2; end
        # ZIP or postal code.
        sig { returns(T.nilable(String)) }
        def postal_code; end
        # State, county, province, or region ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
        sig { returns(T.nilable(String)) }
        def state; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Contains additional details about the acquirer for a 3DS Authentication.
      sig { returns(T.nilable(AcquirerDetails)) }
      def acquirer_details; end
      # The amount for this 3DS Authentication.
      sig { returns(T.nilable(Integer)) }
      def amount; end
      # The URL for presenting a challenge to your cardholder, present if status is requires_challenge.
      sig { returns(T.nilable(String)) }
      def challenge_url; end
      # Contains details on the channel used (browser, 3RI) for a standalone 3DS Authentication.
      sig { returns(Channel) }
      def channel; end
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      def created; end
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      sig { returns(T.nilable(String)) }
      def currency; end
      # The 3DS directory server with which this 3DS Authentication was processed.
      sig { returns(String) }
      def directory_server; end
      # The URL for performing issuer fingerprinting, present if fingerprinting is supported for the given payment method.
      sig { returns(T.nilable(String)) }
      def fingerprinting_url; end
      # Contains details of the flow preference used for a standalone 3DS Authentication.
      sig { returns(T.nilable(FlowPreference)) }
      def flow_preference; end
      # Contains information about the future authorisations related to this authentication
      sig { returns(T.nilable(FutureUsage)) }
      def future_usage; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      sig { returns(T::Boolean) }
      def livemode; end
      # Indicates whether this 3DS Authentication is being performed for a payment or non-payment use case.
      sig { returns(String) }
      def message_category; end
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # The outcome of this 3DS Authentication.
      sig { returns(T.nilable(String)) }
      def outcome; end
      # Contains details on the result for a standalone 3DS Authentication.
      sig { returns(T.nilable(OutcomeDetails)) }
      def outcome_details; end
      # ID of the payment method (a PaymentMethod object) to attach to this 3DS Authentication.
      sig { returns(T.any(String, ::Stripe::PaymentMethod)) }
      def payment_method; end
      # The reason for invoking this 3DS Authentication.
      sig { returns(T.nilable(String)) }
      def reason; end
      # Contains details about the shipping address for a 3DS Authentication.
      sig { returns(T.nilable(ShippingAddress)) }
      def shipping_address; end
      # Status of this Authentication.
      sig { returns(String) }
      def status; end
      # This endpoint cancels a 3DS Authentication. You can cancel a 3DS Authentication object when it's in a non-final status:
      # requires_submission or requires_challenge.
      sig {
        params(params: T.any(::Stripe::ThreeDSecure::AuthenticationCancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ThreeDSecure::Authentication)
       }
      def cancel(params = {}, opts = {}); end

      # This endpoint cancels a 3DS Authentication. You can cancel a 3DS Authentication object when it's in a non-final status:
      # requires_submission or requires_challenge.
      sig {
        params(authentication: String, params: T.any(::Stripe::ThreeDSecure::AuthenticationCancelParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ThreeDSecure::Authentication)
       }
      def self.cancel(authentication, params = {}, opts = {}); end

      # This endpoint creates a 3DS Authentication. Refer to the [Create a 3DS Authentication object section of the Standalone 3DS guide](https://docs.stripe.com/payments/3d-secure/standalone-3d-secure#create-a-3ds-authentication-object) for more information.
      #
      # You can pass the submit parameter to automatically submit the 3DS Authentication object when you create it. Refer to the [Submit at creation section of the Standalone 3DS guide](https://docs.stripe.com/payments/3d-secure/standalone-3d-secure#submit-at-creation) for more information.
      sig {
        params(params: T.any(::Stripe::ThreeDSecure::AuthenticationCreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ThreeDSecure::Authentication)
       }
      def self.create(params = {}, opts = {}); end

      # Returns a list of 3D Secure Authentications.
      sig {
        params(params: T.any(::Stripe::ThreeDSecure::AuthenticationListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end

      # This endpoint submits a 3DS Authentication. You can submit a 3DS Authentication object when it has status requires_submission. Refer to the [Submit the 3DS Authentication object section of the Standalone 3DS guide](https://docs.stripe.com/payments/3d-secure/standalone-3d-secure#submit-the-3ds-authentication-object) for more information.
      sig {
        params(params: T.any(::Stripe::ThreeDSecure::AuthenticationSubmitParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ThreeDSecure::Authentication)
       }
      def submit(params = {}, opts = {}); end

      # This endpoint submits a 3DS Authentication. You can submit a 3DS Authentication object when it has status requires_submission. Refer to the [Submit the 3DS Authentication object section of the Standalone 3DS guide](https://docs.stripe.com/payments/3d-secure/standalone-3d-secure#submit-the-3ds-authentication-object) for more information.
      sig {
        params(authentication: String, params: T.any(::Stripe::ThreeDSecure::AuthenticationSubmitParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ThreeDSecure::Authentication)
       }
      def self.submit(authentication, params = {}, opts = {}); end
    end
  end
end