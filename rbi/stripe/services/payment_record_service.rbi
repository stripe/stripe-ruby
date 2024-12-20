# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  class PaymentRecordService < StripeService
    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand

      sig { params(expand: T::Array[String]).void }
      def initialize(expand: nil); end
    end
    class ReportPaymentAttemptParams < Stripe::RequestParams
      class Failed < Stripe::RequestParams
        # When the reported payment failed. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        attr_accessor :failed_at

        sig { params(failed_at: Integer).void }
        def initialize(failed_at: nil); end
      end
      class Guaranteed < Stripe::RequestParams
        # When the reported payment was guaranteed. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        attr_accessor :guaranteed_at

        sig { params(guaranteed_at: Integer).void }
        def initialize(guaranteed_at: nil); end
      end
      class PaymentMethodDetails < Stripe::RequestParams
        class BillingDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            attr_accessor :city

            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country

            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            attr_accessor :line1

            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(String) }
            attr_accessor :line2

            # ZIP or postal code.
            sig { returns(String) }
            attr_accessor :postal_code

            # State, county, province, or region.
            sig { returns(String) }
            attr_accessor :state

            sig {
              params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
          # The billing address associated with the method of payment.
          sig {
            returns(::Stripe::PaymentRecordService::ReportPaymentAttemptParams::PaymentMethodDetails::BillingDetails::Address)
           }
          attr_accessor :address

          # The billing email associated with the method of payment.
          sig { returns(String) }
          attr_accessor :email

          # The billing name associated with the method of payment.
          sig { returns(String) }
          attr_accessor :name

          # The billing phone number associated with the method of payment.
          sig { returns(String) }
          attr_accessor :phone

          sig {
            params(address: ::Stripe::PaymentRecordService::ReportPaymentAttemptParams::PaymentMethodDetails::BillingDetails::Address, email: String, name: String, phone: String).void
           }
          def initialize(address: nil, email: nil, name: nil, phone: nil); end
        end
        class Custom < Stripe::RequestParams
          # Display name for the custom (user-defined) payment method type used to make this payment.
          sig { returns(String) }
          attr_accessor :display_name

          # The custom payment method type associated with this payment.
          sig { returns(String) }
          attr_accessor :type

          sig { params(display_name: String, type: String).void }
          def initialize(display_name: nil, type: nil); end
        end
        # The billing details associated with the method of payment.
        sig {
          returns(::Stripe::PaymentRecordService::ReportPaymentAttemptParams::PaymentMethodDetails::BillingDetails)
         }
        attr_accessor :billing_details

        # Information about the custom (user-defined) payment method used to make this payment.
        sig {
          returns(::Stripe::PaymentRecordService::ReportPaymentAttemptParams::PaymentMethodDetails::Custom)
         }
        attr_accessor :custom

        # ID of the Stripe Payment Method used to make this payment.
        sig { returns(String) }
        attr_accessor :payment_method

        # The type of the payment method details. An additional hash is included on the payment_method_details with a name matching this value. It contains additional information specific to the type.
        sig { returns(String) }
        attr_accessor :type

        sig {
          params(billing_details: ::Stripe::PaymentRecordService::ReportPaymentAttemptParams::PaymentMethodDetails::BillingDetails, custom: ::Stripe::PaymentRecordService::ReportPaymentAttemptParams::PaymentMethodDetails::Custom, payment_method: String, type: String).void
         }
        def initialize(billing_details: nil, custom: nil, payment_method: nil, type: nil); end
      end
      class ShippingDetails < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(String) }
          attr_accessor :city

          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(String) }
          attr_accessor :country

          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(String) }
          attr_accessor :line1

          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(String) }
          attr_accessor :line2

          # ZIP or postal code.
          sig { returns(String) }
          attr_accessor :postal_code

          # State, county, province, or region.
          sig { returns(String) }
          attr_accessor :state

          sig {
            params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
        # The physical shipping address.
        sig {
          returns(::Stripe::PaymentRecordService::ReportPaymentAttemptParams::ShippingDetails::Address)
         }
        attr_accessor :address

        # The shipping recipient's name.
        sig { returns(String) }
        attr_accessor :name

        # The shipping recipient's phone number.
        sig { returns(String) }
        attr_accessor :phone

        sig {
          params(address: ::Stripe::PaymentRecordService::ReportPaymentAttemptParams::ShippingDetails::Address, name: String, phone: String).void
         }
        def initialize(address: nil, name: nil, phone: nil); end
      end
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(String) }
      attr_accessor :description

      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand

      # Information about the payment attempt failure.
      sig { returns(::Stripe::PaymentRecordService::ReportPaymentAttemptParams::Failed) }
      attr_accessor :failed

      # Information about the payment attempt guarantee.
      sig { returns(::Stripe::PaymentRecordService::ReportPaymentAttemptParams::Guaranteed) }
      attr_accessor :guaranteed

      # When the reported payment was initiated. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_accessor :initiated_at

      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T::Hash[String, String]) }
      attr_accessor :metadata

      # The outcome of the reported payment.
      sig { returns(String) }
      attr_accessor :outcome

      # Information about the Payment Method debited for this payment.
      sig {
        returns(::Stripe::PaymentRecordService::ReportPaymentAttemptParams::PaymentMethodDetails)
       }
      attr_accessor :payment_method_details

      # Shipping information for this payment.
      sig { returns(::Stripe::PaymentRecordService::ReportPaymentAttemptParams::ShippingDetails) }
      attr_accessor :shipping_details

      sig {
        params(description: String, expand: T::Array[String], failed: ::Stripe::PaymentRecordService::ReportPaymentAttemptParams::Failed, guaranteed: ::Stripe::PaymentRecordService::ReportPaymentAttemptParams::Guaranteed, initiated_at: Integer, metadata: T::Hash[String, String], outcome: String, payment_method_details: ::Stripe::PaymentRecordService::ReportPaymentAttemptParams::PaymentMethodDetails, shipping_details: ::Stripe::PaymentRecordService::ReportPaymentAttemptParams::ShippingDetails).void
       }
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
      ); end
    end
    class ReportPaymentAttemptCanceledParams < Stripe::RequestParams
      # When the reported payment was canceled. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_accessor :canceled_at

      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand

      # Attribute for param field metadata
      sig { returns(T::Hash[String, String]) }
      attr_accessor :metadata

      sig {
        params(canceled_at: Integer, expand: T::Array[String], metadata: T::Hash[String, String]).void
       }
      def initialize(canceled_at: nil, expand: nil, metadata: nil); end
    end
    class ReportPaymentAttemptFailedParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand

      # When the reported payment failed. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_accessor :failed_at

      # Attribute for param field metadata
      sig { returns(T::Hash[String, String]) }
      attr_accessor :metadata

      sig {
        params(expand: T::Array[String], failed_at: Integer, metadata: T::Hash[String, String]).void
       }
      def initialize(expand: nil, failed_at: nil, metadata: nil); end
    end
    class ReportPaymentAttemptGuaranteedParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand

      # When the reported payment was guaranteed. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_accessor :guaranteed_at

      # Attribute for param field metadata
      sig { returns(T::Hash[String, String]) }
      attr_accessor :metadata

      sig {
        params(expand: T::Array[String], guaranteed_at: Integer, metadata: T::Hash[String, String]).void
       }
      def initialize(expand: nil, guaranteed_at: nil, metadata: nil); end
    end
    class ReportPaymentParams < Stripe::RequestParams
      class AmountRequested < Stripe::RequestParams
        # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
        sig { returns(String) }
        attr_accessor :currency

        # A positive integer representing the amount in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) e.g., 100 cents for $1.00 or 100 for ¥100, a zero-decimal currency).
        sig { returns(Integer) }
        attr_accessor :value

        sig { params(currency: String, value: Integer).void }
        def initialize(currency: nil, value: nil); end
      end
      class CustomerDetails < Stripe::RequestParams
        # The customer who made the payment.
        sig { returns(String) }
        attr_accessor :customer

        # The customer's phone number.
        sig { returns(String) }
        attr_accessor :email

        # The customer's name.
        sig { returns(String) }
        attr_accessor :name

        # The customer's phone number.
        sig { returns(String) }
        attr_accessor :phone

        sig { params(customer: String, email: String, name: String, phone: String).void }
        def initialize(customer: nil, email: nil, name: nil, phone: nil); end
      end
      class Failed < Stripe::RequestParams
        # When the reported payment failed. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        attr_accessor :failed_at

        sig { params(failed_at: Integer).void }
        def initialize(failed_at: nil); end
      end
      class Guaranteed < Stripe::RequestParams
        # When the reported payment was guaranteed. Measured in seconds since the Unix epoch.
        sig { returns(Integer) }
        attr_accessor :guaranteed_at

        sig { params(guaranteed_at: Integer).void }
        def initialize(guaranteed_at: nil); end
      end
      class PaymentMethodDetails < Stripe::RequestParams
        class BillingDetails < Stripe::RequestParams
          class Address < Stripe::RequestParams
            # City, district, suburb, town, or village.
            sig { returns(String) }
            attr_accessor :city

            # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            sig { returns(String) }
            attr_accessor :country

            # Address line 1 (e.g., street, PO Box, or company name).
            sig { returns(String) }
            attr_accessor :line1

            # Address line 2 (e.g., apartment, suite, unit, or building).
            sig { returns(String) }
            attr_accessor :line2

            # ZIP or postal code.
            sig { returns(String) }
            attr_accessor :postal_code

            # State, county, province, or region.
            sig { returns(String) }
            attr_accessor :state

            sig {
              params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
          # The billing address associated with the method of payment.
          sig {
            returns(::Stripe::PaymentRecordService::ReportPaymentParams::PaymentMethodDetails::BillingDetails::Address)
           }
          attr_accessor :address

          # The billing email associated with the method of payment.
          sig { returns(String) }
          attr_accessor :email

          # The billing name associated with the method of payment.
          sig { returns(String) }
          attr_accessor :name

          # The billing phone number associated with the method of payment.
          sig { returns(String) }
          attr_accessor :phone

          sig {
            params(address: ::Stripe::PaymentRecordService::ReportPaymentParams::PaymentMethodDetails::BillingDetails::Address, email: String, name: String, phone: String).void
           }
          def initialize(address: nil, email: nil, name: nil, phone: nil); end
        end
        class Custom < Stripe::RequestParams
          # Display name for the custom (user-defined) payment method type used to make this payment.
          sig { returns(String) }
          attr_accessor :display_name

          # The custom payment method type associated with this payment.
          sig { returns(String) }
          attr_accessor :type

          sig { params(display_name: String, type: String).void }
          def initialize(display_name: nil, type: nil); end
        end
        # The billing details associated with the method of payment.
        sig {
          returns(::Stripe::PaymentRecordService::ReportPaymentParams::PaymentMethodDetails::BillingDetails)
         }
        attr_accessor :billing_details

        # Information about the custom (user-defined) payment method used to make this payment.
        sig {
          returns(::Stripe::PaymentRecordService::ReportPaymentParams::PaymentMethodDetails::Custom)
         }
        attr_accessor :custom

        # ID of the Stripe Payment Method used to make this payment.
        sig { returns(String) }
        attr_accessor :payment_method

        # The type of the payment method details. An additional hash is included on the payment_method_details with a name matching this value. It contains additional information specific to the type.
        sig { returns(String) }
        attr_accessor :type

        sig {
          params(billing_details: ::Stripe::PaymentRecordService::ReportPaymentParams::PaymentMethodDetails::BillingDetails, custom: ::Stripe::PaymentRecordService::ReportPaymentParams::PaymentMethodDetails::Custom, payment_method: String, type: String).void
         }
        def initialize(billing_details: nil, custom: nil, payment_method: nil, type: nil); end
      end
      class ShippingDetails < Stripe::RequestParams
        class Address < Stripe::RequestParams
          # City, district, suburb, town, or village.
          sig { returns(String) }
          attr_accessor :city

          # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
          sig { returns(String) }
          attr_accessor :country

          # Address line 1 (e.g., street, PO Box, or company name).
          sig { returns(String) }
          attr_accessor :line1

          # Address line 2 (e.g., apartment, suite, unit, or building).
          sig { returns(String) }
          attr_accessor :line2

          # ZIP or postal code.
          sig { returns(String) }
          attr_accessor :postal_code

          # State, county, province, or region.
          sig { returns(String) }
          attr_accessor :state

          sig {
            params(city: String, country: String, line1: String, line2: String, postal_code: String, state: String).void
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
        # The physical shipping address.
        sig {
          returns(::Stripe::PaymentRecordService::ReportPaymentParams::ShippingDetails::Address)
         }
        attr_accessor :address

        # The shipping recipient's name.
        sig { returns(String) }
        attr_accessor :name

        # The shipping recipient's phone number.
        sig { returns(String) }
        attr_accessor :phone

        sig {
          params(address: ::Stripe::PaymentRecordService::ReportPaymentParams::ShippingDetails::Address, name: String, phone: String).void
         }
        def initialize(address: nil, name: nil, phone: nil); end
      end
      # The amount you intend to collect for this payment.
      sig { returns(::Stripe::PaymentRecordService::ReportPaymentParams::AmountRequested) }
      attr_accessor :amount_requested

      # Customer information for this payment.
      sig { returns(::Stripe::PaymentRecordService::ReportPaymentParams::CustomerDetails) }
      attr_accessor :customer_details

      # Indicates whether the customer was present in your checkout flow during this payment.
      sig { returns(String) }
      attr_accessor :customer_presence

      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(String) }
      attr_accessor :description

      # Specifies which fields in the response should be expanded.
      sig { returns(T::Array[String]) }
      attr_accessor :expand

      # Information about the payment attempt failure.
      sig { returns(::Stripe::PaymentRecordService::ReportPaymentParams::Failed) }
      attr_accessor :failed

      # Information about the payment attempt guarantee.
      sig { returns(::Stripe::PaymentRecordService::ReportPaymentParams::Guaranteed) }
      attr_accessor :guaranteed

      # When the reported payment was initiated. Measured in seconds since the Unix epoch.
      sig { returns(Integer) }
      attr_accessor :initiated_at

      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      sig { returns(T::Hash[String, String]) }
      attr_accessor :metadata

      # The outcome of the reported payment.
      sig { returns(String) }
      attr_accessor :outcome

      # Information about the Payment Method debited for this payment.
      sig { returns(::Stripe::PaymentRecordService::ReportPaymentParams::PaymentMethodDetails) }
      attr_accessor :payment_method_details

      # An opaque string for manual reconciliation of this payment, for example a check number or a payment processor ID.
      sig { returns(String) }
      attr_accessor :payment_reference

      # Shipping information for this payment.
      sig { returns(::Stripe::PaymentRecordService::ReportPaymentParams::ShippingDetails) }
      attr_accessor :shipping_details

      sig {
        params(amount_requested: ::Stripe::PaymentRecordService::ReportPaymentParams::AmountRequested, customer_details: ::Stripe::PaymentRecordService::ReportPaymentParams::CustomerDetails, customer_presence: String, description: String, expand: T::Array[String], failed: ::Stripe::PaymentRecordService::ReportPaymentParams::Failed, guaranteed: ::Stripe::PaymentRecordService::ReportPaymentParams::Guaranteed, initiated_at: Integer, metadata: T::Hash[String, String], outcome: String, payment_method_details: ::Stripe::PaymentRecordService::ReportPaymentParams::PaymentMethodDetails, payment_reference: String, shipping_details: ::Stripe::PaymentRecordService::ReportPaymentParams::ShippingDetails).void
       }
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
      ); end
    end
    # Report a new Payment Record. You may report a Payment Record as it is
    #  initialized and later report updates through the other report_* methods, or report Payment
    #  Records in a terminal state directly, through this method.
    sig {
      params(params: T.any(::Stripe::PaymentRecordService::ReportPaymentParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentRecord)
     }
    def report_payment(params = {}, opts = {}); end

    # Report a new payment attempt on the specified Payment Record. A new payment
    #  attempt can only be specified if all other payment attempts are canceled or failed.
    sig {
      params(id: String, params: T.any(::Stripe::PaymentRecordService::ReportPaymentAttemptParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentRecord)
     }
    def report_payment_attempt(id, params = {}, opts = {}); end

    # Report that the most recent payment attempt on the specified Payment Record
    #  was canceled.
    sig {
      params(id: String, params: T.any(::Stripe::PaymentRecordService::ReportPaymentAttemptCanceledParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentRecord)
     }
    def report_payment_attempt_canceled(id, params = {}, opts = {}); end

    # Report that the most recent payment attempt on the specified Payment Record
    #  failed or errored.
    sig {
      params(id: String, params: T.any(::Stripe::PaymentRecordService::ReportPaymentAttemptFailedParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentRecord)
     }
    def report_payment_attempt_failed(id, params = {}, opts = {}); end

    # Report that the most recent payment attempt on the specified Payment Record
    #  was guaranteed.
    sig {
      params(id: String, params: T.any(::Stripe::PaymentRecordService::ReportPaymentAttemptGuaranteedParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentRecord)
     }
    def report_payment_attempt_guaranteed(id, params = {}, opts = {}); end

    # Retrieves a Payment Record with the given ID
    sig {
      params(id: String, params: T.any(::Stripe::PaymentRecordService::RetrieveParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentRecord)
     }
    def retrieve(id, params = {}, opts = {}); end
  end
end