# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Checkout
    # A Checkout Session represents your customer's session as they pay for
    # one-time purchases or subscriptions through [Checkout](https://stripe.com/docs/payments/checkout)
    # or [Payment Links](https://stripe.com/docs/payments/payment-links). We recommend creating a
    # new Session each time your customer attempts to pay.
    #
    # Once payment is successful, the Checkout Session will contain a reference
    # to the [Customer](https://stripe.com/docs/api/customers), and either the successful
    # [PaymentIntent](https://stripe.com/docs/api/payment_intents) or an active
    # [Subscription](https://stripe.com/docs/api/subscriptions).
    #
    # You can create a Checkout Session on your server and redirect to its URL
    # to begin Checkout.
    #
    # Related guide: [Checkout quickstart](https://stripe.com/docs/checkout/quickstart)
    class Session < APIResource
      extend Stripe::APIOperations::Create
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "checkout.session"
      def self.object_name
        "checkout.session"
      end

      class AdaptivePricing < Stripe::StripeObject
        attr_reader :enabled
      end

      class AfterExpiration < Stripe::StripeObject
        class Recovery < Stripe::StripeObject
          attr_reader :allow_promotion_codes, :enabled, :expires_at, :url
        end
        attr_reader :recovery
      end

      class AutomaticTax < Stripe::StripeObject
        class Liability < Stripe::StripeObject
          attr_reader :account, :type
        end
        attr_reader :enabled, :liability, :status
      end

      class CollectedInformation < Stripe::StripeObject
        class ShippingDetails < Stripe::StripeObject
          class Address < Stripe::StripeObject
            attr_reader :city, :country, :line1, :line2, :postal_code, :state
          end
          attr_reader :address, :carrier, :name, :phone, :tracking_number
        end

        class TaxId < Stripe::StripeObject
          attr_reader :type, :value
        end
        attr_reader :business_name, :email, :phone, :shipping_details, :tax_ids
      end

      class Consent < Stripe::StripeObject
        attr_reader :promotions, :terms_of_service
      end

      class ConsentCollection < Stripe::StripeObject
        class PaymentMethodReuseAgreement < Stripe::StripeObject
          attr_reader :position
        end
        attr_reader :payment_method_reuse_agreement, :promotions, :terms_of_service
      end

      class CurrencyConversion < Stripe::StripeObject
        attr_reader :amount_subtotal, :amount_total, :fx_rate, :source_currency
      end

      class CustomField < Stripe::StripeObject
        class Dropdown < Stripe::StripeObject
          class Option < Stripe::StripeObject
            attr_reader :label, :value
          end
          attr_reader :default_value, :options, :value
        end

        class Label < Stripe::StripeObject
          attr_reader :custom, :type
        end

        class Numeric < Stripe::StripeObject
          attr_reader :default_value, :maximum_length, :minimum_length, :value
        end

        class Text < Stripe::StripeObject
          attr_reader :default_value, :maximum_length, :minimum_length, :value
        end
        attr_reader :dropdown, :key, :label, :numeric, :optional, :text, :type
      end

      class CustomText < Stripe::StripeObject
        class AfterSubmit < Stripe::StripeObject
          attr_reader :message
        end

        class ShippingAddress < Stripe::StripeObject
          attr_reader :message
        end

        class Submit < Stripe::StripeObject
          attr_reader :message
        end

        class TermsOfServiceAcceptance < Stripe::StripeObject
          attr_reader :message
        end
        attr_reader :after_submit, :shipping_address, :submit, :terms_of_service_acceptance
      end

      class CustomerDetails < Stripe::StripeObject
        class Address < Stripe::StripeObject
          attr_reader :city, :country, :line1, :line2, :postal_code, :state
        end

        class TaxId < Stripe::StripeObject
          attr_reader :type, :value
        end
        attr_reader :address, :email, :name, :phone, :tax_exempt, :tax_ids
      end

      class InvoiceCreation < Stripe::StripeObject
        class InvoiceData < Stripe::StripeObject
          class CustomField < Stripe::StripeObject
            attr_reader :name, :value
          end

          class Issuer < Stripe::StripeObject
            attr_reader :account, :type
          end

          class RenderingOptions < Stripe::StripeObject
            attr_reader :amount_tax_display
          end
          attr_reader :account_tax_ids, :custom_fields, :description, :footer, :issuer, :metadata, :rendering_options
        end
        attr_reader :enabled, :invoice_data
      end

      class PaymentMethodConfigurationDetails < Stripe::StripeObject
        attr_reader :id, :parent
      end

      class PaymentMethodOptions < Stripe::StripeObject
        class AcssDebit < Stripe::StripeObject
          class MandateOptions < Stripe::StripeObject
            attr_reader :custom_mandate_url, :default_for, :interval_description, :payment_schedule, :transaction_type
          end
          attr_reader :currency, :mandate_options, :setup_future_usage, :verification_method
        end

        class Affirm < Stripe::StripeObject
          attr_reader :setup_future_usage
        end

        class AfterpayClearpay < Stripe::StripeObject
          attr_reader :setup_future_usage
        end

        class Alipay < Stripe::StripeObject
          attr_reader :setup_future_usage
        end

        class AmazonPay < Stripe::StripeObject
          attr_reader :setup_future_usage
        end

        class AuBecsDebit < Stripe::StripeObject
          attr_reader :setup_future_usage
        end

        class BacsDebit < Stripe::StripeObject
          class MandateOptions < Stripe::StripeObject; end
          attr_reader :mandate_options, :setup_future_usage
        end

        class Bancontact < Stripe::StripeObject
          attr_reader :setup_future_usage
        end

        class Boleto < Stripe::StripeObject
          attr_reader :expires_after_days, :setup_future_usage
        end

        class Card < Stripe::StripeObject
          class Installments < Stripe::StripeObject
            attr_reader :enabled
          end
          attr_reader :installments, :request_decremental_authorization, :request_extended_authorization, :request_incremental_authorization, :request_multicapture, :request_overcapture, :request_three_d_secure, :setup_future_usage, :statement_descriptor_suffix_kana, :statement_descriptor_suffix_kanji
        end

        class Cashapp < Stripe::StripeObject
          attr_reader :setup_future_usage
        end

        class CustomerBalance < Stripe::StripeObject
          class BankTransfer < Stripe::StripeObject
            class EuBankTransfer < Stripe::StripeObject
              attr_reader :country
            end
            attr_reader :eu_bank_transfer, :requested_address_types, :type
          end
          attr_reader :bank_transfer, :funding_type, :setup_future_usage
        end

        class Eps < Stripe::StripeObject
          attr_reader :setup_future_usage
        end

        class Fpx < Stripe::StripeObject
          attr_reader :setup_future_usage
        end

        class Giropay < Stripe::StripeObject
          attr_reader :setup_future_usage
        end

        class Grabpay < Stripe::StripeObject
          attr_reader :setup_future_usage
        end

        class Ideal < Stripe::StripeObject
          attr_reader :setup_future_usage
        end

        class KakaoPay < Stripe::StripeObject
          attr_reader :capture_method, :setup_future_usage
        end

        class Klarna < Stripe::StripeObject
          attr_reader :setup_future_usage
        end

        class Konbini < Stripe::StripeObject
          attr_reader :expires_after_days, :setup_future_usage
        end

        class KrCard < Stripe::StripeObject
          attr_reader :capture_method, :setup_future_usage
        end

        class Link < Stripe::StripeObject
          attr_reader :setup_future_usage
        end

        class Mobilepay < Stripe::StripeObject
          attr_reader :setup_future_usage
        end

        class Multibanco < Stripe::StripeObject
          attr_reader :setup_future_usage
        end

        class NaverPay < Stripe::StripeObject
          attr_reader :capture_method
        end

        class Oxxo < Stripe::StripeObject
          attr_reader :expires_after_days, :setup_future_usage
        end

        class P24 < Stripe::StripeObject
          attr_reader :setup_future_usage
        end

        class Payco < Stripe::StripeObject
          attr_reader :capture_method
        end

        class Paynow < Stripe::StripeObject
          attr_reader :setup_future_usage
        end

        class Paypal < Stripe::StripeObject
          attr_reader :capture_method, :preferred_locale, :reference, :setup_future_usage, :subsellers
        end

        class Payto < Stripe::StripeObject
          class MandateOptions < Stripe::StripeObject
            attr_reader :amount, :amount_type, :end_date, :payment_schedule, :payments_per_period, :purpose, :start_date
          end
          attr_reader :mandate_options, :setup_future_usage
        end

        class Pix < Stripe::StripeObject
          attr_reader :expires_after_seconds
        end

        class RevolutPay < Stripe::StripeObject
          attr_reader :setup_future_usage
        end

        class SamsungPay < Stripe::StripeObject
          attr_reader :capture_method
        end

        class SepaDebit < Stripe::StripeObject
          class MandateOptions < Stripe::StripeObject; end
          attr_reader :mandate_options, :setup_future_usage
        end

        class Sofort < Stripe::StripeObject
          attr_reader :setup_future_usage
        end

        class Swish < Stripe::StripeObject
          attr_reader :reference
        end

        class UsBankAccount < Stripe::StripeObject
          class FinancialConnections < Stripe::StripeObject
            class Filters < Stripe::StripeObject
              attr_reader :account_subcategories, :institution
            end

            class ManualEntry < Stripe::StripeObject
              attr_reader :mode
            end
            attr_reader :filters, :manual_entry, :permissions, :prefetch, :return_url
          end
          attr_reader :financial_connections, :setup_future_usage, :verification_method
        end
        attr_reader :acss_debit, :affirm, :afterpay_clearpay, :alipay, :amazon_pay, :au_becs_debit, :bacs_debit, :bancontact, :boleto, :card, :cashapp, :customer_balance, :eps, :fpx, :giropay, :grabpay, :ideal, :kakao_pay, :klarna, :konbini, :kr_card, :link, :mobilepay, :multibanco, :naver_pay, :oxxo, :p24, :payco, :paynow, :paypal, :payto, :pix, :revolut_pay, :samsung_pay, :sepa_debit, :sofort, :swish, :us_bank_account
      end

      class Permissions < Stripe::StripeObject
        class Update < Stripe::StripeObject
          attr_reader :line_items, :shipping_details
        end
        attr_reader :update
      end

      class PhoneNumberCollection < Stripe::StripeObject
        attr_reader :enabled
      end

      class SavedPaymentMethodOptions < Stripe::StripeObject
        attr_reader :allow_redisplay_filters, :payment_method_remove, :payment_method_save
      end

      class ShippingAddressCollection < Stripe::StripeObject
        attr_reader :allowed_countries
      end

      class ShippingCost < Stripe::StripeObject
        class Tax < Stripe::StripeObject
          attr_reader :amount, :rate, :taxability_reason, :taxable_amount
        end
        attr_reader :amount_subtotal, :amount_tax, :amount_total, :shipping_rate, :taxes
      end

      class ShippingDetails < Stripe::StripeObject
        class Address < Stripe::StripeObject
          attr_reader :city, :country, :line1, :line2, :postal_code, :state
        end
        attr_reader :address, :carrier, :name, :phone, :tracking_number
      end

      class ShippingOption < Stripe::StripeObject
        attr_reader :shipping_amount, :shipping_rate
      end

      class TaxIdCollection < Stripe::StripeObject
        attr_reader :enabled, :required
      end

      class TotalDetails < Stripe::StripeObject
        class Breakdown < Stripe::StripeObject
          class Discount < Stripe::StripeObject
            attr_reader :amount, :discount
          end

          class Tax < Stripe::StripeObject
            attr_reader :amount, :rate, :taxability_reason, :taxable_amount
          end
          attr_reader :discounts, :taxes
        end
        attr_reader :amount_discount, :amount_shipping, :amount_tax, :breakdown
      end
      # Settings for price localization with [Adaptive Pricing](https://docs.stripe.com/payments/checkout/adaptive-pricing).
      attr_reader :adaptive_pricing
      # When set, provides configuration for actions to take if this Checkout Session expires.
      attr_reader :after_expiration
      # Enables user redeemable promotion codes.
      attr_reader :allow_promotion_codes
      # Total of all items before discounts or taxes are applied.
      attr_reader :amount_subtotal
      # Total of all items after discounts and taxes are applied.
      attr_reader :amount_total
      # Attribute for field automatic_tax
      attr_reader :automatic_tax
      # Describes whether Checkout should collect the customer's billing address. Defaults to `auto`.
      attr_reader :billing_address_collection
      # If set, Checkout displays a back button and customers will be directed to this URL if they decide to cancel payment and return to your website.
      attr_reader :cancel_url
      # A unique string to reference the Checkout Session. This can be a
      # customer ID, a cart ID, or similar, and can be used to reconcile the
      # Session with your internal systems.
      attr_reader :client_reference_id
      # The client secret of the Session. Use this with [initCustomCheckout](https://stripe.com/docs/js/custom_checkout/init) on your front end.
      attr_reader :client_secret
      # Information about the customer collected within the Checkout Session.
      attr_reader :collected_information
      # Results of `consent_collection` for this session.
      attr_reader :consent
      # When set, provides configuration for the Checkout Session to gather active consent from customers.
      attr_reader :consent_collection
      # Time at which the object was created. Measured in seconds since the Unix epoch.
      attr_reader :created
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_reader :currency
      # Currency conversion details for [Adaptive Pricing](https://docs.stripe.com/payments/checkout/adaptive-pricing) sessions
      attr_reader :currency_conversion
      # Collect additional information from your customer using custom fields. Up to 3 fields are supported.
      attr_reader :custom_fields
      # Attribute for field custom_text
      attr_reader :custom_text
      # The ID of the customer for this Session.
      # For Checkout Sessions in `subscription` mode or Checkout Sessions with `customer_creation` set as `always` in `payment` mode, Checkout
      # will create a new customer object based on information provided
      # during the payment flow unless an existing customer was provided when
      # the Session was created.
      attr_reader :customer
      # Configure whether a Checkout Session creates a Customer when the Checkout Session completes.
      attr_reader :customer_creation
      # The customer details including the customer's tax exempt status and the customer's tax IDs. Customer's address details are not present on Sessions in `setup` mode.
      attr_reader :customer_details
      # If provided, this value will be used when the Customer object is created.
      # If not provided, customers will be asked to enter their email address.
      # Use this parameter to prefill customer data if you already have an email
      # on file. To access information about the customer once the payment flow is
      # complete, use the `customer` attribute.
      attr_reader :customer_email
      # The timestamp at which the Checkout Session will expire.
      attr_reader :expires_at
      # Unique identifier for the object.
      attr_reader :id
      # ID of the invoice created by the Checkout Session, if it exists.
      attr_reader :invoice
      # Details on the state of invoice creation for the Checkout Session.
      attr_reader :invoice_creation
      # The line items purchased by the customer.
      attr_reader :line_items
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # The IETF language tag of the locale Checkout is displayed in. If blank or `auto`, the browser's locale is used.
      attr_reader :locale
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # The mode of the Checkout Session.
      attr_reader :mode
      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object
      # The ID of the PaymentIntent for Checkout Sessions in `payment` mode. You can't confirm or cancel the PaymentIntent for a Checkout Session. To cancel, [expire the Checkout Session](https://stripe.com/docs/api/checkout/sessions/expire) instead.
      attr_reader :payment_intent
      # The ID of the Payment Link that created this Session.
      attr_reader :payment_link
      # Configure whether a Checkout Session should collect a payment method. Defaults to `always`.
      attr_reader :payment_method_collection
      # Information about the payment method configuration used for this Checkout session if using dynamic payment methods.
      attr_reader :payment_method_configuration_details
      # Payment-method-specific configuration for the PaymentIntent or SetupIntent of this CheckoutSession.
      attr_reader :payment_method_options
      # A list of the types of payment methods (e.g. card) this Checkout
      # Session is allowed to accept.
      attr_reader :payment_method_types
      # The payment status of the Checkout Session, one of `paid`, `unpaid`, or `no_payment_required`.
      # You can use this value to decide when to fulfill your customer's order.
      attr_reader :payment_status
      # This property is used to set up permissions for various actions (e.g., update) on the CheckoutSession object.
      #
      # For specific permissions, please refer to their dedicated subsections, such as `permissions.update.shipping_details`.
      attr_reader :permissions
      # Attribute for field phone_number_collection
      attr_reader :phone_number_collection
      # The ID of the original expired Checkout Session that triggered the recovery flow.
      attr_reader :recovered_from
      # This parameter applies to `ui_mode: embedded`. Learn more about the [redirect behavior](https://stripe.com/docs/payments/checkout/custom-success-page?payment-ui=embedded-form) of embedded sessions. Defaults to `always`.
      attr_reader :redirect_on_completion
      # Applies to Checkout Sessions with `ui_mode: embedded` or `ui_mode: custom`. The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method's app or site.
      attr_reader :return_url
      # Controls saved payment method settings for the session. Only available in `payment` and `subscription` mode.
      attr_reader :saved_payment_method_options
      # The ID of the SetupIntent for Checkout Sessions in `setup` mode. You can't confirm or cancel the SetupIntent for a Checkout Session. To cancel, [expire the Checkout Session](https://stripe.com/docs/api/checkout/sessions/expire) instead.
      attr_reader :setup_intent
      # When set, provides configuration for Checkout to collect a shipping address from a customer.
      attr_reader :shipping_address_collection
      # The details of the customer cost of shipping, including the customer chosen ShippingRate.
      attr_reader :shipping_cost
      # Shipping information for this Checkout Session.
      attr_reader :shipping_details
      # The shipping rate options applied to this Session.
      attr_reader :shipping_options
      # The status of the Checkout Session, one of `open`, `complete`, or `expired`.
      attr_reader :status
      # Describes the type of transaction being performed by Checkout in order to customize
      # relevant text on the page, such as the submit button. `submit_type` can only be
      # specified on Checkout Sessions in `payment` mode. If blank or `auto`, `pay` is used.
      attr_reader :submit_type
      # The ID of the subscription for Checkout Sessions in `subscription` mode.
      attr_reader :subscription
      # The URL the customer will be directed to after the payment or
      # subscription creation is successful.
      attr_reader :success_url
      # Attribute for field tax_id_collection
      attr_reader :tax_id_collection
      # Tax and discount details for the computed total amount.
      attr_reader :total_details
      # The UI mode of the Session. Defaults to `hosted`.
      attr_reader :ui_mode
      # The URL to the Checkout Session. Redirect customers to this URL to take them to Checkout. If you’re using [Custom Domains](https://stripe.com/docs/payments/checkout/custom-domains), the URL will use your subdomain. Otherwise, it’ll use `checkout.stripe.com.`
      # This value is only present when the session is active.
      attr_reader :url

      # Creates a Session object.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/checkout/sessions",
          params: params,
          opts: opts
        )
      end

      # A Session can be expired when it is in one of these statuses: open
      #
      # After it expires, a customer can't complete a Session and customers loading the Session see a message saying the Session is expired.
      def expire(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/checkout/sessions/%<session>s/expire", { session: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # A Session can be expired when it is in one of these statuses: open
      #
      # After it expires, a customer can't complete a Session and customers loading the Session see a message saying the Session is expired.
      def self.expire(session, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/checkout/sessions/%<session>s/expire", { session: CGI.escape(session) }),
          params: params,
          opts: opts
        )
      end

      # Returns a list of Checkout Sessions.
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/checkout/sessions",
          params: filters,
          opts: opts
        )
      end

      # When retrieving a Checkout Session, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
      def list_line_items(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: format("/v1/checkout/sessions/%<session>s/line_items", { session: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # When retrieving a Checkout Session, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
      def self.list_line_items(session, params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: format("/v1/checkout/sessions/%<session>s/line_items", { session: CGI.escape(session) }),
          params: params,
          opts: opts
        )
      end

      # Updates a Session object.
      def self.update(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/checkout/sessions/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
