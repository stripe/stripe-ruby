# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A Payment Record is a resource that allows you to represent payments that occur on- or off-Stripe.
  # For example, you can create a Payment Record to model a payment made on a different payment processor,
  # in order to mark an Invoice as paid and a Subscription as active. Payment Records consist of one or
  # more Payment Attempt Records, which represent individual attempts made on a payment network.
  class PaymentRecord < APIResource
    OBJECT_NAME = "payment_record"
    def self.object_name
      "payment_record"
    end

    class AmountCanceled < Stripe::StripeObject
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # A positive integer representing the amount in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) e.g., 100 cents for $1.00 or 100 for ¥100, a zero-decimal currency).
      attr_reader :value
    end

    class AmountFailed < Stripe::StripeObject
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # A positive integer representing the amount in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) e.g., 100 cents for $1.00 or 100 for ¥100, a zero-decimal currency).
      attr_reader :value
    end

    class AmountGuaranteed < Stripe::StripeObject
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # A positive integer representing the amount in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) e.g., 100 cents for $1.00 or 100 for ¥100, a zero-decimal currency).
      attr_reader :value
    end

    class AmountRequested < Stripe::StripeObject
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # A positive integer representing the amount in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) e.g., 100 cents for $1.00 or 100 for ¥100, a zero-decimal currency).
      attr_reader :value
    end

    class CustomerDetails < Stripe::StripeObject
      # ID of the Stripe Customer associated with this payment.
      attr_reader :customer
      # The customer's email address.
      attr_reader :email
      # The customer's name.
      attr_reader :name
      # The customer's phone number.
      attr_reader :phone
    end

    class PaymentMethodDetails < Stripe::StripeObject
      class BillingDetails < Stripe::StripeObject
        class Address < Stripe::StripeObject
          # City, district, suburb, town, or village.
          attr_reader :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_reader :country
          # Address line 1 (e.g., street, PO Box, or company name).
          attr_reader :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          attr_reader :line2
          # ZIP or postal code.
          attr_reader :postal_code
          # State, county, province, or region.
          attr_reader :state
        end
        # A representation of a physical address.
        attr_reader :address
        # The billing email associated with the method of payment.
        attr_reader :email
        # The billing name associated with the method of payment.
        attr_reader :name
        # The billing phone number associated with the method of payment.
        attr_reader :phone
      end

      class Card < Stripe::StripeObject
        class Checks < Stripe::StripeObject
          # Attribute for field address_line1_check
          attr_reader :address_line1_check
          # Attribute for field address_postal_code_check
          attr_reader :address_postal_code_check
          # Attribute for field cvc_check
          attr_reader :cvc_check
        end

        class NetworkToken < Stripe::StripeObject
          # Attribute for field used
          attr_reader :used
        end

        class ThreeDSecure < Stripe::StripeObject
          # Attribute for field authentication_flow
          attr_reader :authentication_flow
          # Attribute for field result
          attr_reader :result
          # Attribute for field result_reason
          attr_reader :result_reason
          # Attribute for field version
          attr_reader :version
        end
        # Card brand. Can be `amex`, `diners`, `discover`, `eftpos_au`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
        attr_reader :brand
        # When using manual capture, a future timestamp at which the charge will be automatically refunded if uncaptured.
        attr_reader :capture_before
        # Check results by Card networks on Card address and CVC at time of payment.
        attr_reader :checks
        # Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
        attr_reader :country
        # Two-digit number representing the card's expiration month.
        attr_reader :exp_month
        # Four-digit number representing the card's expiration year.
        attr_reader :exp_year
        # Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.
        #
        # *As of May 1, 2021, card fingerprint in India for Connect changed to allow two fingerprints for the same card---one for India and one for the rest of the world.*
        attr_reader :fingerprint
        # Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
        attr_reader :funding
        # The last four digits of the card.
        attr_reader :last4
        # True if this payment was marked as MOTO and out of scope for SCA.
        attr_reader :moto
        # Identifies which network this charge was processed on. Can be `amex`, `cartes_bancaires`, `diners`, `discover`, `eftpos_au`, `interac`, `jcb`, `link`, `mastercard`, `unionpay`, `visa`, or `unknown`.
        attr_reader :network
        # If this card has network token credentials, this contains the details of the network token credentials.
        attr_reader :network_token
        # This is used by the financial networks to identify a transaction. Visa calls this the Transaction ID, Mastercard calls this the Trace ID, and American Express calls this the Acquirer Reference Data. This value will be present if it is returned by the financial network in the authorization response, and null otherwise.
        attr_reader :network_transaction_id
        # Populated if this transaction used 3D Secure authentication.
        attr_reader :three_d_secure
      end

      class Custom < Stripe::StripeObject
        # Display name for the custom (user-defined) payment method type used to make this payment.
        attr_reader :display_name
        # The custom payment method type associated with this payment.
        attr_reader :type
      end
      # The billing details associated with the method of payment.
      attr_reader :billing_details
      # Details of the card used for this payment attempt.
      attr_reader :card
      # Custom Payment Methods represent Payment Method types not modeled directly in
      # the Stripe API. This resource consists of details about the custom payment method
      # used for this payment attempt.
      attr_reader :custom
      # ID of the Stripe PaymentMethod used to make this payment.
      attr_reader :payment_method
      # The type of Payment Method used for this payment attempt.
      attr_reader :type
    end

    class ShippingDetails < Stripe::StripeObject
      class Address < Stripe::StripeObject
        # City, district, suburb, town, or village.
        attr_reader :city
        # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
        attr_reader :country
        # Address line 1 (e.g., street, PO Box, or company name).
        attr_reader :line1
        # Address line 2 (e.g., apartment, suite, unit, or building).
        attr_reader :line2
        # ZIP or postal code.
        attr_reader :postal_code
        # State, county, province, or region.
        attr_reader :state
      end
      # A representation of a physical address.
      attr_reader :address
      # The shipping recipient's name.
      attr_reader :name
      # The shipping recipient's phone number.
      attr_reader :phone
    end

    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class ReportPaymentAttemptParams < Stripe::RequestParams
      class Failed < Stripe::RequestParams
        # When the reported payment failed. Measured in seconds since the Unix epoch.
        attr_accessor :failed_at

        def initialize(failed_at: nil)
          @failed_at = failed_at
        end
      end

      class Guaranteed < Stripe::RequestParams
        # When the reported payment was guaranteed. Measured in seconds since the Unix epoch.
        attr_accessor :guaranteed_at

        def initialize(guaranteed_at: nil)
          @guaranteed_at = guaranteed_at
        end
      end

      class PaymentMethodDetails < Stripe::RequestParams
        class BillingDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            attr_accessor :line2
            # ZIP or postal code.
            attr_accessor :postal_code
            # State, county, province, or region.
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
          # The billing address associated with the method of payment.
          attr_accessor :address
          # The billing email associated with the method of payment.
          attr_accessor :email
          # The billing name associated with the method of payment.
          attr_accessor :name
          # The billing phone number associated with the method of payment.
          attr_accessor :phone

          def initialize(address: nil, email: nil, name: nil, phone: nil)
            @address = address
            @email = email
            @name = name
            @phone = phone
          end
        end

        class Custom < Stripe::RequestParams
          # Display name for the custom (user-defined) payment method type used to make this payment.
          attr_accessor :display_name
          # The custom payment method type associated with this payment.
          attr_accessor :type

          def initialize(display_name: nil, type: nil)
            @display_name = display_name
            @type = type
          end
        end
        # The billing details associated with the method of payment.
        attr_accessor :billing_details
        # Information about the custom (user-defined) payment method used to make this payment.
        attr_accessor :custom
        # ID of the Stripe Payment Method used to make this payment.
        attr_accessor :payment_method
        # The type of the payment method details. An additional hash is included on the payment_method_details with a name matching this value. It contains additional information specific to the type.
        attr_accessor :type

        def initialize(billing_details: nil, custom: nil, payment_method: nil, type: nil)
          @billing_details = billing_details
          @custom = custom
          @payment_method = payment_method
          @type = type
        end
      end

      class ShippingDetails < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          attr_accessor :line2
          # ZIP or postal code.
          attr_accessor :postal_code
          # State, county, province, or region.
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
        # The physical shipping address.
        attr_accessor :address
        # The shipping recipient's name.
        attr_accessor :name
        # The shipping recipient's phone number.
        attr_accessor :phone

        def initialize(address: nil, name: nil, phone: nil)
          @address = address
          @name = name
          @phone = phone
        end
      end
      # An arbitrary string attached to the object. Often useful for displaying to users.
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Information about the payment attempt failure.
      attr_accessor :failed
      # Information about the payment attempt guarantee.
      attr_accessor :guaranteed
      # When the reported payment was initiated. Measured in seconds since the Unix epoch.
      attr_accessor :initiated_at
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # The outcome of the reported payment.
      attr_accessor :outcome
      # Information about the Payment Method debited for this payment.
      attr_accessor :payment_method_details
      # Shipping information for this payment.
      attr_accessor :shipping_details

      def initialize(
        description: nil,
        expand: nil,
        failed: nil,
        guaranteed: nil,
        initiated_at: nil,
        metadata: nil,
        outcome: nil,
        payment_method_details: nil,
        shipping_details: nil
      )
        @description = description
        @expand = expand
        @failed = failed
        @guaranteed = guaranteed
        @initiated_at = initiated_at
        @metadata = metadata
        @outcome = outcome
        @payment_method_details = payment_method_details
        @shipping_details = shipping_details
      end
    end

    class ReportPaymentAttemptCanceledParams < Stripe::RequestParams
      # When the reported payment was canceled. Measured in seconds since the Unix epoch.
      attr_accessor :canceled_at
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Attribute for param field metadata
      attr_accessor :metadata

      def initialize(canceled_at: nil, expand: nil, metadata: nil)
        @canceled_at = canceled_at
        @expand = expand
        @metadata = metadata
      end
    end

    class ReportPaymentAttemptFailedParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # When the reported payment failed. Measured in seconds since the Unix epoch.
      attr_accessor :failed_at
      # Attribute for param field metadata
      attr_accessor :metadata

      def initialize(expand: nil, failed_at: nil, metadata: nil)
        @expand = expand
        @failed_at = failed_at
        @metadata = metadata
      end
    end

    class ReportPaymentAttemptGuaranteedParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # When the reported payment was guaranteed. Measured in seconds since the Unix epoch.
      attr_accessor :guaranteed_at
      # Attribute for param field metadata
      attr_accessor :metadata

      def initialize(expand: nil, guaranteed_at: nil, metadata: nil)
        @expand = expand
        @guaranteed_at = guaranteed_at
        @metadata = metadata
      end
    end

    class ReportPaymentParams < Stripe::RequestParams
      class AmountRequested < Stripe::RequestParams
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        attr_accessor :currency
        # A positive integer representing the amount in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) e.g., 100 cents for $1.00 or 100 for ¥100, a zero-decimal currency).
        attr_accessor :value

        def initialize(currency: nil, value: nil)
          @currency = currency
          @value = value
        end
      end

      class CustomerDetails < Stripe::RequestParams
        # The customer who made the payment.
        attr_accessor :customer
        # The customer's phone number.
        attr_accessor :email
        # The customer's name.
        attr_accessor :name
        # The customer's phone number.
        attr_accessor :phone

        def initialize(customer: nil, email: nil, name: nil, phone: nil)
          @customer = customer
          @email = email
          @name = name
          @phone = phone
        end
      end

      class Failed < Stripe::RequestParams
        # When the reported payment failed. Measured in seconds since the Unix epoch.
        attr_accessor :failed_at

        def initialize(failed_at: nil)
          @failed_at = failed_at
        end
      end

      class Guaranteed < Stripe::RequestParams
        # When the reported payment was guaranteed. Measured in seconds since the Unix epoch.
        attr_accessor :guaranteed_at

        def initialize(guaranteed_at: nil)
          @guaranteed_at = guaranteed_at
        end
      end

      class PaymentMethodDetails < Stripe::RequestParams
        class BillingDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            attr_accessor :city
            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            attr_accessor :country
            # Address line 1 (e.g., street, PO Box, or company name).
            attr_accessor :line1
            # Address line 2 (e.g., apartment, suite, unit, or building).
            attr_accessor :line2
            # ZIP or postal code.
            attr_accessor :postal_code
            # State, county, province, or region.
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
          # The billing address associated with the method of payment.
          attr_accessor :address
          # The billing email associated with the method of payment.
          attr_accessor :email
          # The billing name associated with the method of payment.
          attr_accessor :name
          # The billing phone number associated with the method of payment.
          attr_accessor :phone

          def initialize(address: nil, email: nil, name: nil, phone: nil)
            @address = address
            @email = email
            @name = name
            @phone = phone
          end
        end

        class Custom < Stripe::RequestParams
          # Display name for the custom (user-defined) payment method type used to make this payment.
          attr_accessor :display_name
          # The custom payment method type associated with this payment.
          attr_accessor :type

          def initialize(display_name: nil, type: nil)
            @display_name = display_name
            @type = type
          end
        end
        # The billing details associated with the method of payment.
        attr_accessor :billing_details
        # Information about the custom (user-defined) payment method used to make this payment.
        attr_accessor :custom
        # ID of the Stripe Payment Method used to make this payment.
        attr_accessor :payment_method
        # The type of the payment method details. An additional hash is included on the payment_method_details with a name matching this value. It contains additional information specific to the type.
        attr_accessor :type

        def initialize(billing_details: nil, custom: nil, payment_method: nil, type: nil)
          @billing_details = billing_details
          @custom = custom
          @payment_method = payment_method
          @type = type
        end
      end

      class ShippingDetails < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          attr_accessor :city
          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          attr_accessor :country
          # Address line 1 (e.g., street, PO Box, or company name).
          attr_accessor :line1
          # Address line 2 (e.g., apartment, suite, unit, or building).
          attr_accessor :line2
          # ZIP or postal code.
          attr_accessor :postal_code
          # State, county, province, or region.
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
        # The physical shipping address.
        attr_accessor :address
        # The shipping recipient's name.
        attr_accessor :name
        # The shipping recipient's phone number.
        attr_accessor :phone

        def initialize(address: nil, name: nil, phone: nil)
          @address = address
          @name = name
          @phone = phone
        end
      end
      # The amount you intend to collect for this payment.
      attr_accessor :amount_requested
      # Customer information for this payment.
      attr_accessor :customer_details
      # Indicates whether the customer was present in your checkout flow during this payment.
      attr_accessor :customer_presence
      # An arbitrary string attached to the object. Often useful for displaying to users.
      attr_accessor :description
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Information about the payment attempt failure.
      attr_accessor :failed
      # Information about the payment attempt guarantee.
      attr_accessor :guaranteed
      # When the reported payment was initiated. Measured in seconds since the Unix epoch.
      attr_accessor :initiated_at
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # The outcome of the reported payment.
      attr_accessor :outcome
      # Information about the Payment Method debited for this payment.
      attr_accessor :payment_method_details
      # An opaque string for manual reconciliation of this payment, for example a check number or a payment processor ID.
      attr_accessor :payment_reference
      # Shipping information for this payment.
      attr_accessor :shipping_details

      def initialize(
        amount_requested: nil,
        customer_details: nil,
        customer_presence: nil,
        description: nil,
        expand: nil,
        failed: nil,
        guaranteed: nil,
        initiated_at: nil,
        metadata: nil,
        outcome: nil,
        payment_method_details: nil,
        payment_reference: nil,
        shipping_details: nil
      )
        @amount_requested = amount_requested
        @customer_details = customer_details
        @customer_presence = customer_presence
        @description = description
        @expand = expand
        @failed = failed
        @guaranteed = guaranteed
        @initiated_at = initiated_at
        @metadata = metadata
        @outcome = outcome
        @payment_method_details = payment_method_details
        @payment_reference = payment_reference
        @shipping_details = shipping_details
      end
    end
    # A representation of an amount of money, consisting of an amount and a currency.
    attr_reader :amount_canceled
    # A representation of an amount of money, consisting of an amount and a currency.
    attr_reader :amount_failed
    # A representation of an amount of money, consisting of an amount and a currency.
    attr_reader :amount_guaranteed
    # A representation of an amount of money, consisting of an amount and a currency.
    attr_reader :amount_requested
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    attr_reader :created
    # Customer information for this payment.
    attr_reader :customer_details
    # Indicates whether the customer was present in your checkout flow during this payment.
    attr_reader :customer_presence
    # An arbitrary string attached to the object. Often useful for displaying to users.
    attr_reader :description
    # Unique identifier for the object.
    attr_reader :id
    # ID of the latest Payment Attempt Record attached to this Payment Record.
    attr_reader :latest_payment_attempt_record
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # Information about the Payment Method debited for this payment.
    attr_reader :payment_method_details
    # An opaque string for manual reconciliation of this payment, for example a check number or a payment processor ID.
    attr_reader :payment_reference
    # Shipping information for this payment.
    attr_reader :shipping_details

    # Report a new Payment Record. You may report a Payment Record as it is
    #  initialized and later report updates through the other report_* methods, or report Payment
    #  Records in a terminal state directly, through this method.
    def self.report_payment(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: "/v1/payment_records/report_payment",
        params: params,
        opts: opts
      )
    end

    # Report a new payment attempt on the specified Payment Record. A new payment
    #  attempt can only be specified if all other payment attempts are canceled or failed.
    def report_payment_attempt(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_records/%<id>s/report_payment_attempt", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Report a new payment attempt on the specified Payment Record. A new payment
    #  attempt can only be specified if all other payment attempts are canceled or failed.
    def self.report_payment_attempt(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_records/%<id>s/report_payment_attempt", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # Report that the most recent payment attempt on the specified Payment Record
    #  was canceled.
    def report_payment_attempt_canceled(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_records/%<id>s/report_payment_attempt_canceled", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Report that the most recent payment attempt on the specified Payment Record
    #  was canceled.
    def self.report_payment_attempt_canceled(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_records/%<id>s/report_payment_attempt_canceled", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # Report that the most recent payment attempt on the specified Payment Record
    #  failed or errored.
    def report_payment_attempt_failed(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_records/%<id>s/report_payment_attempt_failed", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Report that the most recent payment attempt on the specified Payment Record
    #  failed or errored.
    def self.report_payment_attempt_failed(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_records/%<id>s/report_payment_attempt_failed", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end

    # Report that the most recent payment attempt on the specified Payment Record
    #  was guaranteed.
    def report_payment_attempt_guaranteed(params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_records/%<id>s/report_payment_attempt_guaranteed", { id: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # Report that the most recent payment attempt on the specified Payment Record
    #  was guaranteed.
    def self.report_payment_attempt_guaranteed(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_records/%<id>s/report_payment_attempt_guaranteed", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end
  end
end
