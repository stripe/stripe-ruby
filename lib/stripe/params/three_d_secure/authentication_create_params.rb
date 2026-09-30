# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module ThreeDSecure
    class AuthenticationCreateParams < ::Stripe::RequestParams
      class AcquirerDetails < ::Stripe::RequestParams
        # The Acquirer BIN (specific to the directory_server).
        attr_accessor :acquirer_bin
        # The two-letter country code of the acquirer ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        attr_accessor :acquirer_country
        # The Merchant ID (or Card Acceptor ID) that your acquirer assigned you (specific to the directory_server).
        attr_accessor :acquirer_merchant_id
        # The [merchant category code](https://en.wikipedia.org/wiki/Merchant_category_code) as defined by each payment system or directory server.
        attr_accessor :mcc
        # The merchant name assigned by the acquirer or payment system. Same name used in the authorization message as defined in [ISO 8583](https://en.wikipedia.org/wiki/ISO_8583).
        attr_accessor :merchant_name
        # Requestor ID if you’re enrolled in the card network’s 3DS program. Otherwise, you can omit this field because Stripe assigns a Requestor ID with the card networks.
        attr_accessor :requestor_id

        def initialize(
          acquirer_bin: nil,
          acquirer_country: nil,
          acquirer_merchant_id: nil,
          mcc: nil,
          merchant_name: nil,
          requestor_id: nil
        )
          @acquirer_bin = acquirer_bin
          @acquirer_country = acquirer_country
          @acquirer_merchant_id = acquirer_merchant_id
          @mcc = mcc
          @merchant_name = merchant_name
          @requestor_id = requestor_id
        end
      end

      class Channel < ::Stripe::RequestParams
        class Browser < ::Stripe::RequestParams
          # The HTTP accept headers from the cardholder's browser. Collected server-side.
          attr_accessor :accept_header
          # The color depth of the cardholder’s screen.
          #
          # Returned from the `screen.colorDepth` property.
          attr_accessor :color_depth
          # Unique and immutable identifier linked to a device that is consistent across 3DS transactions for the specific user device. For example: hardware device ID or a platform-calculated device fingerprint.
          attr_accessor :device_id
          # The IP address of the browser. Included in the HTTP request to your server before you create the 3DS Authentication.
          #
          # Collected server-side.
          attr_accessor :ip_address
          # The cardholder browser’s ability to execute Java. Returned from the navigator.javaEnabled property.
          attr_accessor :java_enabled
          # The cardholder browser’s ability to execute JavaScript.
          attr_accessor :javascript_enabled
          # An IETF BCP 47 language tag representing the browser language. Typically returned from the `navigator.language` property, but might also be returned from `navigator.languages` or `navigator.browserLanguage`.
          #
          #  In some cases, this value might be an array. To cast it to a string or null value, you can use the `getBrowserLanguage()` [example function](/payments/3d-secure/standalone-3d-secure#pass-client-side-collected-channel-information).
          attr_accessor :language
          # The total height of the cardholder’s screen in pixels.
          #
          # Returned from the `screen.height` property.
          attr_accessor :screen_height
          # The total width of the cardholder’s screen in pixels.
          #
          # Returned from the `screen.width` property.
          attr_accessor :screen_width
          # The time difference between UTC time and the local time of the cardholder’s browser, in minutes.
          #
          # Returned by `new Date().getTimezoneOffset()`
          attr_accessor :timezone_offset
          # The browser user agent. You can retrieve this value on the client side using the `navigator.userAgent` property, or in the HTTP request to your server before you create the 3DS Authentication.
          attr_accessor :user_agent

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
          )
            @accept_header = accept_header
            @color_depth = color_depth
            @device_id = device_id
            @ip_address = ip_address
            @java_enabled = java_enabled
            @javascript_enabled = javascript_enabled
            @language = language
            @screen_height = screen_height
            @screen_width = screen_width
            @timezone_offset = timezone_offset
            @user_agent = user_agent
          end
        end

        class ThreeRI < ::Stripe::RequestParams
          # ID of a prior `Authentication`. For example, the first recurring transaction that was authenticated by the cardholder.
          attr_accessor :previous_authentication
          # It provides additional information to the ACS to determine the best approach for handling a 3RI request.
          attr_accessor :type

          def initialize(previous_authentication: nil, type: nil)
            @previous_authentication = previous_authentication
            @type = type
          end
        end
        # Contains additional details about the browser details you collected.
        attr_accessor :browser
        # Contains additional details about the 3DS Requestor Initiated (3RI) channel.
        attr_accessor :three_r_i
        # Type of channel you would prefer to use for this 3DS Authentication.
        attr_accessor :type

        def initialize(browser: nil, three_r_i: nil, type: nil)
          @browser = browser
          @three_r_i = three_r_i
          @type = type
        end
      end

      class FlowPreference < ::Stripe::RequestParams
        class Challenge < ::Stripe::RequestParams
          # Type of challenge flow you requested for this 3DS Authentication.
          attr_accessor :type

          def initialize(type: nil)
            @type = type
          end
        end

        class DataShare < ::Stripe::RequestParams
          # Type of data share only flow you requested for this 3DS Authentication.
          attr_accessor :type

          def initialize(type: nil)
            @type = type
          end
        end

        class Frictionless < ::Stripe::RequestParams
          # Type of frictionless flow you requested for this 3DS Authentication.
          attr_accessor :type

          def initialize(type: nil)
            @type = type
          end
        end
        # Contains additional details about your challenge flow preference for this 3DS Authentication.
        attr_accessor :challenge
        # Contains additional details about your data share only flow preference for this 3DS Authentication.
        attr_accessor :data_share
        # Contains additional details about your frictionless flow preference for this 3DS Authentication.
        attr_accessor :frictionless
        # Type of flow you requested for this 3DS Authentication.
        attr_accessor :type

        def initialize(challenge: nil, data_share: nil, frictionless: nil, type: nil)
          @challenge = challenge
          @data_share = data_share
          @frictionless = frictionless
          @type = type
        end
      end

      class FutureUsage < ::Stripe::RequestParams
        class Installment < ::Stripe::RequestParams
          class Expiry < ::Stripe::RequestParams
            # The date before which the last authorization related to this authentication will occur.
            attr_accessor :date
            # The type of expiry for the future use of this authentication.
            attr_accessor :type

            def initialize(date: nil, type: nil)
              @date = date
              @type = type
            end
          end
          # A non-negative integer representing the future authorizations' amount in the [smallest currency unit](/currencies#zero-decimal).
          attr_accessor :amount
          # Information about the expiry of the future usage of this authentication.
          attr_accessor :expiry
          # The unit of time for `interval_count`.
          attr_accessor :interval
          # The minimum number of time intervals between authorizations. Must be greater than 0, and defaults to 1.
          attr_accessor :interval_count
          # The maximum number of installments. Must be greater than 1.
          attr_accessor :number

          def initialize(amount: nil, expiry: nil, interval: nil, interval_count: nil, number: nil)
            @amount = amount
            @expiry = expiry
            @interval = interval
            @interval_count = interval_count
            @number = number
          end
        end

        class Recurring < ::Stripe::RequestParams
          class Expiry < ::Stripe::RequestParams
            # The date before which the last authorization related to this authentication will occur.
            attr_accessor :date
            # The type of expiry for the future use of this authentication.
            attr_accessor :type

            def initialize(date: nil, type: nil)
              @date = date
              @type = type
            end
          end
          # A non-negative integer representing the future authorizations' amount in the [smallest currency unit](/currencies#zero-decimal).
          attr_accessor :amount
          # Information about the expiry of the future usage of this authentication.
          attr_accessor :expiry
          # The unit of time for `interval_count`.
          attr_accessor :interval
          # The minimum number of time intervals between authorizations. Must be greater than 0, and defaults to 1.
          attr_accessor :interval_count

          def initialize(amount: nil, expiry: nil, interval: nil, interval_count: nil)
            @amount = amount
            @expiry = expiry
            @interval = interval
            @interval_count = interval_count
          end
        end
        # Parameters related to an installment payment.
        attr_accessor :installment
        # Parameters related to a recurring payment.
        attr_accessor :recurring
        # The type of future usage declared for this 3DS Authentication
        attr_accessor :type

        def initialize(installment: nil, recurring: nil, type: nil)
          @installment = installment
          @recurring = recurring
          @type = type
        end
      end

      class PaymentMethodData < ::Stripe::RequestParams
        class BillingDetails < ::Stripe::RequestParams
          class Address < ::Stripe::RequestParams
            # City, district, suburb, town, or village.
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            attr_accessor :country
            # Address line 1, such as the street, PO Box, or company name.
            attr_accessor :line1
            # Address line 2, such as the apartment, suite, unit, or building.
            attr_accessor :line2
            # ZIP or postal code.
            attr_accessor :postal_code
            # Country subdivision code defined in ISO 3166-2.
            attr_accessor :state

            def initialize(
              city: nil,
              country: nil,
              line1: nil,
              line2: nil,
              postal_code: nil,
              state: nil
            )
              @city = city
              @country = country
              @line1 = line1
              @line2 = line2
              @postal_code = postal_code
              @state = state
            end
          end
          # Billing address.
          attr_accessor :address
          # Email address.
          attr_accessor :email
          # Full name.
          attr_accessor :name
          # Billing phone number (including extension).
          attr_accessor :phone

          def initialize(address: nil, email: nil, name: nil, phone: nil)
            @address = address
            @email = email
            @name = name
            @phone = phone
          end
        end

        class Card < ::Stripe::RequestParams
          # Attribute for param field cvc
          attr_accessor :cvc
          # Attribute for param field exp_month
          attr_accessor :exp_month
          # Attribute for param field exp_year
          attr_accessor :exp_year
          # Attribute for param field number
          attr_accessor :number
          # Attribute for param field token
          attr_accessor :token

          def initialize(cvc: nil, exp_month: nil, exp_year: nil, number: nil, token: nil)
            @cvc = cvc
            @exp_month = exp_month
            @exp_year = exp_year
            @number = number
            @token = token
          end
        end
        # Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
        attr_accessor :billing_details
        # Attribute for param field card
        attr_accessor :card
        # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
        attr_accessor :type

        def initialize(billing_details: nil, card: nil, type: nil)
          @billing_details = billing_details
          @card = card
          @type = type
        end
      end

      class ShippingAddress < ::Stripe::RequestParams
        # City, district, suburb, town, or village.
        attr_accessor :city
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        attr_accessor :country
        # Address line 1, such as the street, PO Box, or company name.
        attr_accessor :line1
        # Address line 2, such as the apartment, suite, unit, or building.
        attr_accessor :line2
        # ZIP or postal code.
        attr_accessor :postal_code
        # Country subdivision code defined in ISO 3166-2.
        attr_accessor :state

        def initialize(
          city: nil,
          country: nil,
          line1: nil,
          line2: nil,
          postal_code: nil,
          state: nil
        )
          @city = city
          @country = country
          @line1 = line1
          @line2 = line2
          @postal_code = postal_code
          @state = state
        end
      end
      # Contains additional details about the acquirer for this 3DS Authentication.
      #
      # Refer to the [Pass acquirer details and directory server section of the standalone 3DS guide](/payments/3d-secure/standalone-3d-secure#pass-acquirer-details-and-directory-server) for more information.
      attr_accessor :acquirer_details
      # A non-negative integer representing the amount in the [smallest currency unit](/currencies#zero-decimal). You can't include this parameter if `message_category` is `non_payment_authentication`
      attr_accessor :amount
      # Contains additional details on the channel used for this 3DS Authentication.
      attr_accessor :channel
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_accessor :currency
      # The 3DS directory server with which this 3DS Authentication was processed.
      attr_accessor :directory_server
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Contains additional details on your flow preference for this 3DS Authentication.
      #
      # Refer to the [Specify a flow preference section of the standalone 3DS guide](/payments/3d-secure/standalone-3d-secure#specify-a-flow-preference) for more information.
      attr_accessor :flow_preference
      # Contains information about future usage of this 3DS Authentication
      attr_accessor :future_usage
      # Indicates whether this 3DS Authentication is being performed for a payment or non-payment use case.
      attr_accessor :message_category
      # Set of [key-value pairs](https://docs.stripe.com/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # ID of the payment method (a PaymentMethod object) to attach to this 3DS Authentication.
      attr_accessor :payment_method
      # Hash used to generate the PaymentMethod to be used for this Authentication. This is mutually exclusive with the `payment_method` parameter.
      attr_accessor :payment_method_data
      # The reason for invoking standalone 3DS. This is tailored specifically for cases when you want Stripe to help determine the standalone 3DS flow to fit your use case instead of needing to select a specific 3DS flow.
      #
      # This parameter is exclusive with `flow_preference`. You can either use `reason` for controlling 3DS according to your business requirements, or use `flow_preference` for having fine-grained control over your 3DS flow preference.
      attr_accessor :reason
      # The shipping address requested by the cardholder. You should try to include as complete address information as possible.
      attr_accessor :shipping_address
      # Set to `always` to skip the fingerprinting step and submit this Authentication immediately or `if_fingerprinting_not_supported` to submit this Authentication only if fingerprinting is not available. This parameter defaults to `never`.
      #
      # Refer to the [Submit at creation section of the standalone 3DS guide](/payments/3d-secure/standalone-3d-secure#submit-at-creation) for more information.
      attr_accessor :submit

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
      )
        @acquirer_details = acquirer_details
        @amount = amount
        @channel = channel
        @currency = currency
        @directory_server = directory_server
        @expand = expand
        @flow_preference = flow_preference
        @future_usage = future_usage
        @message_category = message_category
        @metadata = metadata
        @payment_method = payment_method
        @payment_method_data = payment_method_data
        @reason = reason
        @shipping_address = shipping_address
        @submit = submit
      end
    end
  end
end
