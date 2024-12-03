# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  # A payment link is a shareable URL that will take your customers to a hosted payment page. A payment link can be shared and used multiple times.
  #
  # When a customer opens a payment link it will open a new [checkout session](https://stripe.com/docs/api/checkout/sessions) to render the payment page. You can use [checkout session events](https://stripe.com/docs/api/events/types#event_types-checkout.session.completed) to track payments through payment links.
  #
  # Related guide: [Payment Links API](https://stripe.com/docs/payment-links)
  class PaymentLink < APIResource
    class AfterCompletion < Stripe::StripeObject
      class HostedConfirmation < Stripe::StripeObject
        # The custom message that is displayed to the customer after the purchase is complete.
        sig { returns(T.nilable(String)) }
        attr_reader :custom_message
      end
      class Redirect < Stripe::StripeObject
        # The URL the customer will be redirected to after the purchase is complete.
        sig { returns(String) }
        attr_reader :url
      end
      # Attribute for field hosted_confirmation
      sig { returns(HostedConfirmation) }
      attr_reader :hosted_confirmation
      # Attribute for field redirect
      sig { returns(Redirect) }
      attr_reader :redirect
      # The specified behavior after the purchase is complete.
      sig { returns(String) }
      attr_reader :type
    end
    class AutomaticTax < Stripe::StripeObject
      class Liability < Stripe::StripeObject
        # The connected account being referenced when `type` is `account`.
        sig { returns(T.any(String, Stripe::Account)) }
        attr_reader :account
        # Type of the account referenced.
        sig { returns(String) }
        attr_reader :type
      end
      # If `true`, tax will be calculated automatically using the customer's location.
      sig { returns(T::Boolean) }
      attr_reader :enabled
      # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
      sig { returns(T.nilable(Liability)) }
      attr_reader :liability
    end
    class ConsentCollection < Stripe::StripeObject
      class PaymentMethodReuseAgreement < Stripe::StripeObject
        # Determines the position and visibility of the payment method reuse agreement in the UI. When set to `auto`, Stripe's defaults will be used.
        #
        # When set to `hidden`, the payment method reuse agreement text will always be hidden in the UI.
        sig { returns(String) }
        attr_reader :position
      end
      # Settings related to the payment method reuse text shown in the Checkout UI.
      sig { returns(T.nilable(PaymentMethodReuseAgreement)) }
      attr_reader :payment_method_reuse_agreement
      # If set to `auto`, enables the collection of customer consent for promotional communications.
      sig { returns(T.nilable(String)) }
      attr_reader :promotions
      # If set to `required`, it requires cutomers to accept the terms of service before being able to pay. If set to `none`, customers won't be shown a checkbox to accept the terms of service.
      sig { returns(T.nilable(String)) }
      attr_reader :terms_of_service
    end
    class CustomField < Stripe::StripeObject
      class Dropdown < Stripe::StripeObject
        class Option < Stripe::StripeObject
          # The label for the option, displayed to the customer. Up to 100 characters.
          sig { returns(String) }
          attr_reader :label
          # The value for this option, not displayed to the customer, used by your integration to reconcile the option selected by the customer. Must be unique to this option, alphanumeric, and up to 100 characters.
          sig { returns(String) }
          attr_reader :value
        end
        # The options available for the customer to select. Up to 200 options allowed.
        sig { returns(T::Array[Option]) }
        attr_reader :options
      end
      class Label < Stripe::StripeObject
        # Custom text for the label, displayed to the customer. Up to 50 characters.
        sig { returns(T.nilable(String)) }
        attr_reader :custom
        # The type of the label.
        sig { returns(String) }
        attr_reader :type
      end
      class Numeric < Stripe::StripeObject
        # The maximum character length constraint for the customer's input.
        sig { returns(T.nilable(Integer)) }
        attr_reader :maximum_length
        # The minimum character length requirement for the customer's input.
        sig { returns(T.nilable(Integer)) }
        attr_reader :minimum_length
      end
      class Text < Stripe::StripeObject
        # The maximum character length constraint for the customer's input.
        sig { returns(T.nilable(Integer)) }
        attr_reader :maximum_length
        # The minimum character length requirement for the customer's input.
        sig { returns(T.nilable(Integer)) }
        attr_reader :minimum_length
      end
      # Attribute for field dropdown
      sig { returns(Dropdown) }
      attr_reader :dropdown
      # String of your choice that your integration can use to reconcile this field. Must be unique to this field, alphanumeric, and up to 200 characters.
      sig { returns(String) }
      attr_reader :key
      # Attribute for field label
      sig { returns(Label) }
      attr_reader :label
      # Attribute for field numeric
      sig { returns(Numeric) }
      attr_reader :numeric
      # Whether the customer is required to complete the field before completing the Checkout Session. Defaults to `false`.
      sig { returns(T::Boolean) }
      attr_reader :optional
      # Attribute for field text
      sig { returns(Text) }
      attr_reader :text
      # The type of the field.
      sig { returns(String) }
      attr_reader :type
    end
    class CustomText < Stripe::StripeObject
      class AfterSubmit < Stripe::StripeObject
        # Text may be up to 1200 characters in length.
        sig { returns(String) }
        attr_reader :message
      end
      class ShippingAddress < Stripe::StripeObject
        # Text may be up to 1200 characters in length.
        sig { returns(String) }
        attr_reader :message
      end
      class Submit < Stripe::StripeObject
        # Text may be up to 1200 characters in length.
        sig { returns(String) }
        attr_reader :message
      end
      class TermsOfServiceAcceptance < Stripe::StripeObject
        # Text may be up to 1200 characters in length.
        sig { returns(String) }
        attr_reader :message
      end
      # Custom text that should be displayed after the payment confirmation button.
      sig { returns(T.nilable(AfterSubmit)) }
      attr_reader :after_submit
      # Custom text that should be displayed alongside shipping address collection.
      sig { returns(T.nilable(ShippingAddress)) }
      attr_reader :shipping_address
      # Custom text that should be displayed alongside the payment confirmation button.
      sig { returns(T.nilable(Submit)) }
      attr_reader :submit
      # Custom text that should be displayed in place of the default terms of service agreement text.
      sig { returns(T.nilable(TermsOfServiceAcceptance)) }
      attr_reader :terms_of_service_acceptance
    end
    class InvoiceCreation < Stripe::StripeObject
      class InvoiceData < Stripe::StripeObject
        class CustomField < Stripe::StripeObject
          # The name of the custom field.
          sig { returns(String) }
          attr_reader :name
          # The value of the custom field.
          sig { returns(String) }
          attr_reader :value
        end
        class Issuer < Stripe::StripeObject
          # The connected account being referenced when `type` is `account`.
          sig { returns(T.any(String, Stripe::Account)) }
          attr_reader :account
          # Type of the account referenced.
          sig { returns(String) }
          attr_reader :type
        end
        class RenderingOptions < Stripe::StripeObject
          # How line-item prices and amounts will be displayed with respect to tax on invoice PDFs.
          sig { returns(T.nilable(String)) }
          attr_reader :amount_tax_display
        end
        # The account tax IDs associated with the invoice.
        sig { returns(T.nilable(T::Array[T.any(String, Stripe::TaxId)])) }
        attr_reader :account_tax_ids
        # A list of up to 4 custom fields to be displayed on the invoice.
        sig { returns(T.nilable(T::Array[CustomField])) }
        attr_reader :custom_fields
        # An arbitrary string attached to the object. Often useful for displaying to users.
        sig { returns(T.nilable(String)) }
        attr_reader :description
        # Footer to be displayed on the invoice.
        sig { returns(T.nilable(String)) }
        attr_reader :footer
        # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
        sig { returns(T.nilable(Issuer)) }
        attr_reader :issuer
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_reader :metadata
        # Options for invoice PDF rendering.
        sig { returns(T.nilable(RenderingOptions)) }
        attr_reader :rendering_options
      end
      # Enable creating an invoice on successful payment.
      sig { returns(T::Boolean) }
      attr_reader :enabled
      # Configuration for the invoice. Default invoice values will be used if unspecified.
      sig { returns(T.nilable(InvoiceData)) }
      attr_reader :invoice_data
    end
    class PaymentIntentData < Stripe::StripeObject
      # Indicates when the funds will be captured from the customer's account.
      sig { returns(T.nilable(String)) }
      attr_reader :capture_method
      # An arbitrary string attached to the object. Often useful for displaying to users.
      sig { returns(T.nilable(String)) }
      attr_reader :description
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that will set metadata on [Payment Intents](https://stripe.com/docs/api/payment_intents) generated from this payment link.
      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata
      # Indicates that you intend to make future payments with the payment method collected during checkout.
      sig { returns(T.nilable(String)) }
      attr_reader :setup_future_usage
      # For a non-card payment, information about the charge that appears on the customer's statement when this payment succeeds in creating a charge.
      sig { returns(T.nilable(String)) }
      attr_reader :statement_descriptor
      # For a card payment, information about the charge that appears on the customer's statement when this payment succeeds in creating a charge. Concatenated with the account's statement descriptor prefix to form the complete statement descriptor.
      sig { returns(T.nilable(String)) }
      attr_reader :statement_descriptor_suffix
      # A string that identifies the resulting payment as part of a group. See the PaymentIntents [use case for connected accounts](https://stripe.com/docs/connect/separate-charges-and-transfers) for details.
      sig { returns(T.nilable(String)) }
      attr_reader :transfer_group
    end
    class PhoneNumberCollection < Stripe::StripeObject
      # If `true`, a phone number will be collected during checkout.
      sig { returns(T::Boolean) }
      attr_reader :enabled
    end
    class Restrictions < Stripe::StripeObject
      class CompletedSessions < Stripe::StripeObject
        # The current number of checkout sessions that have been completed on the payment link which count towards the `completed_sessions` restriction to be met.
        sig { returns(Integer) }
        attr_reader :count
        # The maximum number of checkout sessions that can be completed for the `completed_sessions` restriction to be met.
        sig { returns(Integer) }
        attr_reader :limit
      end
      # Attribute for field completed_sessions
      sig { returns(CompletedSessions) }
      attr_reader :completed_sessions
    end
    class ShippingAddressCollection < Stripe::StripeObject
      # An array of two-letter ISO country codes representing which countries Checkout should provide as options for shipping locations. Unsupported country codes: `AS, CX, CC, CU, HM, IR, KP, MH, FM, NF, MP, PW, SD, SY, UM, VI`.
      sig { returns(T::Array[String]) }
      attr_reader :allowed_countries
    end
    class ShippingOption < Stripe::StripeObject
      # A non-negative integer in cents representing how much to charge.
      sig { returns(Integer) }
      attr_reader :shipping_amount
      # The ID of the Shipping Rate to use for this shipping option.
      sig { returns(T.any(String, Stripe::ShippingRate)) }
      attr_reader :shipping_rate
    end
    class SubscriptionData < Stripe::StripeObject
      class InvoiceSettings < Stripe::StripeObject
        class Issuer < Stripe::StripeObject
          # The connected account being referenced when `type` is `account`.
          sig { returns(T.any(String, Stripe::Account)) }
          attr_reader :account
          # Type of the account referenced.
          sig { returns(String) }
          attr_reader :type
        end
        # Attribute for field issuer
        sig { returns(Issuer) }
        attr_reader :issuer
      end
      class TrialSettings < Stripe::StripeObject
        class EndBehavior < Stripe::StripeObject
          # Indicates how the subscription should change when the trial ends if the user did not provide a payment method.
          sig { returns(String) }
          attr_reader :missing_payment_method
        end
        # Defines how a subscription behaves when a free trial ends.
        sig { returns(EndBehavior) }
        attr_reader :end_behavior
      end
      # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
      sig { returns(T.nilable(String)) }
      attr_reader :description
      # Attribute for field invoice_settings
      sig { returns(InvoiceSettings) }
      attr_reader :invoice_settings
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that will set metadata on [Subscriptions](https://stripe.com/docs/api/subscriptions) generated from this payment link.
      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata
      # Integer representing the number of trial period days before the customer is charged for the first time.
      sig { returns(T.nilable(Integer)) }
      attr_reader :trial_period_days
      # Settings related to subscription trials.
      sig { returns(T.nilable(TrialSettings)) }
      attr_reader :trial_settings
    end
    class TaxIdCollection < Stripe::StripeObject
      # Indicates whether tax ID collection is enabled for the session.
      sig { returns(T::Boolean) }
      attr_reader :enabled
      # Attribute for field required
      sig { returns(String) }
      attr_reader :required
    end
    class TransferData < Stripe::StripeObject
      # The amount in cents (or local equivalent) that will be transferred to the destination account. By default, the entire amount is transferred to the destination.
      sig { returns(T.nilable(Integer)) }
      attr_reader :amount
      # The connected account receiving the transfer.
      sig { returns(T.any(String, Stripe::Account)) }
      attr_reader :destination
    end
    # Whether the payment link's `url` is active. If `false`, customers visiting the URL will be shown a page saying that the link has been deactivated.
    sig { returns(T::Boolean) }
    attr_reader :active

    # Attribute for field after_completion
    sig { returns(AfterCompletion) }
    attr_reader :after_completion

    # Whether user redeemable promotion codes are enabled.
    sig { returns(T::Boolean) }
    attr_reader :allow_promotion_codes

    # The ID of the Connect application that created the Payment Link.
    sig { returns(T.nilable(T.any(String, Stripe::Application))) }
    attr_reader :application

    # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account.
    sig { returns(T.nilable(Integer)) }
    attr_reader :application_fee_amount

    # This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account.
    sig { returns(T.nilable(Float)) }
    attr_reader :application_fee_percent

    # Attribute for field automatic_tax
    sig { returns(AutomaticTax) }
    attr_reader :automatic_tax

    # Configuration for collecting the customer's billing address. Defaults to `auto`.
    sig { returns(String) }
    attr_reader :billing_address_collection

    # When set, provides configuration to gather active consent from customers.
    sig { returns(T.nilable(ConsentCollection)) }
    attr_reader :consent_collection

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    sig { returns(String) }
    attr_reader :currency

    # Collect additional information from your customer using custom fields. Up to 3 fields are supported.
    sig { returns(T::Array[CustomField]) }
    attr_reader :custom_fields

    # Attribute for field custom_text
    sig { returns(CustomText) }
    attr_reader :custom_text

    # Configuration for Customer creation during checkout.
    sig { returns(String) }
    attr_reader :customer_creation

    # Unique identifier for the object.
    sig { returns(String) }
    attr_reader :id

    # The custom message to be displayed to a customer when a payment link is no longer active.
    sig { returns(T.nilable(String)) }
    attr_reader :inactive_message

    # Configuration for creating invoice for payment mode payment links.
    sig { returns(T.nilable(InvoiceCreation)) }
    attr_reader :invoice_creation

    # The line items representing what is being sold.
    sig { returns(Stripe::ListObject) }
    attr_reader :line_items

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    sig { returns(T::Boolean) }
    attr_reader :livemode

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    sig { returns(T::Hash[String, String]) }
    attr_reader :metadata

    # String representing the object's type. Objects of the same type share the same value.
    sig { returns(String) }
    attr_reader :object

    # The account on behalf of which to charge. See the [Connect documentation](https://support.stripe.com/questions/sending-invoices-on-behalf-of-connected-accounts) for details.
    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    attr_reader :on_behalf_of

    # Indicates the parameters to be passed to PaymentIntent creation during checkout.
    sig { returns(T.nilable(PaymentIntentData)) }
    attr_reader :payment_intent_data

    # Configuration for collecting a payment method during checkout. Defaults to `always`.
    sig { returns(String) }
    attr_reader :payment_method_collection

    # The list of payment method types that customers can use. When `null`, Stripe will dynamically show relevant payment methods you've enabled in your [payment method settings](https://dashboard.stripe.com/settings/payment_methods).
    sig { returns(T.nilable(T::Array[String])) }
    attr_reader :payment_method_types

    # Attribute for field phone_number_collection
    sig { returns(PhoneNumberCollection) }
    attr_reader :phone_number_collection

    # Settings that restrict the usage of a payment link.
    sig { returns(T.nilable(Restrictions)) }
    attr_reader :restrictions

    # Configuration for collecting the customer's shipping address.
    sig { returns(T.nilable(ShippingAddressCollection)) }
    attr_reader :shipping_address_collection

    # The shipping rate options applied to the session.
    sig { returns(T::Array[ShippingOption]) }
    attr_reader :shipping_options

    # Indicates the type of transaction being performed which customizes relevant text on the page, such as the submit button.
    sig { returns(String) }
    attr_reader :submit_type

    # When creating a subscription, the specified configuration data will be used. There must be at least one line item with a recurring price to use `subscription_data`.
    sig { returns(T.nilable(SubscriptionData)) }
    attr_reader :subscription_data

    # Attribute for field tax_id_collection
    sig { returns(TaxIdCollection) }
    attr_reader :tax_id_collection

    # The account (if any) the payments will be attributed to for tax reporting, and where funds from each payment will be transferred to.
    sig { returns(T.nilable(TransferData)) }
    attr_reader :transfer_data

    # The public URL that can be shared with customers.
    sig { returns(String) }
    attr_reader :url
  end
end