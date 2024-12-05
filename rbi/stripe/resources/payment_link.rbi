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
        sig { returns(T.nilable(String)) }
        attr_reader :custom_message
      end
      class Redirect < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :url
      end
      sig { returns(HostedConfirmation) }
      attr_reader :hosted_confirmation
      sig { returns(Redirect) }
      attr_reader :redirect
      sig { returns(String) }
      attr_reader :type
    end
    class AutomaticTax < Stripe::StripeObject
      class Liability < Stripe::StripeObject
        sig { returns(T.any(String, Stripe::Account)) }
        attr_reader :account
        sig { returns(String) }
        attr_reader :type
      end
      sig { returns(T::Boolean) }
      attr_reader :enabled
      sig { returns(T.nilable(Liability)) }
      attr_reader :liability
    end
    class ConsentCollection < Stripe::StripeObject
      class PaymentMethodReuseAgreement < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :position
      end
      sig { returns(T.nilable(PaymentMethodReuseAgreement)) }
      attr_reader :payment_method_reuse_agreement
      sig { returns(T.nilable(String)) }
      attr_reader :promotions
      sig { returns(T.nilable(String)) }
      attr_reader :terms_of_service
    end
    class CustomField < Stripe::StripeObject
      class Dropdown < Stripe::StripeObject
        class Option < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :label
          sig { returns(String) }
          attr_reader :value
        end
        sig { returns(T::Array[Option]) }
        attr_reader :options
      end
      class Label < Stripe::StripeObject
        sig { returns(T.nilable(String)) }
        attr_reader :custom
        sig { returns(String) }
        attr_reader :type
      end
      class Numeric < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :maximum_length
        sig { returns(T.nilable(Integer)) }
        attr_reader :minimum_length
      end
      class Text < Stripe::StripeObject
        sig { returns(T.nilable(Integer)) }
        attr_reader :maximum_length
        sig { returns(T.nilable(Integer)) }
        attr_reader :minimum_length
      end
      sig { returns(Dropdown) }
      attr_reader :dropdown
      sig { returns(String) }
      attr_reader :key
      sig { returns(Label) }
      attr_reader :label
      sig { returns(Numeric) }
      attr_reader :numeric
      sig { returns(T::Boolean) }
      attr_reader :optional
      sig { returns(Text) }
      attr_reader :text
      sig { returns(String) }
      attr_reader :type
    end
    class CustomText < Stripe::StripeObject
      class AfterSubmit < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :message
      end
      class ShippingAddress < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :message
      end
      class Submit < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :message
      end
      class TermsOfServiceAcceptance < Stripe::StripeObject
        sig { returns(String) }
        attr_reader :message
      end
      sig { returns(T.nilable(AfterSubmit)) }
      attr_reader :after_submit
      sig { returns(T.nilable(ShippingAddress)) }
      attr_reader :shipping_address
      sig { returns(T.nilable(Submit)) }
      attr_reader :submit
      sig { returns(T.nilable(TermsOfServiceAcceptance)) }
      attr_reader :terms_of_service_acceptance
    end
    class InvoiceCreation < Stripe::StripeObject
      class InvoiceData < Stripe::StripeObject
        class CustomField < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :name
          sig { returns(String) }
          attr_reader :value
        end
        class Issuer < Stripe::StripeObject
          sig { returns(T.any(String, Stripe::Account)) }
          attr_reader :account
          sig { returns(String) }
          attr_reader :type
        end
        class RenderingOptions < Stripe::StripeObject
          sig { returns(T.nilable(String)) }
          attr_reader :amount_tax_display
        end
        sig { returns(T.nilable(T::Array[T.any(String, Stripe::TaxId)])) }
        attr_reader :account_tax_ids
        sig { returns(T.nilable(T::Array[CustomField])) }
        attr_reader :custom_fields
        sig { returns(T.nilable(String)) }
        attr_reader :description
        sig { returns(T.nilable(String)) }
        attr_reader :footer
        sig { returns(T.nilable(Issuer)) }
        attr_reader :issuer
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_reader :metadata
        sig { returns(T.nilable(RenderingOptions)) }
        attr_reader :rendering_options
      end
      sig { returns(T::Boolean) }
      attr_reader :enabled
      sig { returns(T.nilable(InvoiceData)) }
      attr_reader :invoice_data
    end
    class PaymentIntentData < Stripe::StripeObject
      sig { returns(T.nilable(String)) }
      attr_reader :capture_method
      sig { returns(T.nilable(String)) }
      attr_reader :description
      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata
      sig { returns(T.nilable(String)) }
      attr_reader :setup_future_usage
      sig { returns(T.nilable(String)) }
      attr_reader :statement_descriptor
      sig { returns(T.nilable(String)) }
      attr_reader :statement_descriptor_suffix
      sig { returns(T.nilable(String)) }
      attr_reader :transfer_group
    end
    class PhoneNumberCollection < Stripe::StripeObject
      sig { returns(T::Boolean) }
      attr_reader :enabled
    end
    class Restrictions < Stripe::StripeObject
      class CompletedSessions < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :count
        sig { returns(Integer) }
        attr_reader :limit
      end
      sig { returns(CompletedSessions) }
      attr_reader :completed_sessions
    end
    class ShippingAddressCollection < Stripe::StripeObject
      sig { returns(T::Array[String]) }
      attr_reader :allowed_countries
    end
    class ShippingOption < Stripe::StripeObject
      sig { returns(Integer) }
      attr_reader :shipping_amount
      sig { returns(T.any(String, Stripe::ShippingRate)) }
      attr_reader :shipping_rate
    end
    class SubscriptionData < Stripe::StripeObject
      class InvoiceSettings < Stripe::StripeObject
        class Issuer < Stripe::StripeObject
          sig { returns(T.any(String, Stripe::Account)) }
          attr_reader :account
          sig { returns(String) }
          attr_reader :type
        end
        sig { returns(Issuer) }
        attr_reader :issuer
      end
      class TrialSettings < Stripe::StripeObject
        class EndBehavior < Stripe::StripeObject
          sig { returns(String) }
          attr_reader :missing_payment_method
        end
        sig { returns(EndBehavior) }
        attr_reader :end_behavior
      end
      sig { returns(T.nilable(String)) }
      attr_reader :description
      sig { returns(InvoiceSettings) }
      attr_reader :invoice_settings
      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata
      sig { returns(T.nilable(Integer)) }
      attr_reader :trial_period_days
      sig { returns(T.nilable(TrialSettings)) }
      attr_reader :trial_settings
    end
    class TaxIdCollection < Stripe::StripeObject
      sig { returns(T::Boolean) }
      attr_reader :enabled
      sig { returns(String) }
      attr_reader :required
    end
    class TransferData < Stripe::StripeObject
      sig { returns(T.nilable(Integer)) }
      attr_reader :amount
      sig { returns(T.any(String, Stripe::Account)) }
      attr_reader :destination
    end
    sig { returns(T::Boolean) }
    # Whether the payment link's `url` is active. If `false`, customers visiting the URL will be shown a page saying that the link has been deactivated.
    attr_reader :active
    sig { returns(AfterCompletion) }
    # Attribute for field after_completion
    attr_reader :after_completion
    sig { returns(T::Boolean) }
    # Whether user redeemable promotion codes are enabled.
    attr_reader :allow_promotion_codes
    sig { returns(T.nilable(T.any(String, Stripe::Application))) }
    # The ID of the Connect application that created the Payment Link.
    attr_reader :application
    sig { returns(T.nilable(Integer)) }
    # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account.
    attr_reader :application_fee_amount
    sig { returns(T.nilable(Float)) }
    # This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account.
    attr_reader :application_fee_percent
    sig { returns(AutomaticTax) }
    # Attribute for field automatic_tax
    attr_reader :automatic_tax
    sig { returns(String) }
    # Configuration for collecting the customer's billing address. Defaults to `auto`.
    attr_reader :billing_address_collection
    sig { returns(T.nilable(ConsentCollection)) }
    # When set, provides configuration to gather active consent from customers.
    attr_reader :consent_collection
    sig { returns(String) }
    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    attr_reader :currency
    sig { returns(T::Array[CustomField]) }
    # Collect additional information from your customer using custom fields. Up to 3 fields are supported.
    attr_reader :custom_fields
    sig { returns(CustomText) }
    # Attribute for field custom_text
    attr_reader :custom_text
    sig { returns(String) }
    # Configuration for Customer creation during checkout.
    attr_reader :customer_creation
    sig { returns(String) }
    # Unique identifier for the object.
    attr_reader :id
    sig { returns(T.nilable(String)) }
    # The custom message to be displayed to a customer when a payment link is no longer active.
    attr_reader :inactive_message
    sig { returns(T.nilable(InvoiceCreation)) }
    # Configuration for creating invoice for payment mode payment links.
    attr_reader :invoice_creation
    sig { returns(Stripe::ListObject) }
    # The line items representing what is being sold.
    attr_reader :line_items
    sig { returns(T::Boolean) }
    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    attr_reader :livemode
    sig { returns(T::Hash[String, String]) }
    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    attr_reader :metadata
    sig { returns(String) }
    # String representing the object's type. Objects of the same type share the same value.
    attr_reader :object
    sig { returns(T.nilable(T.any(String, Stripe::Account))) }
    # The account on behalf of which to charge. See the [Connect documentation](https://support.stripe.com/questions/sending-invoices-on-behalf-of-connected-accounts) for details.
    attr_reader :on_behalf_of
    sig { returns(T.nilable(PaymentIntentData)) }
    # Indicates the parameters to be passed to PaymentIntent creation during checkout.
    attr_reader :payment_intent_data
    sig { returns(String) }
    # Configuration for collecting a payment method during checkout. Defaults to `always`.
    attr_reader :payment_method_collection
    sig { returns(T.nilable(T::Array[String])) }
    # The list of payment method types that customers can use. When `null`, Stripe will dynamically show relevant payment methods you've enabled in your [payment method settings](https://dashboard.stripe.com/settings/payment_methods).
    attr_reader :payment_method_types
    sig { returns(PhoneNumberCollection) }
    # Attribute for field phone_number_collection
    attr_reader :phone_number_collection
    sig { returns(T.nilable(Restrictions)) }
    # Settings that restrict the usage of a payment link.
    attr_reader :restrictions
    sig { returns(T.nilable(ShippingAddressCollection)) }
    # Configuration for collecting the customer's shipping address.
    attr_reader :shipping_address_collection
    sig { returns(T::Array[ShippingOption]) }
    # The shipping rate options applied to the session.
    attr_reader :shipping_options
    sig { returns(String) }
    # Indicates the type of transaction being performed which customizes relevant text on the page, such as the submit button.
    attr_reader :submit_type
    sig { returns(T.nilable(SubscriptionData)) }
    # When creating a subscription, the specified configuration data will be used. There must be at least one line item with a recurring price to use `subscription_data`.
    attr_reader :subscription_data
    sig { returns(TaxIdCollection) }
    # Attribute for field tax_id_collection
    attr_reader :tax_id_collection
    sig { returns(T.nilable(TransferData)) }
    # The account (if any) the payments will be attributed to for tax reporting, and where funds from each payment will be transferred to.
    attr_reader :transfer_data
    sig { returns(String) }
    # The public URL that can be shared with customers.
    attr_reader :url
  end
end