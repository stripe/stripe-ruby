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
        # The value that will pre-fill on the payment page.
        sig { returns(T.nilable(String)) }
        attr_reader :default_value
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
        # The value that will pre-fill the field on the payment page.
        sig { returns(T.nilable(String)) }
        attr_reader :default_value
        # The maximum character length constraint for the customer's input.
        sig { returns(T.nilable(Integer)) }
        attr_reader :maximum_length
        # The minimum character length requirement for the customer's input.
        sig { returns(T.nilable(Integer)) }
        attr_reader :minimum_length
      end
      class Text < Stripe::StripeObject
        # The value that will pre-fill the field on the payment page.
        sig { returns(T.nilable(String)) }
        attr_reader :default_value
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
          # ID of the invoice rendering template to be used for the generated invoice.
          sig { returns(T.nilable(String)) }
          attr_reader :template
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
    class OptionalItem < Stripe::StripeObject
      class AdjustableQuantity < Stripe::StripeObject
        # Set to true if the quantity can be adjusted to any non-negative integer.
        sig { returns(T::Boolean) }
        attr_reader :enabled
        # The maximum quantity of this item the customer can purchase. By default this value is 99.
        sig { returns(T.nilable(Integer)) }
        attr_reader :maximum
        # The minimum quantity of this item the customer must purchase, if they choose to purchase it. Because this item is optional, the customer will always be able to remove it from their order, even if the `minimum` configured here is greater than 0. By default this value is 0.
        sig { returns(T.nilable(Integer)) }
        attr_reader :minimum
      end
      # Attribute for field adjustable_quantity
      sig { returns(T.nilable(AdjustableQuantity)) }
      attr_reader :adjustable_quantity
      # Attribute for field price
      sig { returns(String) }
      attr_reader :price
      # Attribute for field quantity
      sig { returns(Integer) }
      attr_reader :quantity
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
    # The optional items presented to the customer at checkout.
    sig { returns(T.nilable(T::Array[OptionalItem])) }
    attr_reader :optional_items
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
    class ListParams < Stripe::RequestParams
      # Only return payment links that are active or inactive (e.g., pass `false` to list all inactive payment links).
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :active
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      sig {
        params(active: T.nilable(T::Boolean), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
       }
      def initialize(
        active: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        starting_after: nil
      ); end
    end
    class CreateParams < Stripe::RequestParams
      class AfterCompletion < Stripe::RequestParams
        class HostedConfirmation < Stripe::RequestParams
          # A custom message to display to the customer after the purchase is complete.
          sig { returns(T.nilable(String)) }
          attr_accessor :custom_message
          sig { params(custom_message: T.nilable(String)).void }
          def initialize(custom_message: nil); end
        end
        class Redirect < Stripe::RequestParams
          # The URL the customer will be redirected to after the purchase is complete. You can embed `{CHECKOUT_SESSION_ID}` into the URL to have the `id` of the completed [checkout session](https://stripe.com/docs/api/checkout/sessions/object#checkout_session_object-id) included.
          sig { returns(String) }
          attr_accessor :url
          sig { params(url: String).void }
          def initialize(url: nil); end
        end
        # Configuration when `type=hosted_confirmation`.
        sig {
          returns(T.nilable(::Stripe::PaymentLink::CreateParams::AfterCompletion::HostedConfirmation))
         }
        attr_accessor :hosted_confirmation
        # Configuration when `type=redirect`.
        sig { returns(T.nilable(::Stripe::PaymentLink::CreateParams::AfterCompletion::Redirect)) }
        attr_accessor :redirect
        # The specified behavior after the purchase is complete. Either `redirect` or `hosted_confirmation`.
        sig { returns(String) }
        attr_accessor :type
        sig {
          params(hosted_confirmation: T.nilable(::Stripe::PaymentLink::CreateParams::AfterCompletion::HostedConfirmation), redirect: T.nilable(::Stripe::PaymentLink::CreateParams::AfterCompletion::Redirect), type: String).void
         }
        def initialize(hosted_confirmation: nil, redirect: nil, type: nil); end
      end
      class AutomaticTax < Stripe::RequestParams
        class Liability < Stripe::RequestParams
          # The connected account being referenced when `type` is `account`.
          sig { returns(T.nilable(String)) }
          attr_accessor :account
          # Type of the account referenced in the request.
          sig { returns(String) }
          attr_accessor :type
          sig { params(account: T.nilable(String), type: String).void }
          def initialize(account: nil, type: nil); end
        end
        # Set to `true` to [calculate tax automatically](https://docs.stripe.com/tax) using the customer's location.
        #
        # Enabling this parameter causes the payment link to collect any billing address information necessary for tax calculation.
        sig { returns(T::Boolean) }
        attr_accessor :enabled
        # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
        sig { returns(T.nilable(::Stripe::PaymentLink::CreateParams::AutomaticTax::Liability)) }
        attr_accessor :liability
        sig {
          params(enabled: T::Boolean, liability: T.nilable(::Stripe::PaymentLink::CreateParams::AutomaticTax::Liability)).void
         }
        def initialize(enabled: nil, liability: nil); end
      end
      class ConsentCollection < Stripe::RequestParams
        class PaymentMethodReuseAgreement < Stripe::RequestParams
          # Determines the position and visibility of the payment method reuse agreement in the UI. When set to `auto`, Stripe's
          # defaults will be used. When set to `hidden`, the payment method reuse agreement text will always be hidden in the UI.
          sig { returns(String) }
          attr_accessor :position
          sig { params(position: String).void }
          def initialize(position: nil); end
        end
        # Determines the display of payment method reuse agreement text in the UI. If set to `hidden`, it will hide legal text related to the reuse of a payment method.
        sig {
          returns(T.nilable(::Stripe::PaymentLink::CreateParams::ConsentCollection::PaymentMethodReuseAgreement))
         }
        attr_accessor :payment_method_reuse_agreement
        # If set to `auto`, enables the collection of customer consent for promotional communications. The Checkout
        # Session will determine whether to display an option to opt into promotional communication
        # from the merchant depending on the customer's locale. Only available to US merchants.
        sig { returns(T.nilable(String)) }
        attr_accessor :promotions
        # If set to `required`, it requires customers to check a terms of service checkbox before being able to pay.
        # There must be a valid terms of service URL set in your [Dashboard settings](https://dashboard.stripe.com/settings/public).
        sig { returns(T.nilable(String)) }
        attr_accessor :terms_of_service
        sig {
          params(payment_method_reuse_agreement: T.nilable(::Stripe::PaymentLink::CreateParams::ConsentCollection::PaymentMethodReuseAgreement), promotions: T.nilable(String), terms_of_service: T.nilable(String)).void
         }
        def initialize(
          payment_method_reuse_agreement: nil,
          promotions: nil,
          terms_of_service: nil
        ); end
      end
      class CustomField < Stripe::RequestParams
        class Dropdown < Stripe::RequestParams
          class Option < Stripe::RequestParams
            # The label for the option, displayed to the customer. Up to 100 characters.
            sig { returns(String) }
            attr_accessor :label
            # The value for this option, not displayed to the customer, used by your integration to reconcile the option selected by the customer. Must be unique to this option, alphanumeric, and up to 100 characters.
            sig { returns(String) }
            attr_accessor :value
            sig { params(label: String, value: String).void }
            def initialize(label: nil, value: nil); end
          end
          # The value that will pre-fill the field on the payment page.Must match a `value` in the `options` array.
          sig { returns(T.nilable(String)) }
          attr_accessor :default_value
          # The options available for the customer to select. Up to 200 options allowed.
          sig {
            returns(T::Array[::Stripe::PaymentLink::CreateParams::CustomField::Dropdown::Option])
           }
          attr_accessor :options
          sig {
            params(default_value: T.nilable(String), options: T::Array[::Stripe::PaymentLink::CreateParams::CustomField::Dropdown::Option]).void
           }
          def initialize(default_value: nil, options: nil); end
        end
        class Label < Stripe::RequestParams
          # Custom text for the label, displayed to the customer. Up to 50 characters.
          sig { returns(String) }
          attr_accessor :custom
          # The type of the label.
          sig { returns(String) }
          attr_accessor :type
          sig { params(custom: String, type: String).void }
          def initialize(custom: nil, type: nil); end
        end
        class Numeric < Stripe::RequestParams
          # The value that will pre-fill the field on the payment page.
          sig { returns(T.nilable(String)) }
          attr_accessor :default_value
          # The maximum character length constraint for the customer's input.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :maximum_length
          # The minimum character length requirement for the customer's input.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :minimum_length
          sig {
            params(default_value: T.nilable(String), maximum_length: T.nilable(Integer), minimum_length: T.nilable(Integer)).void
           }
          def initialize(default_value: nil, maximum_length: nil, minimum_length: nil); end
        end
        class Text < Stripe::RequestParams
          # The value that will pre-fill the field on the payment page.
          sig { returns(T.nilable(String)) }
          attr_accessor :default_value
          # The maximum character length constraint for the customer's input.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :maximum_length
          # The minimum character length requirement for the customer's input.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :minimum_length
          sig {
            params(default_value: T.nilable(String), maximum_length: T.nilable(Integer), minimum_length: T.nilable(Integer)).void
           }
          def initialize(default_value: nil, maximum_length: nil, minimum_length: nil); end
        end
        # Configuration for `type=dropdown` fields.
        sig { returns(T.nilable(::Stripe::PaymentLink::CreateParams::CustomField::Dropdown)) }
        attr_accessor :dropdown
        # String of your choice that your integration can use to reconcile this field. Must be unique to this field, alphanumeric, and up to 200 characters.
        sig { returns(String) }
        attr_accessor :key
        # The label for the field, displayed to the customer.
        sig { returns(::Stripe::PaymentLink::CreateParams::CustomField::Label) }
        attr_accessor :label
        # Configuration for `type=numeric` fields.
        sig { returns(T.nilable(::Stripe::PaymentLink::CreateParams::CustomField::Numeric)) }
        attr_accessor :numeric
        # Whether the customer is required to complete the field before completing the Checkout Session. Defaults to `false`.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :optional
        # Configuration for `type=text` fields.
        sig { returns(T.nilable(::Stripe::PaymentLink::CreateParams::CustomField::Text)) }
        attr_accessor :text
        # The type of the field.
        sig { returns(String) }
        attr_accessor :type
        sig {
          params(dropdown: T.nilable(::Stripe::PaymentLink::CreateParams::CustomField::Dropdown), key: String, label: ::Stripe::PaymentLink::CreateParams::CustomField::Label, numeric: T.nilable(::Stripe::PaymentLink::CreateParams::CustomField::Numeric), optional: T.nilable(T::Boolean), text: T.nilable(::Stripe::PaymentLink::CreateParams::CustomField::Text), type: String).void
         }
        def initialize(
          dropdown: nil,
          key: nil,
          label: nil,
          numeric: nil,
          optional: nil,
          text: nil,
          type: nil
        ); end
      end
      class CustomText < Stripe::RequestParams
        class AfterSubmit < Stripe::RequestParams
          # Text may be up to 1200 characters in length.
          sig { returns(String) }
          attr_accessor :message
          sig { params(message: String).void }
          def initialize(message: nil); end
        end
        class ShippingAddress < Stripe::RequestParams
          # Text may be up to 1200 characters in length.
          sig { returns(String) }
          attr_accessor :message
          sig { params(message: String).void }
          def initialize(message: nil); end
        end
        class Submit < Stripe::RequestParams
          # Text may be up to 1200 characters in length.
          sig { returns(String) }
          attr_accessor :message
          sig { params(message: String).void }
          def initialize(message: nil); end
        end
        class TermsOfServiceAcceptance < Stripe::RequestParams
          # Text may be up to 1200 characters in length.
          sig { returns(String) }
          attr_accessor :message
          sig { params(message: String).void }
          def initialize(message: nil); end
        end
        # Custom text that should be displayed after the payment confirmation button.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentLink::CreateParams::CustomText::AfterSubmit)))
         }
        attr_accessor :after_submit
        # Custom text that should be displayed alongside shipping address collection.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentLink::CreateParams::CustomText::ShippingAddress)))
         }
        attr_accessor :shipping_address
        # Custom text that should be displayed alongside the payment confirmation button.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentLink::CreateParams::CustomText::Submit)))
         }
        attr_accessor :submit
        # Custom text that should be displayed in place of the default terms of service agreement text.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentLink::CreateParams::CustomText::TermsOfServiceAcceptance)))
         }
        attr_accessor :terms_of_service_acceptance
        sig {
          params(after_submit: T.nilable(T.any(String, ::Stripe::PaymentLink::CreateParams::CustomText::AfterSubmit)), shipping_address: T.nilable(T.any(String, ::Stripe::PaymentLink::CreateParams::CustomText::ShippingAddress)), submit: T.nilable(T.any(String, ::Stripe::PaymentLink::CreateParams::CustomText::Submit)), terms_of_service_acceptance: T.nilable(T.any(String, ::Stripe::PaymentLink::CreateParams::CustomText::TermsOfServiceAcceptance))).void
         }
        def initialize(
          after_submit: nil,
          shipping_address: nil,
          submit: nil,
          terms_of_service_acceptance: nil
        ); end
      end
      class InvoiceCreation < Stripe::RequestParams
        class InvoiceData < Stripe::RequestParams
          class CustomField < Stripe::RequestParams
            # The name of the custom field. This may be up to 40 characters.
            sig { returns(String) }
            attr_accessor :name
            # The value of the custom field. This may be up to 140 characters.
            sig { returns(String) }
            attr_accessor :value
            sig { params(name: String, value: String).void }
            def initialize(name: nil, value: nil); end
          end
          class Issuer < Stripe::RequestParams
            # The connected account being referenced when `type` is `account`.
            sig { returns(T.nilable(String)) }
            attr_accessor :account
            # Type of the account referenced in the request.
            sig { returns(String) }
            attr_accessor :type
            sig { params(account: T.nilable(String), type: String).void }
            def initialize(account: nil, type: nil); end
          end
          class RenderingOptions < Stripe::RequestParams
            # How line-item prices and amounts will be displayed with respect to tax on invoice PDFs. One of `exclude_tax` or `include_inclusive_tax`. `include_inclusive_tax` will include inclusive tax (and exclude exclusive tax) in invoice PDF amounts. `exclude_tax` will exclude all tax (inclusive and exclusive alike) from invoice PDF amounts.
            sig { returns(T.nilable(T.any(String, String))) }
            attr_accessor :amount_tax_display
            # ID of the invoice rendering template to use for this invoice.
            sig { returns(T.nilable(String)) }
            attr_accessor :template
            sig {
              params(amount_tax_display: T.nilable(T.any(String, String)), template: T.nilable(String)).void
             }
            def initialize(amount_tax_display: nil, template: nil); end
          end
          # The account tax IDs associated with the invoice.
          sig { returns(T.nilable(T.any(String, T::Array[String]))) }
          attr_accessor :account_tax_ids
          # Default custom fields to be displayed on invoices for this customer.
          sig {
            returns(T.nilable(T.any(String, T::Array[::Stripe::PaymentLink::CreateParams::InvoiceCreation::InvoiceData::CustomField])))
           }
          attr_accessor :custom_fields
          # An arbitrary string attached to the object. Often useful for displaying to users.
          sig { returns(T.nilable(String)) }
          attr_accessor :description
          # Default footer to be displayed on invoices for this customer.
          sig { returns(T.nilable(String)) }
          attr_accessor :footer
          # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
          sig {
            returns(T.nilable(::Stripe::PaymentLink::CreateParams::InvoiceCreation::InvoiceData::Issuer))
           }
          attr_accessor :issuer
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
          attr_accessor :metadata
          # Default options for invoice PDF rendering for this customer.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::PaymentLink::CreateParams::InvoiceCreation::InvoiceData::RenderingOptions)))
           }
          attr_accessor :rendering_options
          sig {
            params(account_tax_ids: T.nilable(T.any(String, T::Array[String])), custom_fields: T.nilable(T.any(String, T::Array[::Stripe::PaymentLink::CreateParams::InvoiceCreation::InvoiceData::CustomField])), description: T.nilable(String), footer: T.nilable(String), issuer: T.nilable(::Stripe::PaymentLink::CreateParams::InvoiceCreation::InvoiceData::Issuer), metadata: T.nilable(T.any(String, T::Hash[String, String])), rendering_options: T.nilable(T.any(String, ::Stripe::PaymentLink::CreateParams::InvoiceCreation::InvoiceData::RenderingOptions))).void
           }
          def initialize(
            account_tax_ids: nil,
            custom_fields: nil,
            description: nil,
            footer: nil,
            issuer: nil,
            metadata: nil,
            rendering_options: nil
          ); end
        end
        # Whether the feature is enabled
        sig { returns(T::Boolean) }
        attr_accessor :enabled
        # Invoice PDF configuration.
        sig {
          returns(T.nilable(::Stripe::PaymentLink::CreateParams::InvoiceCreation::InvoiceData))
         }
        attr_accessor :invoice_data
        sig {
          params(enabled: T::Boolean, invoice_data: T.nilable(::Stripe::PaymentLink::CreateParams::InvoiceCreation::InvoiceData)).void
         }
        def initialize(enabled: nil, invoice_data: nil); end
      end
      class LineItem < Stripe::RequestParams
        class AdjustableQuantity < Stripe::RequestParams
          # Set to true if the quantity can be adjusted to any non-negative Integer.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          # The maximum quantity the customer can purchase. By default this value is 99. You can specify a value up to 999999.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :maximum
          # The minimum quantity the customer can purchase. By default this value is 0. If there is only one item in the cart then that item's quantity cannot go down to 0.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :minimum
          sig {
            params(enabled: T::Boolean, maximum: T.nilable(Integer), minimum: T.nilable(Integer)).void
           }
          def initialize(enabled: nil, maximum: nil, minimum: nil); end
        end
        class PriceData < Stripe::RequestParams
          class ProductData < Stripe::RequestParams
            # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
            sig { returns(T.nilable(String)) }
            attr_accessor :description
            # A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
            sig { returns(T.nilable(T::Array[String])) }
            attr_accessor :images
            # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            sig { returns(T.nilable(T::Hash[String, String])) }
            attr_accessor :metadata
            # The product's name, meant to be displayable to the customer.
            sig { returns(String) }
            attr_accessor :name
            # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
            sig { returns(T.nilable(String)) }
            attr_accessor :tax_code
            sig {
              params(description: T.nilable(String), images: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), name: String, tax_code: T.nilable(String)).void
             }
            def initialize(
              description: nil,
              images: nil,
              metadata: nil,
              name: nil,
              tax_code: nil
            ); end
          end
          class Recurring < Stripe::RequestParams
            # Specifies billing frequency. Either `day`, `week`, `month` or `year`.
            sig { returns(String) }
            attr_accessor :interval
            # The number of intervals between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of three years interval allowed (3 years, 36 months, or 156 weeks).
            sig { returns(T.nilable(Integer)) }
            attr_accessor :interval_count
            sig { params(interval: String, interval_count: T.nilable(Integer)).void }
            def initialize(interval: nil, interval_count: nil); end
          end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          attr_accessor :currency
          # The ID of the [Product](https://docs.stripe.com/api/products) that this [Price](https://docs.stripe.com/api/prices) will belong to. One of `product` or `product_data` is required.
          sig { returns(T.nilable(String)) }
          attr_accessor :product
          # Data used to generate a new [Product](https://docs.stripe.com/api/products) object inline. One of `product` or `product_data` is required.
          sig {
            returns(T.nilable(::Stripe::PaymentLink::CreateParams::LineItem::PriceData::ProductData))
           }
          attr_accessor :product_data
          # The recurring components of a price such as `interval` and `interval_count`.
          sig {
            returns(T.nilable(::Stripe::PaymentLink::CreateParams::LineItem::PriceData::Recurring))
           }
          attr_accessor :recurring
          # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
          sig { returns(T.nilable(String)) }
          attr_accessor :tax_behavior
          # A non-negative integer in cents (or local equivalent) representing how much to charge. One of `unit_amount` or `unit_amount_decimal` is required.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :unit_amount
          # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
          sig { returns(T.nilable(String)) }
          attr_accessor :unit_amount_decimal
          sig {
            params(currency: String, product: T.nilable(String), product_data: T.nilable(::Stripe::PaymentLink::CreateParams::LineItem::PriceData::ProductData), recurring: T.nilable(::Stripe::PaymentLink::CreateParams::LineItem::PriceData::Recurring), tax_behavior: T.nilable(String), unit_amount: T.nilable(Integer), unit_amount_decimal: T.nilable(String)).void
           }
          def initialize(
            currency: nil,
            product: nil,
            product_data: nil,
            recurring: nil,
            tax_behavior: nil,
            unit_amount: nil,
            unit_amount_decimal: nil
          ); end
        end
        # When set, provides configuration for this item’s quantity to be adjusted by the customer during checkout.
        sig {
          returns(T.nilable(::Stripe::PaymentLink::CreateParams::LineItem::AdjustableQuantity))
         }
        attr_accessor :adjustable_quantity
        # The ID of the [Price](https://stripe.com/docs/api/prices) or [Plan](https://stripe.com/docs/api/plans) object. One of `price` or `price_data` is required.
        sig { returns(T.nilable(String)) }
        attr_accessor :price
        # Data used to generate a new [Price](https://stripe.com/docs/api/prices) object inline. One of `price` or `price_data` is required.
        sig { returns(T.nilable(::Stripe::PaymentLink::CreateParams::LineItem::PriceData)) }
        attr_accessor :price_data
        # The quantity of the line item being purchased.
        sig { returns(Integer) }
        attr_accessor :quantity
        sig {
          params(adjustable_quantity: T.nilable(::Stripe::PaymentLink::CreateParams::LineItem::AdjustableQuantity), price: T.nilable(String), price_data: T.nilable(::Stripe::PaymentLink::CreateParams::LineItem::PriceData), quantity: Integer).void
         }
        def initialize(adjustable_quantity: nil, price: nil, price_data: nil, quantity: nil); end
      end
      class OptionalItem < Stripe::RequestParams
        class AdjustableQuantity < Stripe::RequestParams
          # Set to true if the quantity can be adjusted to any non-negative integer.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          # The maximum quantity of this item the customer can purchase. By default this value is 99.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :maximum
          # The minimum quantity of this item the customer must purchase, if they choose to purchase it. Because this item is optional, the customer will always be able to remove it from their order, even if the `minimum` configured here is greater than 0. By default this value is 0.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :minimum
          sig {
            params(enabled: T::Boolean, maximum: T.nilable(Integer), minimum: T.nilable(Integer)).void
           }
          def initialize(enabled: nil, maximum: nil, minimum: nil); end
        end
        # When set, provides configuration for the customer to adjust the quantity of the line item created when a customer chooses to add this optional item to their order.
        sig {
          returns(T.nilable(::Stripe::PaymentLink::CreateParams::OptionalItem::AdjustableQuantity))
         }
        attr_accessor :adjustable_quantity
        # The ID of the [Price](https://stripe.com/docs/api/prices) or [Plan](https://stripe.com/docs/api/plans) object.
        sig { returns(String) }
        attr_accessor :price
        # The initial quantity of the line item created when a customer chooses to add this optional item to their order.
        sig { returns(Integer) }
        attr_accessor :quantity
        sig {
          params(adjustable_quantity: T.nilable(::Stripe::PaymentLink::CreateParams::OptionalItem::AdjustableQuantity), price: String, quantity: Integer).void
         }
        def initialize(adjustable_quantity: nil, price: nil, quantity: nil); end
      end
      class PaymentIntentData < Stripe::RequestParams
        # Controls when the funds will be captured from the customer's account.
        sig { returns(T.nilable(String)) }
        attr_accessor :capture_method
        # An arbitrary string attached to the object. Often useful for displaying to users.
        sig { returns(T.nilable(String)) }
        attr_accessor :description
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that will declaratively set metadata on [Payment Intents](https://stripe.com/docs/api/payment_intents) generated from this payment link. Unlike object-level metadata, this field is declarative. Updates will clear prior values.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # Indicates that you intend to [make future payments](https://stripe.com/docs/payments/payment-intents#future-usage) with the payment method collected by this Checkout Session.
        #
        # When setting this to `on_session`, Checkout will show a notice to the customer that their payment details will be saved.
        #
        # When setting this to `off_session`, Checkout will show a notice to the customer that their payment details will be saved and used for future payments.
        #
        # If a Customer has been provided or Checkout creates a new Customer,Checkout will attach the payment method to the Customer.
        #
        # If Checkout does not create a Customer, the payment method is not attached to a Customer. To reuse the payment method, you can retrieve it from the Checkout Session's PaymentIntent.
        #
        # When processing card payments, Checkout also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as SCA.
        sig { returns(T.nilable(String)) }
        attr_accessor :setup_future_usage
        # Text that appears on the customer's statement as the statement descriptor for a non-card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
        #
        # Setting this value for a card charge returns an error. For card charges, set the [statement_descriptor_suffix](https://docs.stripe.com/get-started/account/statement-descriptors#dynamic) instead.
        sig { returns(T.nilable(String)) }
        attr_accessor :statement_descriptor
        # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement.
        sig { returns(T.nilable(String)) }
        attr_accessor :statement_descriptor_suffix
        # A string that identifies the resulting payment as part of a group. See the PaymentIntents [use case for connected accounts](https://stripe.com/docs/connect/separate-charges-and-transfers) for details.
        sig { returns(T.nilable(String)) }
        attr_accessor :transfer_group
        sig {
          params(capture_method: T.nilable(String), description: T.nilable(String), metadata: T.nilable(T::Hash[String, String]), setup_future_usage: T.nilable(String), statement_descriptor: T.nilable(String), statement_descriptor_suffix: T.nilable(String), transfer_group: T.nilable(String)).void
         }
        def initialize(
          capture_method: nil,
          description: nil,
          metadata: nil,
          setup_future_usage: nil,
          statement_descriptor: nil,
          statement_descriptor_suffix: nil,
          transfer_group: nil
        ); end
      end
      class PhoneNumberCollection < Stripe::RequestParams
        # Set to `true` to enable phone number collection.
        sig { returns(T::Boolean) }
        attr_accessor :enabled
        sig { params(enabled: T::Boolean).void }
        def initialize(enabled: nil); end
      end
      class Restrictions < Stripe::RequestParams
        class CompletedSessions < Stripe::RequestParams
          # The maximum number of checkout sessions that can be completed for the `completed_sessions` restriction to be met.
          sig { returns(Integer) }
          attr_accessor :limit
          sig { params(limit: Integer).void }
          def initialize(limit: nil); end
        end
        # Configuration for the `completed_sessions` restriction type.
        sig { returns(::Stripe::PaymentLink::CreateParams::Restrictions::CompletedSessions) }
        attr_accessor :completed_sessions
        sig {
          params(completed_sessions: ::Stripe::PaymentLink::CreateParams::Restrictions::CompletedSessions).void
         }
        def initialize(completed_sessions: nil); end
      end
      class ShippingAddressCollection < Stripe::RequestParams
        # An array of two-letter ISO country codes representing which countries Checkout should provide as options for
        # shipping locations.
        sig { returns(T::Array[String]) }
        attr_accessor :allowed_countries
        sig { params(allowed_countries: T::Array[String]).void }
        def initialize(allowed_countries: nil); end
      end
      class ShippingOption < Stripe::RequestParams
        # The ID of the Shipping Rate to use for this shipping option.
        sig { returns(T.nilable(String)) }
        attr_accessor :shipping_rate
        sig { params(shipping_rate: T.nilable(String)).void }
        def initialize(shipping_rate: nil); end
      end
      class SubscriptionData < Stripe::RequestParams
        class InvoiceSettings < Stripe::RequestParams
          class Issuer < Stripe::RequestParams
            # The connected account being referenced when `type` is `account`.
            sig { returns(T.nilable(String)) }
            attr_accessor :account
            # Type of the account referenced in the request.
            sig { returns(String) }
            attr_accessor :type
            sig { params(account: T.nilable(String), type: String).void }
            def initialize(account: nil, type: nil); end
          end
          # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
          sig {
            returns(T.nilable(::Stripe::PaymentLink::CreateParams::SubscriptionData::InvoiceSettings::Issuer))
           }
          attr_accessor :issuer
          sig {
            params(issuer: T.nilable(::Stripe::PaymentLink::CreateParams::SubscriptionData::InvoiceSettings::Issuer)).void
           }
          def initialize(issuer: nil); end
        end
        class TrialSettings < Stripe::RequestParams
          class EndBehavior < Stripe::RequestParams
            # Indicates how the subscription should change when the trial ends if the user did not provide a payment method.
            sig { returns(String) }
            attr_accessor :missing_payment_method
            sig { params(missing_payment_method: String).void }
            def initialize(missing_payment_method: nil); end
          end
          # Defines how the subscription should behave when the user's free trial ends.
          sig {
            returns(::Stripe::PaymentLink::CreateParams::SubscriptionData::TrialSettings::EndBehavior)
           }
          attr_accessor :end_behavior
          sig {
            params(end_behavior: ::Stripe::PaymentLink::CreateParams::SubscriptionData::TrialSettings::EndBehavior).void
           }
          def initialize(end_behavior: nil); end
        end
        # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
        sig { returns(T.nilable(String)) }
        attr_accessor :description
        # All invoices will be billed using the specified settings.
        sig {
          returns(T.nilable(::Stripe::PaymentLink::CreateParams::SubscriptionData::InvoiceSettings))
         }
        attr_accessor :invoice_settings
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that will declaratively set metadata on [Subscriptions](https://stripe.com/docs/api/subscriptions) generated from this payment link. Unlike object-level metadata, this field is declarative. Updates will clear prior values.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # Integer representing the number of trial period days before the customer is charged for the first time. Has to be at least 1.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :trial_period_days
        # Settings related to subscription trials.
        sig {
          returns(T.nilable(::Stripe::PaymentLink::CreateParams::SubscriptionData::TrialSettings))
         }
        attr_accessor :trial_settings
        sig {
          params(description: T.nilable(String), invoice_settings: T.nilable(::Stripe::PaymentLink::CreateParams::SubscriptionData::InvoiceSettings), metadata: T.nilable(T::Hash[String, String]), trial_period_days: T.nilable(Integer), trial_settings: T.nilable(::Stripe::PaymentLink::CreateParams::SubscriptionData::TrialSettings)).void
         }
        def initialize(
          description: nil,
          invoice_settings: nil,
          metadata: nil,
          trial_period_days: nil,
          trial_settings: nil
        ); end
      end
      class TaxIdCollection < Stripe::RequestParams
        # Enable tax ID collection during checkout. Defaults to `false`.
        sig { returns(T::Boolean) }
        attr_accessor :enabled
        # Describes whether a tax ID is required during checkout. Defaults to `never`.
        sig { returns(T.nilable(String)) }
        attr_accessor :required
        sig { params(enabled: T::Boolean, required: T.nilable(String)).void }
        def initialize(enabled: nil, required: nil); end
      end
      class TransferData < Stripe::RequestParams
        # The amount that will be transferred automatically when a charge succeeds.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount
        # If specified, successful charges will be attributed to the destination
        # account for tax reporting, and the funds from charges will be transferred
        # to the destination account. The ID of the resulting transfer will be
        # returned on the successful charge's `transfer` field.
        sig { returns(String) }
        attr_accessor :destination
        sig { params(amount: T.nilable(Integer), destination: String).void }
        def initialize(amount: nil, destination: nil); end
      end
      # Behavior after the purchase is complete.
      sig { returns(T.nilable(::Stripe::PaymentLink::CreateParams::AfterCompletion)) }
      attr_accessor :after_completion
      # Enables user redeemable promotion codes.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :allow_promotion_codes
      # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. Can only be applied when there are no line items with recurring prices.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :application_fee_amount
      # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. There must be at least 1 line item with a recurring price to use this field.
      sig { returns(T.nilable(Float)) }
      attr_accessor :application_fee_percent
      # Configuration for automatic tax collection.
      sig { returns(T.nilable(::Stripe::PaymentLink::CreateParams::AutomaticTax)) }
      attr_accessor :automatic_tax
      # Configuration for collecting the customer's billing address. Defaults to `auto`.
      sig { returns(T.nilable(String)) }
      attr_accessor :billing_address_collection
      # Configure fields to gather active consent from customers.
      sig { returns(T.nilable(::Stripe::PaymentLink::CreateParams::ConsentCollection)) }
      attr_accessor :consent_collection
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies) and supported by each line item's price.
      sig { returns(T.nilable(String)) }
      attr_accessor :currency
      # Collect additional information from your customer using custom fields. Up to 3 fields are supported.
      sig { returns(T.nilable(T::Array[::Stripe::PaymentLink::CreateParams::CustomField])) }
      attr_accessor :custom_fields
      # Display additional text for your customers using custom text.
      sig { returns(T.nilable(::Stripe::PaymentLink::CreateParams::CustomText)) }
      attr_accessor :custom_text
      # Configures whether [checkout sessions](https://stripe.com/docs/api/checkout/sessions) created by this payment link create a [Customer](https://stripe.com/docs/api/customers).
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_creation
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # The custom message to be displayed to a customer when a payment link is no longer active.
      sig { returns(T.nilable(String)) }
      attr_accessor :inactive_message
      # Generate a post-purchase Invoice for one-time payments.
      sig { returns(T.nilable(::Stripe::PaymentLink::CreateParams::InvoiceCreation)) }
      attr_accessor :invoice_creation
      # The line items representing what is being sold. Each line item represents an item being sold. Up to 20 line items are supported.
      sig { returns(T::Array[::Stripe::PaymentLink::CreateParams::LineItem]) }
      attr_accessor :line_items
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`. Metadata associated with this Payment Link will automatically be copied to [checkout sessions](https://stripe.com/docs/api/checkout/sessions) created by this payment link.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # The account on behalf of which to charge.
      sig { returns(T.nilable(String)) }
      attr_accessor :on_behalf_of
      # A list of optional items the customer can add to their order at checkout. Use this parameter to pass one-time or recurring [Prices](https://stripe.com/docs/api/prices).
      # There is a maximum of 10 optional items allowed on a payment link, and the existing limits on the number of line items allowed on a payment link apply to the combined number of line items and optional items.
      # There is a maximum of 20 combined line items and optional items.
      sig { returns(T.nilable(T::Array[::Stripe::PaymentLink::CreateParams::OptionalItem])) }
      attr_accessor :optional_items
      # A subset of parameters to be passed to PaymentIntent creation for Checkout Sessions in `payment` mode.
      sig { returns(T.nilable(::Stripe::PaymentLink::CreateParams::PaymentIntentData)) }
      attr_accessor :payment_intent_data
      # Specify whether Checkout should collect a payment method. When set to `if_required`, Checkout will not collect a payment method when the total due for the session is 0.This may occur if the Checkout Session includes a free trial or a discount.
      #
      # Can only be set in `subscription` mode. Defaults to `always`.
      #
      # If you'd like information on how to collect a payment method outside of Checkout, read the guide on [configuring subscriptions with a free trial](https://stripe.com/docs/payments/checkout/free-trials).
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method_collection
      # The list of payment method types that customers can use. If no value is passed, Stripe will dynamically show relevant payment methods from your [payment method settings](https://dashboard.stripe.com/settings/payment_methods) (20+ payment methods [supported](https://stripe.com/docs/payments/payment-methods/integration-options#payment-method-product-support)).
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :payment_method_types
      # Controls phone number collection settings during checkout.
      #
      # We recommend that you review your privacy policy and check with your legal contacts.
      sig { returns(T.nilable(::Stripe::PaymentLink::CreateParams::PhoneNumberCollection)) }
      attr_accessor :phone_number_collection
      # Settings that restrict the usage of a payment link.
      sig { returns(T.nilable(::Stripe::PaymentLink::CreateParams::Restrictions)) }
      attr_accessor :restrictions
      # Configuration for collecting the customer's shipping address.
      sig { returns(T.nilable(::Stripe::PaymentLink::CreateParams::ShippingAddressCollection)) }
      attr_accessor :shipping_address_collection
      # The shipping rate options to apply to [checkout sessions](https://stripe.com/docs/api/checkout/sessions) created by this payment link.
      sig { returns(T.nilable(T::Array[::Stripe::PaymentLink::CreateParams::ShippingOption])) }
      attr_accessor :shipping_options
      # Describes the type of transaction being performed in order to customize relevant text on the page, such as the submit button. Changing this value will also affect the hostname in the [url](https://stripe.com/docs/api/payment_links/payment_links/object#url) property (example: `donate.stripe.com`).
      sig { returns(T.nilable(String)) }
      attr_accessor :submit_type
      # When creating a subscription, the specified configuration data will be used. There must be at least one line item with a recurring price to use `subscription_data`.
      sig { returns(T.nilable(::Stripe::PaymentLink::CreateParams::SubscriptionData)) }
      attr_accessor :subscription_data
      # Controls tax ID collection during checkout.
      sig { returns(T.nilable(::Stripe::PaymentLink::CreateParams::TaxIdCollection)) }
      attr_accessor :tax_id_collection
      # The account (if any) the payments will be attributed to for tax reporting, and where funds from each payment will be transferred to.
      sig { returns(T.nilable(::Stripe::PaymentLink::CreateParams::TransferData)) }
      attr_accessor :transfer_data
      sig {
        params(after_completion: T.nilable(::Stripe::PaymentLink::CreateParams::AfterCompletion), allow_promotion_codes: T.nilable(T::Boolean), application_fee_amount: T.nilable(Integer), application_fee_percent: T.nilable(Float), automatic_tax: T.nilable(::Stripe::PaymentLink::CreateParams::AutomaticTax), billing_address_collection: T.nilable(String), consent_collection: T.nilable(::Stripe::PaymentLink::CreateParams::ConsentCollection), currency: T.nilable(String), custom_fields: T.nilable(T::Array[::Stripe::PaymentLink::CreateParams::CustomField]), custom_text: T.nilable(::Stripe::PaymentLink::CreateParams::CustomText), customer_creation: T.nilable(String), expand: T.nilable(T::Array[String]), inactive_message: T.nilable(String), invoice_creation: T.nilable(::Stripe::PaymentLink::CreateParams::InvoiceCreation), line_items: T::Array[::Stripe::PaymentLink::CreateParams::LineItem], metadata: T.nilable(T::Hash[String, String]), on_behalf_of: T.nilable(String), optional_items: T.nilable(T::Array[::Stripe::PaymentLink::CreateParams::OptionalItem]), payment_intent_data: T.nilable(::Stripe::PaymentLink::CreateParams::PaymentIntentData), payment_method_collection: T.nilable(String), payment_method_types: T.nilable(T::Array[String]), phone_number_collection: T.nilable(::Stripe::PaymentLink::CreateParams::PhoneNumberCollection), restrictions: T.nilable(::Stripe::PaymentLink::CreateParams::Restrictions), shipping_address_collection: T.nilable(::Stripe::PaymentLink::CreateParams::ShippingAddressCollection), shipping_options: T.nilable(T::Array[::Stripe::PaymentLink::CreateParams::ShippingOption]), submit_type: T.nilable(String), subscription_data: T.nilable(::Stripe::PaymentLink::CreateParams::SubscriptionData), tax_id_collection: T.nilable(::Stripe::PaymentLink::CreateParams::TaxIdCollection), transfer_data: T.nilable(::Stripe::PaymentLink::CreateParams::TransferData)).void
       }
      def initialize(
        after_completion: nil,
        allow_promotion_codes: nil,
        application_fee_amount: nil,
        application_fee_percent: nil,
        automatic_tax: nil,
        billing_address_collection: nil,
        consent_collection: nil,
        currency: nil,
        custom_fields: nil,
        custom_text: nil,
        customer_creation: nil,
        expand: nil,
        inactive_message: nil,
        invoice_creation: nil,
        line_items: nil,
        metadata: nil,
        on_behalf_of: nil,
        optional_items: nil,
        payment_intent_data: nil,
        payment_method_collection: nil,
        payment_method_types: nil,
        phone_number_collection: nil,
        restrictions: nil,
        shipping_address_collection: nil,
        shipping_options: nil,
        submit_type: nil,
        subscription_data: nil,
        tax_id_collection: nil,
        transfer_data: nil
      ); end
    end
    class UpdateParams < Stripe::RequestParams
      class AfterCompletion < Stripe::RequestParams
        class HostedConfirmation < Stripe::RequestParams
          # A custom message to display to the customer after the purchase is complete.
          sig { returns(T.nilable(String)) }
          attr_accessor :custom_message
          sig { params(custom_message: T.nilable(String)).void }
          def initialize(custom_message: nil); end
        end
        class Redirect < Stripe::RequestParams
          # The URL the customer will be redirected to after the purchase is complete. You can embed `{CHECKOUT_SESSION_ID}` into the URL to have the `id` of the completed [checkout session](https://stripe.com/docs/api/checkout/sessions/object#checkout_session_object-id) included.
          sig { returns(String) }
          attr_accessor :url
          sig { params(url: String).void }
          def initialize(url: nil); end
        end
        # Configuration when `type=hosted_confirmation`.
        sig {
          returns(T.nilable(::Stripe::PaymentLink::UpdateParams::AfterCompletion::HostedConfirmation))
         }
        attr_accessor :hosted_confirmation
        # Configuration when `type=redirect`.
        sig { returns(T.nilable(::Stripe::PaymentLink::UpdateParams::AfterCompletion::Redirect)) }
        attr_accessor :redirect
        # The specified behavior after the purchase is complete. Either `redirect` or `hosted_confirmation`.
        sig { returns(String) }
        attr_accessor :type
        sig {
          params(hosted_confirmation: T.nilable(::Stripe::PaymentLink::UpdateParams::AfterCompletion::HostedConfirmation), redirect: T.nilable(::Stripe::PaymentLink::UpdateParams::AfterCompletion::Redirect), type: String).void
         }
        def initialize(hosted_confirmation: nil, redirect: nil, type: nil); end
      end
      class AutomaticTax < Stripe::RequestParams
        class Liability < Stripe::RequestParams
          # The connected account being referenced when `type` is `account`.
          sig { returns(T.nilable(String)) }
          attr_accessor :account
          # Type of the account referenced in the request.
          sig { returns(String) }
          attr_accessor :type
          sig { params(account: T.nilable(String), type: String).void }
          def initialize(account: nil, type: nil); end
        end
        # Set to `true` to [calculate tax automatically](https://docs.stripe.com/tax) using the customer's location.
        #
        # Enabling this parameter causes the payment link to collect any billing address information necessary for tax calculation.
        sig { returns(T::Boolean) }
        attr_accessor :enabled
        # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
        sig { returns(T.nilable(::Stripe::PaymentLink::UpdateParams::AutomaticTax::Liability)) }
        attr_accessor :liability
        sig {
          params(enabled: T::Boolean, liability: T.nilable(::Stripe::PaymentLink::UpdateParams::AutomaticTax::Liability)).void
         }
        def initialize(enabled: nil, liability: nil); end
      end
      class CustomField < Stripe::RequestParams
        class Dropdown < Stripe::RequestParams
          class Option < Stripe::RequestParams
            # The label for the option, displayed to the customer. Up to 100 characters.
            sig { returns(String) }
            attr_accessor :label
            # The value for this option, not displayed to the customer, used by your integration to reconcile the option selected by the customer. Must be unique to this option, alphanumeric, and up to 100 characters.
            sig { returns(String) }
            attr_accessor :value
            sig { params(label: String, value: String).void }
            def initialize(label: nil, value: nil); end
          end
          # The value that will pre-fill the field on the payment page.Must match a `value` in the `options` array.
          sig { returns(T.nilable(String)) }
          attr_accessor :default_value
          # The options available for the customer to select. Up to 200 options allowed.
          sig {
            returns(T::Array[::Stripe::PaymentLink::UpdateParams::CustomField::Dropdown::Option])
           }
          attr_accessor :options
          sig {
            params(default_value: T.nilable(String), options: T::Array[::Stripe::PaymentLink::UpdateParams::CustomField::Dropdown::Option]).void
           }
          def initialize(default_value: nil, options: nil); end
        end
        class Label < Stripe::RequestParams
          # Custom text for the label, displayed to the customer. Up to 50 characters.
          sig { returns(String) }
          attr_accessor :custom
          # The type of the label.
          sig { returns(String) }
          attr_accessor :type
          sig { params(custom: String, type: String).void }
          def initialize(custom: nil, type: nil); end
        end
        class Numeric < Stripe::RequestParams
          # The value that will pre-fill the field on the payment page.
          sig { returns(T.nilable(String)) }
          attr_accessor :default_value
          # The maximum character length constraint for the customer's input.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :maximum_length
          # The minimum character length requirement for the customer's input.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :minimum_length
          sig {
            params(default_value: T.nilable(String), maximum_length: T.nilable(Integer), minimum_length: T.nilable(Integer)).void
           }
          def initialize(default_value: nil, maximum_length: nil, minimum_length: nil); end
        end
        class Text < Stripe::RequestParams
          # The value that will pre-fill the field on the payment page.
          sig { returns(T.nilable(String)) }
          attr_accessor :default_value
          # The maximum character length constraint for the customer's input.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :maximum_length
          # The minimum character length requirement for the customer's input.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :minimum_length
          sig {
            params(default_value: T.nilable(String), maximum_length: T.nilable(Integer), minimum_length: T.nilable(Integer)).void
           }
          def initialize(default_value: nil, maximum_length: nil, minimum_length: nil); end
        end
        # Configuration for `type=dropdown` fields.
        sig { returns(T.nilable(::Stripe::PaymentLink::UpdateParams::CustomField::Dropdown)) }
        attr_accessor :dropdown
        # String of your choice that your integration can use to reconcile this field. Must be unique to this field, alphanumeric, and up to 200 characters.
        sig { returns(String) }
        attr_accessor :key
        # The label for the field, displayed to the customer.
        sig { returns(::Stripe::PaymentLink::UpdateParams::CustomField::Label) }
        attr_accessor :label
        # Configuration for `type=numeric` fields.
        sig { returns(T.nilable(::Stripe::PaymentLink::UpdateParams::CustomField::Numeric)) }
        attr_accessor :numeric
        # Whether the customer is required to complete the field before completing the Checkout Session. Defaults to `false`.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :optional
        # Configuration for `type=text` fields.
        sig { returns(T.nilable(::Stripe::PaymentLink::UpdateParams::CustomField::Text)) }
        attr_accessor :text
        # The type of the field.
        sig { returns(String) }
        attr_accessor :type
        sig {
          params(dropdown: T.nilable(::Stripe::PaymentLink::UpdateParams::CustomField::Dropdown), key: String, label: ::Stripe::PaymentLink::UpdateParams::CustomField::Label, numeric: T.nilable(::Stripe::PaymentLink::UpdateParams::CustomField::Numeric), optional: T.nilable(T::Boolean), text: T.nilable(::Stripe::PaymentLink::UpdateParams::CustomField::Text), type: String).void
         }
        def initialize(
          dropdown: nil,
          key: nil,
          label: nil,
          numeric: nil,
          optional: nil,
          text: nil,
          type: nil
        ); end
      end
      class CustomText < Stripe::RequestParams
        class AfterSubmit < Stripe::RequestParams
          # Text may be up to 1200 characters in length.
          sig { returns(String) }
          attr_accessor :message
          sig { params(message: String).void }
          def initialize(message: nil); end
        end
        class ShippingAddress < Stripe::RequestParams
          # Text may be up to 1200 characters in length.
          sig { returns(String) }
          attr_accessor :message
          sig { params(message: String).void }
          def initialize(message: nil); end
        end
        class Submit < Stripe::RequestParams
          # Text may be up to 1200 characters in length.
          sig { returns(String) }
          attr_accessor :message
          sig { params(message: String).void }
          def initialize(message: nil); end
        end
        class TermsOfServiceAcceptance < Stripe::RequestParams
          # Text may be up to 1200 characters in length.
          sig { returns(String) }
          attr_accessor :message
          sig { params(message: String).void }
          def initialize(message: nil); end
        end
        # Custom text that should be displayed after the payment confirmation button.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentLink::UpdateParams::CustomText::AfterSubmit)))
         }
        attr_accessor :after_submit
        # Custom text that should be displayed alongside shipping address collection.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentLink::UpdateParams::CustomText::ShippingAddress)))
         }
        attr_accessor :shipping_address
        # Custom text that should be displayed alongside the payment confirmation button.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentLink::UpdateParams::CustomText::Submit)))
         }
        attr_accessor :submit
        # Custom text that should be displayed in place of the default terms of service agreement text.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentLink::UpdateParams::CustomText::TermsOfServiceAcceptance)))
         }
        attr_accessor :terms_of_service_acceptance
        sig {
          params(after_submit: T.nilable(T.any(String, ::Stripe::PaymentLink::UpdateParams::CustomText::AfterSubmit)), shipping_address: T.nilable(T.any(String, ::Stripe::PaymentLink::UpdateParams::CustomText::ShippingAddress)), submit: T.nilable(T.any(String, ::Stripe::PaymentLink::UpdateParams::CustomText::Submit)), terms_of_service_acceptance: T.nilable(T.any(String, ::Stripe::PaymentLink::UpdateParams::CustomText::TermsOfServiceAcceptance))).void
         }
        def initialize(
          after_submit: nil,
          shipping_address: nil,
          submit: nil,
          terms_of_service_acceptance: nil
        ); end
      end
      class InvoiceCreation < Stripe::RequestParams
        class InvoiceData < Stripe::RequestParams
          class CustomField < Stripe::RequestParams
            # The name of the custom field. This may be up to 40 characters.
            sig { returns(String) }
            attr_accessor :name
            # The value of the custom field. This may be up to 140 characters.
            sig { returns(String) }
            attr_accessor :value
            sig { params(name: String, value: String).void }
            def initialize(name: nil, value: nil); end
          end
          class Issuer < Stripe::RequestParams
            # The connected account being referenced when `type` is `account`.
            sig { returns(T.nilable(String)) }
            attr_accessor :account
            # Type of the account referenced in the request.
            sig { returns(String) }
            attr_accessor :type
            sig { params(account: T.nilable(String), type: String).void }
            def initialize(account: nil, type: nil); end
          end
          class RenderingOptions < Stripe::RequestParams
            # How line-item prices and amounts will be displayed with respect to tax on invoice PDFs. One of `exclude_tax` or `include_inclusive_tax`. `include_inclusive_tax` will include inclusive tax (and exclude exclusive tax) in invoice PDF amounts. `exclude_tax` will exclude all tax (inclusive and exclusive alike) from invoice PDF amounts.
            sig { returns(T.nilable(T.any(String, String))) }
            attr_accessor :amount_tax_display
            # ID of the invoice rendering template to use for this invoice.
            sig { returns(T.nilable(String)) }
            attr_accessor :template
            sig {
              params(amount_tax_display: T.nilable(T.any(String, String)), template: T.nilable(String)).void
             }
            def initialize(amount_tax_display: nil, template: nil); end
          end
          # The account tax IDs associated with the invoice.
          sig { returns(T.nilable(T.any(String, T::Array[String]))) }
          attr_accessor :account_tax_ids
          # Default custom fields to be displayed on invoices for this customer.
          sig {
            returns(T.nilable(T.any(String, T::Array[::Stripe::PaymentLink::UpdateParams::InvoiceCreation::InvoiceData::CustomField])))
           }
          attr_accessor :custom_fields
          # An arbitrary string attached to the object. Often useful for displaying to users.
          sig { returns(T.nilable(String)) }
          attr_accessor :description
          # Default footer to be displayed on invoices for this customer.
          sig { returns(T.nilable(String)) }
          attr_accessor :footer
          # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
          sig {
            returns(T.nilable(::Stripe::PaymentLink::UpdateParams::InvoiceCreation::InvoiceData::Issuer))
           }
          attr_accessor :issuer
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
          attr_accessor :metadata
          # Default options for invoice PDF rendering for this customer.
          sig {
            returns(T.nilable(T.any(String, ::Stripe::PaymentLink::UpdateParams::InvoiceCreation::InvoiceData::RenderingOptions)))
           }
          attr_accessor :rendering_options
          sig {
            params(account_tax_ids: T.nilable(T.any(String, T::Array[String])), custom_fields: T.nilable(T.any(String, T::Array[::Stripe::PaymentLink::UpdateParams::InvoiceCreation::InvoiceData::CustomField])), description: T.nilable(String), footer: T.nilable(String), issuer: T.nilable(::Stripe::PaymentLink::UpdateParams::InvoiceCreation::InvoiceData::Issuer), metadata: T.nilable(T.any(String, T::Hash[String, String])), rendering_options: T.nilable(T.any(String, ::Stripe::PaymentLink::UpdateParams::InvoiceCreation::InvoiceData::RenderingOptions))).void
           }
          def initialize(
            account_tax_ids: nil,
            custom_fields: nil,
            description: nil,
            footer: nil,
            issuer: nil,
            metadata: nil,
            rendering_options: nil
          ); end
        end
        # Whether the feature is enabled
        sig { returns(T::Boolean) }
        attr_accessor :enabled
        # Invoice PDF configuration.
        sig {
          returns(T.nilable(::Stripe::PaymentLink::UpdateParams::InvoiceCreation::InvoiceData))
         }
        attr_accessor :invoice_data
        sig {
          params(enabled: T::Boolean, invoice_data: T.nilable(::Stripe::PaymentLink::UpdateParams::InvoiceCreation::InvoiceData)).void
         }
        def initialize(enabled: nil, invoice_data: nil); end
      end
      class LineItem < Stripe::RequestParams
        class AdjustableQuantity < Stripe::RequestParams
          # Set to true if the quantity can be adjusted to any non-negative Integer.
          sig { returns(T::Boolean) }
          attr_accessor :enabled
          # The maximum quantity the customer can purchase. By default this value is 99. You can specify a value up to 999999.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :maximum
          # The minimum quantity the customer can purchase. By default this value is 0. If there is only one item in the cart then that item's quantity cannot go down to 0.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :minimum
          sig {
            params(enabled: T::Boolean, maximum: T.nilable(Integer), minimum: T.nilable(Integer)).void
           }
          def initialize(enabled: nil, maximum: nil, minimum: nil); end
        end
        # When set, provides configuration for this item’s quantity to be adjusted by the customer during checkout.
        sig {
          returns(T.nilable(::Stripe::PaymentLink::UpdateParams::LineItem::AdjustableQuantity))
         }
        attr_accessor :adjustable_quantity
        # The ID of an existing line item on the payment link.
        sig { returns(String) }
        attr_accessor :id
        # The quantity of the line item being purchased.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :quantity
        sig {
          params(adjustable_quantity: T.nilable(::Stripe::PaymentLink::UpdateParams::LineItem::AdjustableQuantity), id: String, quantity: T.nilable(Integer)).void
         }
        def initialize(adjustable_quantity: nil, id: nil, quantity: nil); end
      end
      class PaymentIntentData < Stripe::RequestParams
        # An arbitrary string attached to the object. Often useful for displaying to users.
        sig { returns(T.nilable(String)) }
        attr_accessor :description
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that will declaratively set metadata on [Payment Intents](https://stripe.com/docs/api/payment_intents) generated from this payment link. Unlike object-level metadata, this field is declarative. Updates will clear prior values.
        sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
        attr_accessor :metadata
        # Text that appears on the customer's statement as the statement descriptor for a non-card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
        #
        # Setting this value for a card charge returns an error. For card charges, set the [statement_descriptor_suffix](https://docs.stripe.com/get-started/account/statement-descriptors#dynamic) instead.
        sig { returns(T.nilable(String)) }
        attr_accessor :statement_descriptor
        # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement.
        sig { returns(T.nilable(String)) }
        attr_accessor :statement_descriptor_suffix
        # A string that identifies the resulting payment as part of a group. See the PaymentIntents [use case for connected accounts](https://stripe.com/docs/connect/separate-charges-and-transfers) for details.
        sig { returns(T.nilable(String)) }
        attr_accessor :transfer_group
        sig {
          params(description: T.nilable(String), metadata: T.nilable(T.any(String, T::Hash[String, String])), statement_descriptor: T.nilable(String), statement_descriptor_suffix: T.nilable(String), transfer_group: T.nilable(String)).void
         }
        def initialize(
          description: nil,
          metadata: nil,
          statement_descriptor: nil,
          statement_descriptor_suffix: nil,
          transfer_group: nil
        ); end
      end
      class PhoneNumberCollection < Stripe::RequestParams
        # Set to `true` to enable phone number collection.
        sig { returns(T::Boolean) }
        attr_accessor :enabled
        sig { params(enabled: T::Boolean).void }
        def initialize(enabled: nil); end
      end
      class Restrictions < Stripe::RequestParams
        class CompletedSessions < Stripe::RequestParams
          # The maximum number of checkout sessions that can be completed for the `completed_sessions` restriction to be met.
          sig { returns(Integer) }
          attr_accessor :limit
          sig { params(limit: Integer).void }
          def initialize(limit: nil); end
        end
        # Configuration for the `completed_sessions` restriction type.
        sig { returns(::Stripe::PaymentLink::UpdateParams::Restrictions::CompletedSessions) }
        attr_accessor :completed_sessions
        sig {
          params(completed_sessions: ::Stripe::PaymentLink::UpdateParams::Restrictions::CompletedSessions).void
         }
        def initialize(completed_sessions: nil); end
      end
      class ShippingAddressCollection < Stripe::RequestParams
        # An array of two-letter ISO country codes representing which countries Checkout should provide as options for
        # shipping locations.
        sig { returns(T::Array[String]) }
        attr_accessor :allowed_countries
        sig { params(allowed_countries: T::Array[String]).void }
        def initialize(allowed_countries: nil); end
      end
      class SubscriptionData < Stripe::RequestParams
        class InvoiceSettings < Stripe::RequestParams
          class Issuer < Stripe::RequestParams
            # The connected account being referenced when `type` is `account`.
            sig { returns(T.nilable(String)) }
            attr_accessor :account
            # Type of the account referenced in the request.
            sig { returns(String) }
            attr_accessor :type
            sig { params(account: T.nilable(String), type: String).void }
            def initialize(account: nil, type: nil); end
          end
          # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
          sig {
            returns(T.nilable(::Stripe::PaymentLink::UpdateParams::SubscriptionData::InvoiceSettings::Issuer))
           }
          attr_accessor :issuer
          sig {
            params(issuer: T.nilable(::Stripe::PaymentLink::UpdateParams::SubscriptionData::InvoiceSettings::Issuer)).void
           }
          def initialize(issuer: nil); end
        end
        class TrialSettings < Stripe::RequestParams
          class EndBehavior < Stripe::RequestParams
            # Indicates how the subscription should change when the trial ends if the user did not provide a payment method.
            sig { returns(String) }
            attr_accessor :missing_payment_method
            sig { params(missing_payment_method: String).void }
            def initialize(missing_payment_method: nil); end
          end
          # Defines how the subscription should behave when the user's free trial ends.
          sig {
            returns(::Stripe::PaymentLink::UpdateParams::SubscriptionData::TrialSettings::EndBehavior)
           }
          attr_accessor :end_behavior
          sig {
            params(end_behavior: ::Stripe::PaymentLink::UpdateParams::SubscriptionData::TrialSettings::EndBehavior).void
           }
          def initialize(end_behavior: nil); end
        end
        # All invoices will be billed using the specified settings.
        sig {
          returns(T.nilable(::Stripe::PaymentLink::UpdateParams::SubscriptionData::InvoiceSettings))
         }
        attr_accessor :invoice_settings
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that will declaratively set metadata on [Subscriptions](https://stripe.com/docs/api/subscriptions) generated from this payment link. Unlike object-level metadata, this field is declarative. Updates will clear prior values.
        sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
        attr_accessor :metadata
        # Integer representing the number of trial period days before the customer is charged for the first time. Has to be at least 1.
        sig { returns(T.nilable(T.any(String, Integer))) }
        attr_accessor :trial_period_days
        # Settings related to subscription trials.
        sig {
          returns(T.nilable(T.any(String, ::Stripe::PaymentLink::UpdateParams::SubscriptionData::TrialSettings)))
         }
        attr_accessor :trial_settings
        sig {
          params(invoice_settings: T.nilable(::Stripe::PaymentLink::UpdateParams::SubscriptionData::InvoiceSettings), metadata: T.nilable(T.any(String, T::Hash[String, String])), trial_period_days: T.nilable(T.any(String, Integer)), trial_settings: T.nilable(T.any(String, ::Stripe::PaymentLink::UpdateParams::SubscriptionData::TrialSettings))).void
         }
        def initialize(
          invoice_settings: nil,
          metadata: nil,
          trial_period_days: nil,
          trial_settings: nil
        ); end
      end
      class TaxIdCollection < Stripe::RequestParams
        # Enable tax ID collection during checkout. Defaults to `false`.
        sig { returns(T::Boolean) }
        attr_accessor :enabled
        # Describes whether a tax ID is required during checkout. Defaults to `never`.
        sig { returns(T.nilable(String)) }
        attr_accessor :required
        sig { params(enabled: T::Boolean, required: T.nilable(String)).void }
        def initialize(enabled: nil, required: nil); end
      end
      # Whether the payment link's `url` is active. If `false`, customers visiting the URL will be shown a page saying that the link has been deactivated.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :active
      # Behavior after the purchase is complete.
      sig { returns(T.nilable(::Stripe::PaymentLink::UpdateParams::AfterCompletion)) }
      attr_accessor :after_completion
      # Enables user redeemable promotion codes.
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :allow_promotion_codes
      # Configuration for automatic tax collection.
      sig { returns(T.nilable(::Stripe::PaymentLink::UpdateParams::AutomaticTax)) }
      attr_accessor :automatic_tax
      # Configuration for collecting the customer's billing address. Defaults to `auto`.
      sig { returns(T.nilable(String)) }
      attr_accessor :billing_address_collection
      # Collect additional information from your customer using custom fields. Up to 3 fields are supported.
      sig {
        returns(T.nilable(T.any(String, T::Array[::Stripe::PaymentLink::UpdateParams::CustomField])))
       }
      attr_accessor :custom_fields
      # Display additional text for your customers using custom text.
      sig { returns(T.nilable(::Stripe::PaymentLink::UpdateParams::CustomText)) }
      attr_accessor :custom_text
      # Configures whether [checkout sessions](https://stripe.com/docs/api/checkout/sessions) created by this payment link create a [Customer](https://stripe.com/docs/api/customers).
      sig { returns(T.nilable(String)) }
      attr_accessor :customer_creation
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # The custom message to be displayed to a customer when a payment link is no longer active.
      sig { returns(T.nilable(String)) }
      attr_accessor :inactive_message
      # Generate a post-purchase Invoice for one-time payments.
      sig { returns(T.nilable(::Stripe::PaymentLink::UpdateParams::InvoiceCreation)) }
      attr_accessor :invoice_creation
      # The line items representing what is being sold. Each line item represents an item being sold. Up to 20 line items are supported.
      sig { returns(T.nilable(T::Array[::Stripe::PaymentLink::UpdateParams::LineItem])) }
      attr_accessor :line_items
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`. Metadata associated with this Payment Link will automatically be copied to [checkout sessions](https://stripe.com/docs/api/checkout/sessions) created by this payment link.
      sig { returns(T.nilable(T::Hash[String, String])) }
      attr_accessor :metadata
      # A subset of parameters to be passed to PaymentIntent creation for Checkout Sessions in `payment` mode.
      sig { returns(T.nilable(::Stripe::PaymentLink::UpdateParams::PaymentIntentData)) }
      attr_accessor :payment_intent_data
      # Specify whether Checkout should collect a payment method. When set to `if_required`, Checkout will not collect a payment method when the total due for the session is 0.This may occur if the Checkout Session includes a free trial or a discount.
      #
      # Can only be set in `subscription` mode. Defaults to `always`.
      #
      # If you'd like information on how to collect a payment method outside of Checkout, read the guide on [configuring subscriptions with a free trial](https://stripe.com/docs/payments/checkout/free-trials).
      sig { returns(T.nilable(String)) }
      attr_accessor :payment_method_collection
      # The list of payment method types that customers can use. Pass an empty string to enable dynamic payment methods that use your [payment method settings](https://dashboard.stripe.com/settings/payment_methods).
      sig { returns(T.nilable(T.any(String, T::Array[String]))) }
      attr_accessor :payment_method_types
      # Controls phone number collection settings during checkout.
      #
      # We recommend that you review your privacy policy and check with your legal contacts.
      sig { returns(T.nilable(::Stripe::PaymentLink::UpdateParams::PhoneNumberCollection)) }
      attr_accessor :phone_number_collection
      # Settings that restrict the usage of a payment link.
      sig { returns(T.nilable(T.any(String, ::Stripe::PaymentLink::UpdateParams::Restrictions))) }
      attr_accessor :restrictions
      # Configuration for collecting the customer's shipping address.
      sig {
        returns(T.nilable(T.any(String, ::Stripe::PaymentLink::UpdateParams::ShippingAddressCollection)))
       }
      attr_accessor :shipping_address_collection
      # Describes the type of transaction being performed in order to customize relevant text on the page, such as the submit button. Changing this value will also affect the hostname in the [url](https://stripe.com/docs/api/payment_links/payment_links/object#url) property (example: `donate.stripe.com`).
      sig { returns(T.nilable(String)) }
      attr_accessor :submit_type
      # When creating a subscription, the specified configuration data will be used. There must be at least one line item with a recurring price to use `subscription_data`.
      sig { returns(T.nilable(::Stripe::PaymentLink::UpdateParams::SubscriptionData)) }
      attr_accessor :subscription_data
      # Controls tax ID collection during checkout.
      sig { returns(T.nilable(::Stripe::PaymentLink::UpdateParams::TaxIdCollection)) }
      attr_accessor :tax_id_collection
      sig {
        params(active: T.nilable(T::Boolean), after_completion: T.nilable(::Stripe::PaymentLink::UpdateParams::AfterCompletion), allow_promotion_codes: T.nilable(T::Boolean), automatic_tax: T.nilable(::Stripe::PaymentLink::UpdateParams::AutomaticTax), billing_address_collection: T.nilable(String), custom_fields: T.nilable(T.any(String, T::Array[::Stripe::PaymentLink::UpdateParams::CustomField])), custom_text: T.nilable(::Stripe::PaymentLink::UpdateParams::CustomText), customer_creation: T.nilable(String), expand: T.nilable(T::Array[String]), inactive_message: T.nilable(String), invoice_creation: T.nilable(::Stripe::PaymentLink::UpdateParams::InvoiceCreation), line_items: T.nilable(T::Array[::Stripe::PaymentLink::UpdateParams::LineItem]), metadata: T.nilable(T::Hash[String, String]), payment_intent_data: T.nilable(::Stripe::PaymentLink::UpdateParams::PaymentIntentData), payment_method_collection: T.nilable(String), payment_method_types: T.nilable(T.any(String, T::Array[String])), phone_number_collection: T.nilable(::Stripe::PaymentLink::UpdateParams::PhoneNumberCollection), restrictions: T.nilable(T.any(String, ::Stripe::PaymentLink::UpdateParams::Restrictions)), shipping_address_collection: T.nilable(T.any(String, ::Stripe::PaymentLink::UpdateParams::ShippingAddressCollection)), submit_type: T.nilable(String), subscription_data: T.nilable(::Stripe::PaymentLink::UpdateParams::SubscriptionData), tax_id_collection: T.nilable(::Stripe::PaymentLink::UpdateParams::TaxIdCollection)).void
       }
      def initialize(
        active: nil,
        after_completion: nil,
        allow_promotion_codes: nil,
        automatic_tax: nil,
        billing_address_collection: nil,
        custom_fields: nil,
        custom_text: nil,
        customer_creation: nil,
        expand: nil,
        inactive_message: nil,
        invoice_creation: nil,
        line_items: nil,
        metadata: nil,
        payment_intent_data: nil,
        payment_method_collection: nil,
        payment_method_types: nil,
        phone_number_collection: nil,
        restrictions: nil,
        shipping_address_collection: nil,
        submit_type: nil,
        subscription_data: nil,
        tax_id_collection: nil
      ); end
    end
    class ListLineItemsParams < Stripe::RequestParams
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      sig { returns(T.nilable(T::Array[String])) }
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      sig { returns(T.nilable(Integer)) }
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      sig { returns(T.nilable(String)) }
      attr_accessor :starting_after
      sig {
        params(ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String)).void
       }
      def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil); end
    end
    # Creates a payment link.
    sig {
      params(params: T.any(::Stripe::PaymentLink::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentLink)
     }
    def self.create(params = {}, opts = {}); end

    # Returns a list of your payment links.
    sig {
      params(params: T.any(::Stripe::PaymentLink::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list(params = {}, opts = {}); end

    # When retrieving a payment link, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    sig {
      params(params: T.any(::Stripe::PaymentLink::ListLineItemsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def list_line_items(params = {}, opts = {}); end

    # When retrieving a payment link, there is an includable line_items property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.
    sig {
      params(payment_link: String, params: T.any(::Stripe::PaymentLink::ListLineItemsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
     }
    def self.list_line_items(payment_link, params = {}, opts = {}); end

    # Updates a payment link.
    sig {
      params(payment_link: String, params: T.any(::Stripe::PaymentLink::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::PaymentLink)
     }
    def self.update(payment_link, params = {}, opts = {}); end
  end
end