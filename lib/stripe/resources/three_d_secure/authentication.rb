# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module ThreeDSecure
    # The Standalone 3DS API allows you to run EMV 3D Secure (3DS) authentication using Stripe while authorizing the payment with any PSP.
    #
    # Related guide: [Standalone 3DS](https://docs.stripe.com/payments/3d-secure/standalone-3d-secure)
    class Authentication < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List

      OBJECT_NAME = "three_d_secure.authentication"
      def self.object_name
        "three_d_secure.authentication"
      end

      class AcquirerDetails < ::Stripe::StripeObject
        # The Acquirer BIN (specific to the directory_server).
        attr_reader :acquirer_bin
        # The two-letter country code of the acquirer ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        attr_reader :acquirer_country
        # The Merchant ID (or Card Acceptor ID) that your acquirer assigned you (specific to the directory_server).
        attr_reader :acquirer_merchant_id
        # The [merchant category code](https://en.wikipedia.org/wiki/Merchant_category_code) as defined by each payment system or directory server.
        attr_reader :mcc
        # The merchant name assigned by the acquirer or payment system. Same name used in the authorization message as defined in [ISO 8583](https://en.wikipedia.org/wiki/ISO_8583).
        attr_reader :merchant_name
        # Requestor ID if you’re enrolled in the card network’s 3DS program. Otherwise, you can omit this field because Stripe assigns a Requestor ID with the card networks.
        attr_reader :requestor_id

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
          attr_reader :accept_header
          # The color depth of the cardholder’s screen.
          attr_reader :color_depth
          # The IP address of the browser.
          attr_reader :ip_address
          # The cardholder browser’s ability to execute Java.
          attr_reader :java_enabled
          # The cardholder browser’s ability to execute JavaScript.
          attr_reader :javascript_enabled
          # An IETF BCP 47 language tag representing the browser language.
          attr_reader :language
          # The total height of the cardholder’s screen in pixels.
          attr_reader :screen_height
          # The total width of the cardholder’s screen in pixels.
          attr_reader :screen_width
          # The time difference between UTC time and the local time of the cardholder’s browser, in minutes.
          attr_reader :timezone_offset
          # The browser user agent.
          attr_reader :user_agent

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class ThreeRI < ::Stripe::StripeObject
          # ID of the previous initial authenticated 3DS Authentication object.
          attr_reader :previous_authentication
          # Type of the 3RI Authentication.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Contains details on the browser for a standalone 3DS Authentication.
        attr_reader :browser
        # Contains details for a 3RI standalone 3DS Authentication.
        attr_reader :three_r_i
        # Type of channel you would prefer to use for this 3DS Authentication. Only browser.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = { browser: Browser, three_r_i: ThreeRI }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class FlowPreference < ::Stripe::StripeObject
        class Challenge < ::Stripe::StripeObject
          # Type of challenge flow you requested for this 3DS Authentication.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class DataShare < ::Stripe::StripeObject
          # Type of data share flow you requested for this 3DS Authentication.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Frictionless < ::Stripe::StripeObject
          # Type of frictionless flow you requested for this 3DS Authentication.
          attr_reader :type

          def self.inner_class_types
            @inner_class_types = {}
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Attribute for field challenge
        attr_reader :challenge
        # Attribute for field data_share
        attr_reader :data_share
        # Attribute for field frictionless
        attr_reader :frictionless
        # Type of flow you requested for this 3DS Authentication.
        attr_reader :type

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
            attr_reader :date
            # Attribute for field type
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # A non-negative integer representing the amount in the [smallest currency unit](/currencies#zero-decimal).
          attr_reader :amount
          # Information about recurring payment expiry
          attr_reader :expiry
          # The unit of time for `interval_count`.
          attr_reader :interval
          # The minimum number of time intervals between authorizations.
          attr_reader :interval_count
          # The maximum number of installments.
          attr_reader :number

          def self.inner_class_types
            @inner_class_types = { expiry: Expiry }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end

        class Recurring < ::Stripe::StripeObject
          class Expiry < ::Stripe::StripeObject
            # Attribute for field date
            attr_reader :date
            # Attribute for field type
            attr_reader :type

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # A non-negative integer representing the amount in the [smallest currency unit](/currencies#zero-decimal).
          attr_reader :amount
          # Information about recurring payment expiry
          attr_reader :expiry
          # The unit of time for `interval_count`.
          attr_reader :interval
          # The minimum number of time intervals between authorizations.
          attr_reader :interval_count

          def self.inner_class_types
            @inner_class_types = { expiry: Expiry }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Details about installment payments
        attr_reader :installment
        # Details about recurring payments
        attr_reader :recurring
        # The type of future usage declared for this 3DS Authentication.
        attr_reader :type

        def self.inner_class_types
          @inner_class_types = { installment: Installment, recurring: Recurring }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class OutcomeDetails < ::Stripe::StripeObject
        class NetworkDetails < ::Stripe::StripeObject
          class CartesBancaires < ::Stripe::StripeObject
            # The cryptogram calculation algorithm used by the card Issuer's ACS to calculate the Authentication cryptogram. Also known as cavvAlgorithm. ARes/RReq messageExtension: `CB-AVALGO`
            attr_reader :avalgo
            # The exemption indicator returned from Cartes Bancaires in the ARes. This is a 3 byte bitmap (lowest significant byte first and most significant bit first) that has been Base64 encoded. String (4 characters). ARes message extension: `CB-EXEMPTION`
            attr_reader :cb_exemption
            # The risk score returned from Cartes Bancaires in the ARes. Numeric value 0-99. ARes/RReq message extension: `CB-SCORE`
            attr_reader :cb_score

            def self.inner_class_types
              @inner_class_types = {}
            end

            def self.field_remappings
              @field_remappings = {}
            end
          end
          # Contains details for Cartes Bancaires specific fields in the authentication outcomes.
          attr_reader :cartes_bancaires

          def self.inner_class_types
            @inner_class_types = { cartes_bancaires: CartesBancaires }
          end

          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Universally unique transaction identifier assigned by the issuer to identify the transaction.
        attr_reader :acs_transaction_id
        # The Authentication Response Message (ARes) is the issuer's response to the AReq message.
        attr_reader :ares
        # TransStatus field on the ARes
        attr_reader :ares_trans_status
        # A 28-character Base64 string proving that 3DS was completed. Store this value securely, and don’t reuse it for multiple authorizations.
        attr_reader :cryptogram
        # The 3DS2 Directory Server Transaction ID.
        attr_reader :ds_transaction_id
        # Electronic Commerce Indicator provided by the issuer to indicate the result of this 3DS Authentication.
        attr_reader :eci
        # Contains details specific to the individual network.
        attr_reader :network_details
        # The 3DS protocol version used for this 3DS Authentication.
        attr_reader :protocol_version
        # The indicator provided to the issuer by Stripe in the AReq that indicates whether a challenge is requested for this Authentication. This indicator should match the flow_preference you specified but may be overridden (for compliance reasons for example).
        attr_reader :requestor_challenge_indicator
        # The Results Request Message (RReq) communicates the results of the authentication or verification.
        attr_reader :rreq
        # TransStatus field on the RReq
        attr_reader :rreq_trans_status
        # Universally unique transaction identifier assigned by Stripe to identify the transaction.
        attr_reader :three_ds_server_transaction_id

        def self.inner_class_types
          @inner_class_types = { network_details: NetworkDetails }
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end

      class ShippingAddress < ::Stripe::StripeObject
        # City, district, suburb, town, or village.
        attr_reader :city
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        attr_reader :country
        # Address line 1, such as the street, PO Box, or company name.
        attr_reader :line1
        # Address line 2, such as the apartment, suite, unit, or building.
        attr_reader :line2
        # ZIP or postal code.
        attr_reader :postal_code
        # State, county, province, or region ([ISO 3166-2](https://en.wikipedia.org/wiki/ISO_3166-2)).
        attr_reader :state

        def self.inner_class_types
          @inner_class_types = {}
        end

        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Contains additional details about the acquirer for a 3DS Authentication.
      attr_reader :acquirer_details
      # The amount for this 3DS Authentication.
      attr_reader :amount
      # The URL for presenting a challenge to your cardholder, present if status is requires_challenge.
      attr_reader :challenge_url
      # Contains details on the channel used (browser, 3RI) for a standalone 3DS Authentication.
      attr_reader :channel
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # The 3DS directory server with which this 3DS Authentication was processed.
      attr_reader :directory_server
      # The URL for performing issuer fingerprinting, present if fingerprinting is supported for the given payment method.
      attr_reader :fingerprinting_url
      # Contains details of the flow preference used for a standalone 3DS Authentication.
      attr_reader :flow_preference
      # Contains information about the future authorisations related to this authentication
      attr_reader :future_usage
      # Unique identifier for the object.
      attr_reader :id
      # If the object exists in live mode, the value is `true`. If the object exists in test mode, the value is `false`.
      attr_reader :livemode
      # Indicates whether this 3DS Authentication is being performed for a payment or non-payment use case.
      attr_reader :message_category
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The outcome of this 3DS Authentication.
      attr_reader :outcome
      # Contains details on the result for a standalone 3DS Authentication.
      attr_reader :outcome_details
      # ID of the payment method (a PaymentMethod object) to attach to this 3DS Authentication.
      attr_reader :payment_method
      # The reason for invoking this 3DS Authentication.
      attr_reader :reason
      # Contains details about the shipping address for a 3DS Authentication.
      attr_reader :shipping_address
      # Status of this Authentication.
      attr_reader :status

      # This endpoint cancels a 3DS Authentication. You can cancel a 3DS Authentication object when it's in a non-final status:
      # requires_submission or requires_challenge.
      def cancel(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/three_d_secure/authentications/%<authentication>s/cancel", { authentication: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # This endpoint cancels a 3DS Authentication. You can cancel a 3DS Authentication object when it's in a non-final status:
      # requires_submission or requires_challenge.
      def self.cancel(authentication, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/three_d_secure/authentications/%<authentication>s/cancel", { authentication: CGI.escape(authentication) }),
          params: params,
          opts: opts
        )
      end

      # This endpoint creates a 3DS Authentication. Refer to the [Create a 3DS Authentication object section of the Standalone 3DS guide](https://docs.stripe.com/payments/3d-secure/standalone-3d-secure#create-a-3ds-authentication-object) for more information.
      #
      # You can pass the submit parameter to automatically submit the 3DS Authentication object when you create it. Refer to the [Submit at creation section of the Standalone 3DS guide](https://docs.stripe.com/payments/3d-secure/standalone-3d-secure#submit-at-creation) for more information.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/three_d_secure/authentications",
          params: params,
          opts: opts
        )
      end

      # Returns a list of 3D Secure Authentications.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/three_d_secure/authentications",
          params: params,
          opts: opts
        )
      end

      # This endpoint submits a 3DS Authentication. You can submit a 3DS Authentication object when it has status requires_submission. Refer to the [Submit the 3DS Authentication object section of the Standalone 3DS guide](https://docs.stripe.com/payments/3d-secure/standalone-3d-secure#submit-the-3ds-authentication-object) for more information.
      def submit(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/three_d_secure/authentications/%<authentication>s/submit", { authentication: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # This endpoint submits a 3DS Authentication. You can submit a 3DS Authentication object when it has status requires_submission. Refer to the [Submit the 3DS Authentication object section of the Standalone 3DS guide](https://docs.stripe.com/payments/3d-secure/standalone-3d-secure#submit-the-3ds-authentication-object) for more information.
      def self.submit(authentication, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/three_d_secure/authentications/%<authentication>s/submit", { authentication: CGI.escape(authentication) }),
          params: params,
          opts: opts
        )
      end

      def self.inner_class_types
        @inner_class_types = {
          acquirer_details: AcquirerDetails,
          channel: Channel,
          flow_preference: FlowPreference,
          future_usage: FutureUsage,
          outcome_details: OutcomeDetails,
          shipping_address: ShippingAddress,
        }
      end

      def self.field_remappings
        @field_remappings = {}
      end
    end
  end
end
