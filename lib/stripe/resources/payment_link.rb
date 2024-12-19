# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  # A payment link is a shareable URL that will take your customers to a hosted payment page. A payment link can be shared and used multiple times.
  #
  # When a customer opens a payment link it will open a new [checkout session](https://stripe.com/docs/api/checkout/sessions) to render the payment page. You can use [checkout session events](https://stripe.com/docs/api/events/types#event_types-checkout.session.completed) to track payments through payment links.
  #
  # Related guide: [Payment Links API](https://stripe.com/docs/payment-links)
  class PaymentLink < APIResource
    extend Stripe::APIOperations::Create
    extend Stripe::APIOperations::List
    include Stripe::APIOperations::Save

    OBJECT_NAME = "payment_link"
    def self.object_name
      "payment_link"
    end

    class AfterCompletion < Stripe::StripeObject
      class HostedConfirmation < Stripe::StripeObject
        attr_reader :custom_message
      end

      class Redirect < Stripe::StripeObject
        attr_reader :url
      end
      attr_reader :hosted_confirmation, :redirect, :type
    end

    class AutomaticTax < Stripe::StripeObject
      class Liability < Stripe::StripeObject
        attr_reader :account, :type
      end
      attr_reader :enabled, :liability
    end

    class ConsentCollection < Stripe::StripeObject
      class PaymentMethodReuseAgreement < Stripe::StripeObject
        attr_reader :position
      end
      attr_reader :payment_method_reuse_agreement, :promotions, :terms_of_service
    end

    class CustomField < Stripe::StripeObject
      class Dropdown < Stripe::StripeObject
        class Option < Stripe::StripeObject
          attr_reader :label, :value
        end
        attr_reader :options
      end

      class Label < Stripe::StripeObject
        attr_reader :custom, :type
      end

      class Numeric < Stripe::StripeObject
        attr_reader :maximum_length, :minimum_length
      end

      class Text < Stripe::StripeObject
        attr_reader :maximum_length, :minimum_length
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

    class PaymentIntentData < Stripe::StripeObject
      attr_reader :capture_method, :description, :metadata, :setup_future_usage, :statement_descriptor, :statement_descriptor_suffix, :transfer_group
    end

    class PhoneNumberCollection < Stripe::StripeObject
      attr_reader :enabled
    end

    class Restrictions < Stripe::StripeObject
      class CompletedSessions < Stripe::StripeObject
        attr_reader :count, :limit
      end
      attr_reader :completed_sessions
    end

    class ShippingAddressCollection < Stripe::StripeObject
      attr_reader :allowed_countries
    end

    class ShippingOption < Stripe::StripeObject
      attr_reader :shipping_amount, :shipping_rate
    end

    class SubscriptionData < Stripe::StripeObject
      class InvoiceSettings < Stripe::StripeObject
        class Issuer < Stripe::StripeObject
          attr_reader :account, :type
        end
        attr_reader :issuer
      end

      class TrialSettings < Stripe::StripeObject
        class EndBehavior < Stripe::StripeObject
          attr_reader :missing_payment_method
        end
        attr_reader :end_behavior
      end
      attr_reader :description, :invoice_settings, :metadata, :trial_period_days, :trial_settings
    end

    class TaxIdCollection < Stripe::StripeObject
      attr_reader :enabled, :required
    end

    class TransferData < Stripe::StripeObject
      attr_reader :amount, :destination
    end
    # Whether the payment link's `url` is active. If `false`, customers visiting the URL will be shown a page saying that the link has been deactivated.
    attr_reader :active
    # Attribute for field after_completion
    attr_reader :after_completion
    # Whether user redeemable promotion codes are enabled.
    attr_reader :allow_promotion_codes
    # The ID of the Connect application that created the Payment Link.
    attr_reader :application
    # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account.
    attr_reader :application_fee_amount
    # This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account.
    attr_reader :application_fee_percent
    # Attribute for field automatic_tax
    attr_reader :automatic_tax
    # Configuration for collecting the customer's billing address. Defaults to `auto`.
    attr_reader :billing_address_collection
    # When set, provides configuration to gather active consent from customers.
    attr_reader :consent_collection
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    # Collect additional information from your customer using custom fields. Up to 3 fields are supported.
    attr_reader :custom_fields
    # Attribute for field custom_text
    attr_reader :custom_text
    # Configuration for Customer creation during checkout.
    attr_reader :customer_creation
    # Unique identifier for the object.
    attr_reader :id
    # The custom message to be displayed to a customer when a payment link is no longer active.
    attr_reader :inactive_message
    # Configuration for creating invoice for payment mode payment links.
    attr_reader :invoice_creation
    # The line items representing what is being sold.
    attr_reader :line_items
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    # The account on behalf of which to charge. See the [Connect documentation](https://support.stripe.com/questions/sending-invoices-on-behalf-of-connected-accounts) for details.
    attr_reader :on_behalf_of
    # Indicates the parameters to be passed to PaymentIntent creation during checkout.
    attr_reader :payment_intent_data
    # Configuration for collecting a payment method during checkout. Defaults to `always`.
    attr_reader :payment_method_collection
    # The list of payment method types that customers can use. When `null`, Stripe will dynamically show relevant payment methods you've enabled in your [payment method settings](https://dashboard.stripe.com/settings/payment_methods).
    attr_reader :payment_method_types
    # Attribute for field phone_number_collection
    attr_reader :phone_number_collection
    # Settings that restrict the usage of a payment link.
    attr_reader :restrictions
    # Configuration for collecting the customer's shipping address.
    attr_reader :shipping_address_collection
    # The shipping rate options applied to the session.
    attr_reader :shipping_options
    # Indicates the type of transaction being performed which customizes relevant text on the page, such as the submit button.
    attr_reader :submit_type
    # When creating a subscription, the specified configuration data will be used. There must be at least one line item with a recurring price to use `subscription_data`.
    attr_reader :subscription_data
    # Attribute for field tax_id_collection
    attr_reader :tax_id_collection
    # The account (if any) the payments will be attributed to for tax reporting, and where funds from each payment will be transferred to.
    attr_reader :transfer_data
    # The public URL that can be shared with customers.
    attr_reader :url

    # Creates a payment link.
    def self.create(params = {}, opts = {})
      request_stripe_object(method: :post, path: "/v1/payment_links", params: params, opts: opts)
    end

    # Returns a list of your payment links.
    def self.list(params = {}, opts = {})
      request_stripe_object(method: :get, path: "/v1/payment_links", params: params, opts: opts)
    end

    # When retrieving a payment link, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    def list_line_items(params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/payment_links/%<payment_link>s/line_items", { payment_link: CGI.escape(self["id"]) }),
        params: params,
        opts: opts
      )
    end

    # When retrieving a payment link, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    def self.list_line_items(payment_link, params = {}, opts = {})
      request_stripe_object(
        method: :get,
        path: format("/v1/payment_links/%<payment_link>s/line_items", { payment_link: CGI.escape(payment_link) }),
        params: params,
        opts: opts
      )
    end

    # Updates a payment link.
    def self.update(id, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_links/%<id>s", { id: CGI.escape(id) }),
        params: params,
        opts: opts
      )
    end
  end
end
