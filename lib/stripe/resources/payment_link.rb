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
        # The custom message that is displayed to the customer after the purchase is complete.
        attr_reader :custom_message
      end

      class Redirect < Stripe::StripeObject
        # The URL the customer will be redirected to after the purchase is complete.
        attr_reader :url
      end
      # Attribute for field hosted_confirmation
      attr_reader :hosted_confirmation
      # Attribute for field redirect
      attr_reader :redirect
      # The specified behavior after the purchase is complete.
      attr_reader :type
    end

    class AutomaticTax < Stripe::StripeObject
      class Liability < Stripe::StripeObject
        # The connected account being referenced when `type` is `account`.
        attr_reader :account
        # Type of the account referenced.
        attr_reader :type
      end
      # If `true`, tax will be calculated automatically using the customer's location.
      attr_reader :enabled
      # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
      attr_reader :liability
    end

    class ConsentCollection < Stripe::StripeObject
      class PaymentMethodReuseAgreement < Stripe::StripeObject
        # Determines the position and visibility of the payment method reuse agreement in the UI. When set to `auto`, Stripe's defaults will be used.
        #
        # When set to `hidden`, the payment method reuse agreement text will always be hidden in the UI.
        attr_reader :position
      end
      # Settings related to the payment method reuse text shown in the Checkout UI.
      attr_reader :payment_method_reuse_agreement
      # If set to `auto`, enables the collection of customer consent for promotional communications.
      attr_reader :promotions
      # If set to `required`, it requires cutomers to accept the terms of service before being able to pay. If set to `none`, customers won't be shown a checkbox to accept the terms of service.
      attr_reader :terms_of_service
    end

    class CustomField < Stripe::StripeObject
      class Dropdown < Stripe::StripeObject
        class Option < Stripe::StripeObject
          # The label for the option, displayed to the customer. Up to 100 characters.
          attr_reader :label
          # The value for this option, not displayed to the customer, used by your integration to reconcile the option selected by the customer. Must be unique to this option, alphanumeric, and up to 100 characters.
          attr_reader :value
        end
        # The value that will pre-fill on the payment page.
        attr_reader :default_value
        # The options available for the customer to select. Up to 200 options allowed.
        attr_reader :options
      end

      class Label < Stripe::StripeObject
        # Custom text for the label, displayed to the customer. Up to 50 characters.
        attr_reader :custom
        # The type of the label.
        attr_reader :type
      end

      class Numeric < Stripe::StripeObject
        # The value that will pre-fill the field on the payment page.
        attr_reader :default_value
        # The maximum character length constraint for the customer's input.
        attr_reader :maximum_length
        # The minimum character length requirement for the customer's input.
        attr_reader :minimum_length
      end

      class Text < Stripe::StripeObject
        # The value that will pre-fill the field on the payment page.
        attr_reader :default_value
        # The maximum character length constraint for the customer's input.
        attr_reader :maximum_length
        # The minimum character length requirement for the customer's input.
        attr_reader :minimum_length
      end
      # Attribute for field dropdown
      attr_reader :dropdown
      # String of your choice that your integration can use to reconcile this field. Must be unique to this field, alphanumeric, and up to 200 characters.
      attr_reader :key
      # Attribute for field label
      attr_reader :label
      # Attribute for field numeric
      attr_reader :numeric
      # Whether the customer is required to complete the field before completing the Checkout Session. Defaults to `false`.
      attr_reader :optional
      # Attribute for field text
      attr_reader :text
      # The type of the field.
      attr_reader :type
    end

    class CustomText < Stripe::StripeObject
      class AfterSubmit < Stripe::StripeObject
        # Text may be up to 1200 characters in length.
        attr_reader :message
      end

      class ShippingAddress < Stripe::StripeObject
        # Text may be up to 1200 characters in length.
        attr_reader :message
      end

      class Submit < Stripe::StripeObject
        # Text may be up to 1200 characters in length.
        attr_reader :message
      end

      class TermsOfServiceAcceptance < Stripe::StripeObject
        # Text may be up to 1200 characters in length.
        attr_reader :message
      end
      # Custom text that should be displayed after the payment confirmation button.
      attr_reader :after_submit
      # Custom text that should be displayed alongside shipping address collection.
      attr_reader :shipping_address
      # Custom text that should be displayed alongside the payment confirmation button.
      attr_reader :submit
      # Custom text that should be displayed in place of the default terms of service agreement text.
      attr_reader :terms_of_service_acceptance
    end

    class InvoiceCreation < Stripe::StripeObject
      class InvoiceData < Stripe::StripeObject
        class CustomField < Stripe::StripeObject
          # The name of the custom field.
          attr_reader :name
          # The value of the custom field.
          attr_reader :value
        end

        class Issuer < Stripe::StripeObject
          # The connected account being referenced when `type` is `account`.
          attr_reader :account
          # Type of the account referenced.
          attr_reader :type
        end

        class RenderingOptions < Stripe::StripeObject
          # How line-item prices and amounts will be displayed with respect to tax on invoice PDFs.
          attr_reader :amount_tax_display
        end
        # The account tax IDs associated with the invoice.
        attr_reader :account_tax_ids
        # A list of up to 4 custom fields to be displayed on the invoice.
        attr_reader :custom_fields
        # An arbitrary string attached to the object. Often useful for displaying to users.
        attr_reader :description
        # Footer to be displayed on the invoice.
        attr_reader :footer
        # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
        attr_reader :issuer
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
        attr_reader :metadata
        # Options for invoice PDF rendering.
        attr_reader :rendering_options
      end
      # Enable creating an invoice on successful payment.
      attr_reader :enabled
      # Configuration for the invoice. Default invoice values will be used if unspecified.
      attr_reader :invoice_data
    end

    class OptionalItem < Stripe::StripeObject
      class AdjustableQuantity < Stripe::StripeObject
        # Set to true if the quantity can be adjusted to any non-negative integer.
        attr_reader :enabled
        # The maximum quantity of this item the customer can purchase. By default this value is 99.
        attr_reader :maximum
        # The minimum quantity of this item the customer must purchase, if they choose to purchase it. Because this item is optional, the customer will always be able to remove it from their order, even if the `minimum` configured here is greater than 0. By default this value is 0.
        attr_reader :minimum
      end
      # Attribute for field adjustable_quantity
      attr_reader :adjustable_quantity
      # Attribute for field price
      attr_reader :price
      # Attribute for field quantity
      attr_reader :quantity
    end

    class PaymentIntentData < Stripe::StripeObject
      # Indicates when the funds will be captured from the customer's account.
      attr_reader :capture_method
      # An arbitrary string attached to the object. Often useful for displaying to users.
      attr_reader :description
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that will set metadata on [Payment Intents](https://stripe.com/docs/api/payment_intents) generated from this payment link.
      attr_reader :metadata
      # Indicates that you intend to make future payments with the payment method collected during checkout.
      attr_reader :setup_future_usage
      # For a non-card payment, information about the charge that appears on the customer's statement when this payment succeeds in creating a charge.
      attr_reader :statement_descriptor
      # For a card payment, information about the charge that appears on the customer's statement when this payment succeeds in creating a charge. Concatenated with the account's statement descriptor prefix to form the complete statement descriptor.
      attr_reader :statement_descriptor_suffix
      # A string that identifies the resulting payment as part of a group. See the PaymentIntents [use case for connected accounts](https://stripe.com/docs/connect/separate-charges-and-transfers) for details.
      attr_reader :transfer_group
    end

    class PhoneNumberCollection < Stripe::StripeObject
      # If `true`, a phone number will be collected during checkout.
      attr_reader :enabled
    end

    class Restrictions < Stripe::StripeObject
      class CompletedSessions < Stripe::StripeObject
        # The current number of checkout sessions that have been completed on the payment link which count towards the `completed_sessions` restriction to be met.
        attr_reader :count
        # The maximum number of checkout sessions that can be completed for the `completed_sessions` restriction to be met.
        attr_reader :limit
      end
      # Attribute for field completed_sessions
      attr_reader :completed_sessions
    end

    class ShippingAddressCollection < Stripe::StripeObject
      # An array of two-letter ISO country codes representing which countries Checkout should provide as options for shipping locations. Unsupported country codes: `AS, CX, CC, CU, HM, IR, KP, MH, FM, NF, MP, PW, SD, SY, UM, VI`.
      attr_reader :allowed_countries
    end

    class ShippingOption < Stripe::StripeObject
      # A non-negative integer in cents representing how much to charge.
      attr_reader :shipping_amount
      # The ID of the Shipping Rate to use for this shipping option.
      attr_reader :shipping_rate
    end

    class SubscriptionData < Stripe::StripeObject
      class InvoiceSettings < Stripe::StripeObject
        class Issuer < Stripe::StripeObject
          # The connected account being referenced when `type` is `account`.
          attr_reader :account
          # Type of the account referenced.
          attr_reader :type
        end
        # Attribute for field issuer
        attr_reader :issuer
      end

      class TrialSettings < Stripe::StripeObject
        class EndBehavior < Stripe::StripeObject
          # Indicates how the subscription should change when the trial ends if the user did not provide a payment method.
          attr_reader :missing_payment_method
        end
        # Defines how a subscription behaves when a free trial ends.
        attr_reader :end_behavior
      end
      # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
      attr_reader :description
      # Attribute for field invoice_settings
      attr_reader :invoice_settings
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that will set metadata on [Subscriptions](https://stripe.com/docs/api/subscriptions) generated from this payment link.
      attr_reader :metadata
      # Integer representing the number of trial period days before the customer is charged for the first time.
      attr_reader :trial_period_days
      # Settings related to subscription trials.
      attr_reader :trial_settings
    end

    class TaxIdCollection < Stripe::StripeObject
      # Indicates whether tax ID collection is enabled for the session.
      attr_reader :enabled
      # Attribute for field required
      attr_reader :required
    end

    class TransferData < Stripe::StripeObject
      # The amount in cents (or local equivalent) that will be transferred to the destination account. By default, the entire amount is transferred to the destination.
      attr_reader :amount
      # The connected account receiving the transfer.
      attr_reader :destination
    end

    class ListParams < Stripe::RequestParams
      # Only return payment links that are active or inactive (e.g., pass `false` to list all inactive payment links).
      attr_accessor :active
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(active: nil, ending_before: nil, expand: nil, limit: nil, starting_after: nil)
        @active = active
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @starting_after = starting_after
      end
    end

    class CreateParams < Stripe::RequestParams
      class AfterCompletion < Stripe::RequestParams
        class HostedConfirmation < Stripe::RequestParams
          # A custom message to display to the customer after the purchase is complete.
          attr_accessor :custom_message

          def initialize(custom_message: nil)
            @custom_message = custom_message
          end
        end

        class Redirect < Stripe::RequestParams
          # The URL the customer will be redirected to after the purchase is complete. You can embed `{CHECKOUT_SESSION_ID}` into the URL to have the `id` of the completed [checkout session](https://stripe.com/docs/api/checkout/sessions/object#checkout_session_object-id) included.
          attr_accessor :url

          def initialize(url: nil)
            @url = url
          end
        end
        # Configuration when `type=hosted_confirmation`.
        attr_accessor :hosted_confirmation
        # Configuration when `type=redirect`.
        attr_accessor :redirect
        # The specified behavior after the purchase is complete. Either `redirect` or `hosted_confirmation`.
        attr_accessor :type

        def initialize(hosted_confirmation: nil, redirect: nil, type: nil)
          @hosted_confirmation = hosted_confirmation
          @redirect = redirect
          @type = type
        end
      end

      class AutomaticTax < Stripe::RequestParams
        class Liability < Stripe::RequestParams
          # The connected account being referenced when `type` is `account`.
          attr_accessor :account
          # Type of the account referenced in the request.
          attr_accessor :type

          def initialize(account: nil, type: nil)
            @account = account
            @type = type
          end
        end
        # Set to `true` to [calculate tax automatically](https://docs.stripe.com/tax) using the customer's location.
        #
        # Enabling this parameter causes the payment link to collect any billing address information necessary for tax calculation.
        attr_accessor :enabled
        # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
        attr_accessor :liability

        def initialize(enabled: nil, liability: nil)
          @enabled = enabled
          @liability = liability
        end
      end

      class ConsentCollection < Stripe::RequestParams
        class PaymentMethodReuseAgreement < Stripe::RequestParams
          # Determines the position and visibility of the payment method reuse agreement in the UI. When set to `auto`, Stripe's
          # defaults will be used. When set to `hidden`, the payment method reuse agreement text will always be hidden in the UI.
          attr_accessor :position

          def initialize(position: nil)
            @position = position
          end
        end
        # Determines the display of payment method reuse agreement text in the UI. If set to `hidden`, it will hide legal text related to the reuse of a payment method.
        attr_accessor :payment_method_reuse_agreement
        # If set to `auto`, enables the collection of customer consent for promotional communications. The Checkout
        # Session will determine whether to display an option to opt into promotional communication
        # from the merchant depending on the customer's locale. Only available to US merchants.
        attr_accessor :promotions
        # If set to `required`, it requires customers to check a terms of service checkbox before being able to pay.
        # There must be a valid terms of service URL set in your [Dashboard settings](https://dashboard.stripe.com/settings/public).
        attr_accessor :terms_of_service

        def initialize(payment_method_reuse_agreement: nil, promotions: nil, terms_of_service: nil)
          @payment_method_reuse_agreement = payment_method_reuse_agreement
          @promotions = promotions
          @terms_of_service = terms_of_service
        end
      end

      class CustomField < Stripe::RequestParams
        class Dropdown < Stripe::RequestParams
          class Option < Stripe::RequestParams
            # The label for the option, displayed to the customer. Up to 100 characters.
            attr_accessor :label
            # The value for this option, not displayed to the customer, used by your integration to reconcile the option selected by the customer. Must be unique to this option, alphanumeric, and up to 100 characters.
            attr_accessor :value

            def initialize(label: nil, value: nil)
              @label = label
              @value = value
            end
          end
          # The value that will pre-fill the field on the payment page.Must match a `value` in the `options` array.
          attr_accessor :default_value
          # The options available for the customer to select. Up to 200 options allowed.
          attr_accessor :options

          def initialize(default_value: nil, options: nil)
            @default_value = default_value
            @options = options
          end
        end

        class Label < Stripe::RequestParams
          # Custom text for the label, displayed to the customer. Up to 50 characters.
          attr_accessor :custom
          # The type of the label.
          attr_accessor :type

          def initialize(custom: nil, type: nil)
            @custom = custom
            @type = type
          end
        end

        class Numeric < Stripe::RequestParams
          # The value that will pre-fill the field on the payment page.
          attr_accessor :default_value
          # The maximum character length constraint for the customer's input.
          attr_accessor :maximum_length
          # The minimum character length requirement for the customer's input.
          attr_accessor :minimum_length

          def initialize(default_value: nil, maximum_length: nil, minimum_length: nil)
            @default_value = default_value
            @maximum_length = maximum_length
            @minimum_length = minimum_length
          end
        end

        class Text < Stripe::RequestParams
          # The value that will pre-fill the field on the payment page.
          attr_accessor :default_value
          # The maximum character length constraint for the customer's input.
          attr_accessor :maximum_length
          # The minimum character length requirement for the customer's input.
          attr_accessor :minimum_length

          def initialize(default_value: nil, maximum_length: nil, minimum_length: nil)
            @default_value = default_value
            @maximum_length = maximum_length
            @minimum_length = minimum_length
          end
        end
        # Configuration for `type=dropdown` fields.
        attr_accessor :dropdown
        # String of your choice that your integration can use to reconcile this field. Must be unique to this field, alphanumeric, and up to 200 characters.
        attr_accessor :key
        # The label for the field, displayed to the customer.
        attr_accessor :label
        # Configuration for `type=numeric` fields.
        attr_accessor :numeric
        # Whether the customer is required to complete the field before completing the Checkout Session. Defaults to `false`.
        attr_accessor :optional
        # Configuration for `type=text` fields.
        attr_accessor :text
        # The type of the field.
        attr_accessor :type

        def initialize(
          dropdown: nil,
          key: nil,
          label: nil,
          numeric: nil,
          optional: nil,
          text: nil,
          type: nil
        )
          @dropdown = dropdown
          @key = key
          @label = label
          @numeric = numeric
          @optional = optional
          @text = text
          @type = type
        end
      end

      class CustomText < Stripe::RequestParams
        class AfterSubmit < Stripe::RequestParams
          # Text may be up to 1200 characters in length.
          attr_accessor :message

          def initialize(message: nil)
            @message = message
          end
        end

        class ShippingAddress < Stripe::RequestParams
          # Text may be up to 1200 characters in length.
          attr_accessor :message

          def initialize(message: nil)
            @message = message
          end
        end

        class Submit < Stripe::RequestParams
          # Text may be up to 1200 characters in length.
          attr_accessor :message

          def initialize(message: nil)
            @message = message
          end
        end

        class TermsOfServiceAcceptance < Stripe::RequestParams
          # Text may be up to 1200 characters in length.
          attr_accessor :message

          def initialize(message: nil)
            @message = message
          end
        end
        # Custom text that should be displayed after the payment confirmation button.
        attr_accessor :after_submit
        # Custom text that should be displayed alongside shipping address collection.
        attr_accessor :shipping_address
        # Custom text that should be displayed alongside the payment confirmation button.
        attr_accessor :submit
        # Custom text that should be displayed in place of the default terms of service agreement text.
        attr_accessor :terms_of_service_acceptance

        def initialize(
          after_submit: nil,
          shipping_address: nil,
          submit: nil,
          terms_of_service_acceptance: nil
        )
          @after_submit = after_submit
          @shipping_address = shipping_address
          @submit = submit
          @terms_of_service_acceptance = terms_of_service_acceptance
        end
      end

      class InvoiceCreation < Stripe::RequestParams
        class InvoiceData < Stripe::RequestParams
          class CustomField < Stripe::RequestParams
            # The name of the custom field. This may be up to 40 characters.
            attr_accessor :name
            # The value of the custom field. This may be up to 140 characters.
            attr_accessor :value

            def initialize(name: nil, value: nil)
              @name = name
              @value = value
            end
          end

          class Issuer < Stripe::RequestParams
            # The connected account being referenced when `type` is `account`.
            attr_accessor :account
            # Type of the account referenced in the request.
            attr_accessor :type

            def initialize(account: nil, type: nil)
              @account = account
              @type = type
            end
          end

          class RenderingOptions < Stripe::RequestParams
            # How line-item prices and amounts will be displayed with respect to tax on invoice PDFs. One of `exclude_tax` or `include_inclusive_tax`. `include_inclusive_tax` will include inclusive tax (and exclude exclusive tax) in invoice PDF amounts. `exclude_tax` will exclude all tax (inclusive and exclusive alike) from invoice PDF amounts.
            attr_accessor :amount_tax_display

            def initialize(amount_tax_display: nil)
              @amount_tax_display = amount_tax_display
            end
          end
          # The account tax IDs associated with the invoice.
          attr_accessor :account_tax_ids
          # Default custom fields to be displayed on invoices for this customer.
          attr_accessor :custom_fields
          # An arbitrary string attached to the object. Often useful for displaying to users.
          attr_accessor :description
          # Default footer to be displayed on invoices for this customer.
          attr_accessor :footer
          # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
          attr_accessor :issuer
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          attr_accessor :metadata
          # Default options for invoice PDF rendering for this customer.
          attr_accessor :rendering_options

          def initialize(
            account_tax_ids: nil,
            custom_fields: nil,
            description: nil,
            footer: nil,
            issuer: nil,
            metadata: nil,
            rendering_options: nil
          )
            @account_tax_ids = account_tax_ids
            @custom_fields = custom_fields
            @description = description
            @footer = footer
            @issuer = issuer
            @metadata = metadata
            @rendering_options = rendering_options
          end
        end
        # Whether the feature is enabled
        attr_accessor :enabled
        # Invoice PDF configuration.
        attr_accessor :invoice_data

        def initialize(enabled: nil, invoice_data: nil)
          @enabled = enabled
          @invoice_data = invoice_data
        end
      end

      class LineItem < Stripe::RequestParams
        class AdjustableQuantity < Stripe::RequestParams
          # Set to true if the quantity can be adjusted to any non-negative Integer.
          attr_accessor :enabled
          # The maximum quantity the customer can purchase. By default this value is 99. You can specify a value up to 999.
          attr_accessor :maximum
          # The minimum quantity the customer can purchase. By default this value is 0. If there is only one item in the cart then that item's quantity cannot go down to 0.
          attr_accessor :minimum

          def initialize(enabled: nil, maximum: nil, minimum: nil)
            @enabled = enabled
            @maximum = maximum
            @minimum = minimum
          end
        end
        # When set, provides configuration for this item’s quantity to be adjusted by the customer during checkout.
        attr_accessor :adjustable_quantity
        # The ID of the [Price](https://stripe.com/docs/api/prices) or [Plan](https://stripe.com/docs/api/plans) object.
        attr_accessor :price
        # The quantity of the line item being purchased.
        attr_accessor :quantity

        def initialize(adjustable_quantity: nil, price: nil, quantity: nil)
          @adjustable_quantity = adjustable_quantity
          @price = price
          @quantity = quantity
        end
      end

      class OptionalItem < Stripe::RequestParams
        class AdjustableQuantity < Stripe::RequestParams
          # Set to true if the quantity can be adjusted to any non-negative integer.
          attr_accessor :enabled
          # The maximum quantity of this item the customer can purchase. By default this value is 99.
          attr_accessor :maximum
          # The minimum quantity of this item the customer must purchase, if they choose to purchase it. Because this item is optional, the customer will always be able to remove it from their order, even if the `minimum` configured here is greater than 0. By default this value is 0.
          attr_accessor :minimum

          def initialize(enabled: nil, maximum: nil, minimum: nil)
            @enabled = enabled
            @maximum = maximum
            @minimum = minimum
          end
        end
        # When set, provides configuration for the customer to adjust the quantity of the line item created when a customer chooses to add this optional item to their order.
        attr_accessor :adjustable_quantity
        # The ID of the [Price](https://stripe.com/docs/api/prices) or [Plan](https://stripe.com/docs/api/plans) object.
        attr_accessor :price
        # The initial quantity of the line item created when a customer chooses to add this optional item to their order.
        attr_accessor :quantity

        def initialize(adjustable_quantity: nil, price: nil, quantity: nil)
          @adjustable_quantity = adjustable_quantity
          @price = price
          @quantity = quantity
        end
      end

      class PaymentIntentData < Stripe::RequestParams
        # Controls when the funds will be captured from the customer's account.
        attr_accessor :capture_method
        # An arbitrary string attached to the object. Often useful for displaying to users.
        attr_accessor :description
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that will declaratively set metadata on [Payment Intents](https://stripe.com/docs/api/payment_intents) generated from this payment link. Unlike object-level metadata, this field is declarative. Updates will clear prior values.
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
        attr_accessor :setup_future_usage
        # Text that appears on the customer's statement as the statement descriptor for a non-card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
        #
        # Setting this value for a card charge returns an error. For card charges, set the [statement_descriptor_suffix](https://docs.stripe.com/get-started/account/statement-descriptors#dynamic) instead.
        attr_accessor :statement_descriptor
        # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement.
        attr_accessor :statement_descriptor_suffix
        # A string that identifies the resulting payment as part of a group. See the PaymentIntents [use case for connected accounts](https://stripe.com/docs/connect/separate-charges-and-transfers) for details.
        attr_accessor :transfer_group

        def initialize(
          capture_method: nil,
          description: nil,
          metadata: nil,
          setup_future_usage: nil,
          statement_descriptor: nil,
          statement_descriptor_suffix: nil,
          transfer_group: nil
        )
          @capture_method = capture_method
          @description = description
          @metadata = metadata
          @setup_future_usage = setup_future_usage
          @statement_descriptor = statement_descriptor
          @statement_descriptor_suffix = statement_descriptor_suffix
          @transfer_group = transfer_group
        end
      end

      class PhoneNumberCollection < Stripe::RequestParams
        # Set to `true` to enable phone number collection.
        attr_accessor :enabled

        def initialize(enabled: nil)
          @enabled = enabled
        end
      end

      class Restrictions < Stripe::RequestParams
        class CompletedSessions < Stripe::RequestParams
          # The maximum number of checkout sessions that can be completed for the `completed_sessions` restriction to be met.
          attr_accessor :limit

          def initialize(limit: nil)
            @limit = limit
          end
        end
        # Configuration for the `completed_sessions` restriction type.
        attr_accessor :completed_sessions

        def initialize(completed_sessions: nil)
          @completed_sessions = completed_sessions
        end
      end

      class ShippingAddressCollection < Stripe::RequestParams
        # An array of two-letter ISO country codes representing which countries Checkout should provide as options for
        # shipping locations.
        attr_accessor :allowed_countries

        def initialize(allowed_countries: nil)
          @allowed_countries = allowed_countries
        end
      end

      class ShippingOption < Stripe::RequestParams
        # The ID of the Shipping Rate to use for this shipping option.
        attr_accessor :shipping_rate

        def initialize(shipping_rate: nil)
          @shipping_rate = shipping_rate
        end
      end

      class SubscriptionData < Stripe::RequestParams
        class InvoiceSettings < Stripe::RequestParams
          class Issuer < Stripe::RequestParams
            # The connected account being referenced when `type` is `account`.
            attr_accessor :account
            # Type of the account referenced in the request.
            attr_accessor :type

            def initialize(account: nil, type: nil)
              @account = account
              @type = type
            end
          end
          # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
          attr_accessor :issuer

          def initialize(issuer: nil)
            @issuer = issuer
          end
        end

        class TrialSettings < Stripe::RequestParams
          class EndBehavior < Stripe::RequestParams
            # Indicates how the subscription should change when the trial ends if the user did not provide a payment method.
            attr_accessor :missing_payment_method

            def initialize(missing_payment_method: nil)
              @missing_payment_method = missing_payment_method
            end
          end
          # Defines how the subscription should behave when the user's free trial ends.
          attr_accessor :end_behavior

          def initialize(end_behavior: nil)
            @end_behavior = end_behavior
          end
        end
        # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
        attr_accessor :description
        # All invoices will be billed using the specified settings.
        attr_accessor :invoice_settings
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that will declaratively set metadata on [Subscriptions](https://stripe.com/docs/api/subscriptions) generated from this payment link. Unlike object-level metadata, this field is declarative. Updates will clear prior values.
        attr_accessor :metadata
        # Integer representing the number of trial period days before the customer is charged for the first time. Has to be at least 1.
        attr_accessor :trial_period_days
        # Settings related to subscription trials.
        attr_accessor :trial_settings

        def initialize(
          description: nil,
          invoice_settings: nil,
          metadata: nil,
          trial_period_days: nil,
          trial_settings: nil
        )
          @description = description
          @invoice_settings = invoice_settings
          @metadata = metadata
          @trial_period_days = trial_period_days
          @trial_settings = trial_settings
        end
      end

      class TaxIdCollection < Stripe::RequestParams
        # Enable tax ID collection during checkout. Defaults to `false`.
        attr_accessor :enabled
        # Describes whether a tax ID is required during checkout. Defaults to `never`.
        attr_accessor :required

        def initialize(enabled: nil, required: nil)
          @enabled = enabled
          @required = required
        end
      end

      class TransferData < Stripe::RequestParams
        # The amount that will be transferred automatically when a charge succeeds.
        attr_accessor :amount
        # If specified, successful charges will be attributed to the destination
        # account for tax reporting, and the funds from charges will be transferred
        # to the destination account. The ID of the resulting transfer will be
        # returned on the successful charge's `transfer` field.
        attr_accessor :destination

        def initialize(amount: nil, destination: nil)
          @amount = amount
          @destination = destination
        end
      end
      # Behavior after the purchase is complete.
      attr_accessor :after_completion
      # Enables user redeemable promotion codes.
      attr_accessor :allow_promotion_codes
      # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. Can only be applied when there are no line items with recurring prices.
      attr_accessor :application_fee_amount
      # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account. There must be at least 1 line item with a recurring price to use this field.
      attr_accessor :application_fee_percent
      # Configuration for automatic tax collection.
      attr_accessor :automatic_tax
      # Configuration for collecting the customer's billing address. Defaults to `auto`.
      attr_accessor :billing_address_collection
      # Configure fields to gather active consent from customers.
      attr_accessor :consent_collection
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies) and supported by each line item's price.
      attr_accessor :currency
      # Collect additional information from your customer using custom fields. Up to 3 fields are supported.
      attr_accessor :custom_fields
      # Display additional text for your customers using custom text.
      attr_accessor :custom_text
      # Configures whether [checkout sessions](https://stripe.com/docs/api/checkout/sessions) created by this payment link create a [Customer](https://stripe.com/docs/api/customers).
      attr_accessor :customer_creation
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The custom message to be displayed to a customer when a payment link is no longer active.
      attr_accessor :inactive_message
      # Generate a post-purchase Invoice for one-time payments.
      attr_accessor :invoice_creation
      # The line items representing what is being sold. Each line item represents an item being sold. Up to 20 line items are supported.
      attr_accessor :line_items
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`. Metadata associated with this Payment Link will automatically be copied to [checkout sessions](https://stripe.com/docs/api/checkout/sessions) created by this payment link.
      attr_accessor :metadata
      # The account on behalf of which to charge.
      attr_accessor :on_behalf_of
      # A list of optional items the customer can add to their order at checkout. Use this parameter to pass one-time or recurring [Prices](https://stripe.com/docs/api/prices).
      # There is a maximum of 10 optional items allowed on a payment link, and the existing limits on the number of line items allowed on a payment link apply to the combined number of line items and optional items.
      # There is a maximum of 20 combined line items and optional items.
      attr_accessor :optional_items
      # A subset of parameters to be passed to PaymentIntent creation for Checkout Sessions in `payment` mode.
      attr_accessor :payment_intent_data
      # Specify whether Checkout should collect a payment method. When set to `if_required`, Checkout will not collect a payment method when the total due for the session is 0.This may occur if the Checkout Session includes a free trial or a discount.
      #
      # Can only be set in `subscription` mode. Defaults to `always`.
      #
      # If you'd like information on how to collect a payment method outside of Checkout, read the guide on [configuring subscriptions with a free trial](https://stripe.com/docs/payments/checkout/free-trials).
      attr_accessor :payment_method_collection
      # The list of payment method types that customers can use. If no value is passed, Stripe will dynamically show relevant payment methods from your [payment method settings](https://dashboard.stripe.com/settings/payment_methods) (20+ payment methods [supported](https://stripe.com/docs/payments/payment-methods/integration-options#payment-method-product-support)).
      attr_accessor :payment_method_types
      # Controls phone number collection settings during checkout.
      #
      # We recommend that you review your privacy policy and check with your legal contacts.
      attr_accessor :phone_number_collection
      # Settings that restrict the usage of a payment link.
      attr_accessor :restrictions
      # Configuration for collecting the customer's shipping address.
      attr_accessor :shipping_address_collection
      # The shipping rate options to apply to [checkout sessions](https://stripe.com/docs/api/checkout/sessions) created by this payment link.
      attr_accessor :shipping_options
      # Describes the type of transaction being performed in order to customize relevant text on the page, such as the submit button. Changing this value will also affect the hostname in the [url](https://stripe.com/docs/api/payment_links/payment_links/object#url) property (example: `donate.stripe.com`).
      attr_accessor :submit_type
      # When creating a subscription, the specified configuration data will be used. There must be at least one line item with a recurring price to use `subscription_data`.
      attr_accessor :subscription_data
      # Controls tax ID collection during checkout.
      attr_accessor :tax_id_collection
      # The account (if any) the payments will be attributed to for tax reporting, and where funds from each payment will be transferred to.
      attr_accessor :transfer_data

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
      )
        @after_completion = after_completion
        @allow_promotion_codes = allow_promotion_codes
        @application_fee_amount = application_fee_amount
        @application_fee_percent = application_fee_percent
        @automatic_tax = automatic_tax
        @billing_address_collection = billing_address_collection
        @consent_collection = consent_collection
        @currency = currency
        @custom_fields = custom_fields
        @custom_text = custom_text
        @customer_creation = customer_creation
        @expand = expand
        @inactive_message = inactive_message
        @invoice_creation = invoice_creation
        @line_items = line_items
        @metadata = metadata
        @on_behalf_of = on_behalf_of
        @optional_items = optional_items
        @payment_intent_data = payment_intent_data
        @payment_method_collection = payment_method_collection
        @payment_method_types = payment_method_types
        @phone_number_collection = phone_number_collection
        @restrictions = restrictions
        @shipping_address_collection = shipping_address_collection
        @shipping_options = shipping_options
        @submit_type = submit_type
        @subscription_data = subscription_data
        @tax_id_collection = tax_id_collection
        @transfer_data = transfer_data
      end
    end

    class UpdateParams < Stripe::RequestParams
      class AfterCompletion < Stripe::RequestParams
        class HostedConfirmation < Stripe::RequestParams
          # A custom message to display to the customer after the purchase is complete.
          attr_accessor :custom_message

          def initialize(custom_message: nil)
            @custom_message = custom_message
          end
        end

        class Redirect < Stripe::RequestParams
          # The URL the customer will be redirected to after the purchase is complete. You can embed `{CHECKOUT_SESSION_ID}` into the URL to have the `id` of the completed [checkout session](https://stripe.com/docs/api/checkout/sessions/object#checkout_session_object-id) included.
          attr_accessor :url

          def initialize(url: nil)
            @url = url
          end
        end
        # Configuration when `type=hosted_confirmation`.
        attr_accessor :hosted_confirmation
        # Configuration when `type=redirect`.
        attr_accessor :redirect
        # The specified behavior after the purchase is complete. Either `redirect` or `hosted_confirmation`.
        attr_accessor :type

        def initialize(hosted_confirmation: nil, redirect: nil, type: nil)
          @hosted_confirmation = hosted_confirmation
          @redirect = redirect
          @type = type
        end
      end

      class AutomaticTax < Stripe::RequestParams
        class Liability < Stripe::RequestParams
          # The connected account being referenced when `type` is `account`.
          attr_accessor :account
          # Type of the account referenced in the request.
          attr_accessor :type

          def initialize(account: nil, type: nil)
            @account = account
            @type = type
          end
        end
        # Set to `true` to [calculate tax automatically](https://docs.stripe.com/tax) using the customer's location.
        #
        # Enabling this parameter causes the payment link to collect any billing address information necessary for tax calculation.
        attr_accessor :enabled
        # The account that's liable for tax. If set, the business address and tax registrations required to perform the tax calculation are loaded from this account. The tax transaction is returned in the report of the connected account.
        attr_accessor :liability

        def initialize(enabled: nil, liability: nil)
          @enabled = enabled
          @liability = liability
        end
      end

      class CustomField < Stripe::RequestParams
        class Dropdown < Stripe::RequestParams
          class Option < Stripe::RequestParams
            # The label for the option, displayed to the customer. Up to 100 characters.
            attr_accessor :label
            # The value for this option, not displayed to the customer, used by your integration to reconcile the option selected by the customer. Must be unique to this option, alphanumeric, and up to 100 characters.
            attr_accessor :value

            def initialize(label: nil, value: nil)
              @label = label
              @value = value
            end
          end
          # The value that will pre-fill the field on the payment page.Must match a `value` in the `options` array.
          attr_accessor :default_value
          # The options available for the customer to select. Up to 200 options allowed.
          attr_accessor :options

          def initialize(default_value: nil, options: nil)
            @default_value = default_value
            @options = options
          end
        end

        class Label < Stripe::RequestParams
          # Custom text for the label, displayed to the customer. Up to 50 characters.
          attr_accessor :custom
          # The type of the label.
          attr_accessor :type

          def initialize(custom: nil, type: nil)
            @custom = custom
            @type = type
          end
        end

        class Numeric < Stripe::RequestParams
          # The value that will pre-fill the field on the payment page.
          attr_accessor :default_value
          # The maximum character length constraint for the customer's input.
          attr_accessor :maximum_length
          # The minimum character length requirement for the customer's input.
          attr_accessor :minimum_length

          def initialize(default_value: nil, maximum_length: nil, minimum_length: nil)
            @default_value = default_value
            @maximum_length = maximum_length
            @minimum_length = minimum_length
          end
        end

        class Text < Stripe::RequestParams
          # The value that will pre-fill the field on the payment page.
          attr_accessor :default_value
          # The maximum character length constraint for the customer's input.
          attr_accessor :maximum_length
          # The minimum character length requirement for the customer's input.
          attr_accessor :minimum_length

          def initialize(default_value: nil, maximum_length: nil, minimum_length: nil)
            @default_value = default_value
            @maximum_length = maximum_length
            @minimum_length = minimum_length
          end
        end
        # Configuration for `type=dropdown` fields.
        attr_accessor :dropdown
        # String of your choice that your integration can use to reconcile this field. Must be unique to this field, alphanumeric, and up to 200 characters.
        attr_accessor :key
        # The label for the field, displayed to the customer.
        attr_accessor :label
        # Configuration for `type=numeric` fields.
        attr_accessor :numeric
        # Whether the customer is required to complete the field before completing the Checkout Session. Defaults to `false`.
        attr_accessor :optional
        # Configuration for `type=text` fields.
        attr_accessor :text
        # The type of the field.
        attr_accessor :type

        def initialize(
          dropdown: nil,
          key: nil,
          label: nil,
          numeric: nil,
          optional: nil,
          text: nil,
          type: nil
        )
          @dropdown = dropdown
          @key = key
          @label = label
          @numeric = numeric
          @optional = optional
          @text = text
          @type = type
        end
      end

      class CustomText < Stripe::RequestParams
        class AfterSubmit < Stripe::RequestParams
          # Text may be up to 1200 characters in length.
          attr_accessor :message

          def initialize(message: nil)
            @message = message
          end
        end

        class ShippingAddress < Stripe::RequestParams
          # Text may be up to 1200 characters in length.
          attr_accessor :message

          def initialize(message: nil)
            @message = message
          end
        end

        class Submit < Stripe::RequestParams
          # Text may be up to 1200 characters in length.
          attr_accessor :message

          def initialize(message: nil)
            @message = message
          end
        end

        class TermsOfServiceAcceptance < Stripe::RequestParams
          # Text may be up to 1200 characters in length.
          attr_accessor :message

          def initialize(message: nil)
            @message = message
          end
        end
        # Custom text that should be displayed after the payment confirmation button.
        attr_accessor :after_submit
        # Custom text that should be displayed alongside shipping address collection.
        attr_accessor :shipping_address
        # Custom text that should be displayed alongside the payment confirmation button.
        attr_accessor :submit
        # Custom text that should be displayed in place of the default terms of service agreement text.
        attr_accessor :terms_of_service_acceptance

        def initialize(
          after_submit: nil,
          shipping_address: nil,
          submit: nil,
          terms_of_service_acceptance: nil
        )
          @after_submit = after_submit
          @shipping_address = shipping_address
          @submit = submit
          @terms_of_service_acceptance = terms_of_service_acceptance
        end
      end

      class InvoiceCreation < Stripe::RequestParams
        class InvoiceData < Stripe::RequestParams
          class CustomField < Stripe::RequestParams
            # The name of the custom field. This may be up to 40 characters.
            attr_accessor :name
            # The value of the custom field. This may be up to 140 characters.
            attr_accessor :value

            def initialize(name: nil, value: nil)
              @name = name
              @value = value
            end
          end

          class Issuer < Stripe::RequestParams
            # The connected account being referenced when `type` is `account`.
            attr_accessor :account
            # Type of the account referenced in the request.
            attr_accessor :type

            def initialize(account: nil, type: nil)
              @account = account
              @type = type
            end
          end

          class RenderingOptions < Stripe::RequestParams
            # How line-item prices and amounts will be displayed with respect to tax on invoice PDFs. One of `exclude_tax` or `include_inclusive_tax`. `include_inclusive_tax` will include inclusive tax (and exclude exclusive tax) in invoice PDF amounts. `exclude_tax` will exclude all tax (inclusive and exclusive alike) from invoice PDF amounts.
            attr_accessor :amount_tax_display

            def initialize(amount_tax_display: nil)
              @amount_tax_display = amount_tax_display
            end
          end
          # The account tax IDs associated with the invoice.
          attr_accessor :account_tax_ids
          # Default custom fields to be displayed on invoices for this customer.
          attr_accessor :custom_fields
          # An arbitrary string attached to the object. Often useful for displaying to users.
          attr_accessor :description
          # Default footer to be displayed on invoices for this customer.
          attr_accessor :footer
          # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
          attr_accessor :issuer
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
          attr_accessor :metadata
          # Default options for invoice PDF rendering for this customer.
          attr_accessor :rendering_options

          def initialize(
            account_tax_ids: nil,
            custom_fields: nil,
            description: nil,
            footer: nil,
            issuer: nil,
            metadata: nil,
            rendering_options: nil
          )
            @account_tax_ids = account_tax_ids
            @custom_fields = custom_fields
            @description = description
            @footer = footer
            @issuer = issuer
            @metadata = metadata
            @rendering_options = rendering_options
          end
        end
        # Whether the feature is enabled
        attr_accessor :enabled
        # Invoice PDF configuration.
        attr_accessor :invoice_data

        def initialize(enabled: nil, invoice_data: nil)
          @enabled = enabled
          @invoice_data = invoice_data
        end
      end

      class LineItem < Stripe::RequestParams
        class AdjustableQuantity < Stripe::RequestParams
          # Set to true if the quantity can be adjusted to any non-negative Integer.
          attr_accessor :enabled
          # The maximum quantity the customer can purchase. By default this value is 99. You can specify a value up to 999.
          attr_accessor :maximum
          # The minimum quantity the customer can purchase. By default this value is 0. If there is only one item in the cart then that item's quantity cannot go down to 0.
          attr_accessor :minimum

          def initialize(enabled: nil, maximum: nil, minimum: nil)
            @enabled = enabled
            @maximum = maximum
            @minimum = minimum
          end
        end
        # When set, provides configuration for this item’s quantity to be adjusted by the customer during checkout.
        attr_accessor :adjustable_quantity
        # The ID of an existing line item on the payment link.
        attr_accessor :id
        # The quantity of the line item being purchased.
        attr_accessor :quantity

        def initialize(adjustable_quantity: nil, id: nil, quantity: nil)
          @adjustable_quantity = adjustable_quantity
          @id = id
          @quantity = quantity
        end
      end

      class PaymentIntentData < Stripe::RequestParams
        # An arbitrary string attached to the object. Often useful for displaying to users.
        attr_accessor :description
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that will declaratively set metadata on [Payment Intents](https://stripe.com/docs/api/payment_intents) generated from this payment link. Unlike object-level metadata, this field is declarative. Updates will clear prior values.
        attr_accessor :metadata
        # Text that appears on the customer's statement as the statement descriptor for a non-card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).
        #
        # Setting this value for a card charge returns an error. For card charges, set the [statement_descriptor_suffix](https://docs.stripe.com/get-started/account/statement-descriptors#dynamic) instead.
        attr_accessor :statement_descriptor
        # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement.
        attr_accessor :statement_descriptor_suffix
        # A string that identifies the resulting payment as part of a group. See the PaymentIntents [use case for connected accounts](https://stripe.com/docs/connect/separate-charges-and-transfers) for details.
        attr_accessor :transfer_group

        def initialize(
          description: nil,
          metadata: nil,
          statement_descriptor: nil,
          statement_descriptor_suffix: nil,
          transfer_group: nil
        )
          @description = description
          @metadata = metadata
          @statement_descriptor = statement_descriptor
          @statement_descriptor_suffix = statement_descriptor_suffix
          @transfer_group = transfer_group
        end
      end

      class PhoneNumberCollection < Stripe::RequestParams
        # Set to `true` to enable phone number collection.
        attr_accessor :enabled

        def initialize(enabled: nil)
          @enabled = enabled
        end
      end

      class Restrictions < Stripe::RequestParams
        class CompletedSessions < Stripe::RequestParams
          # The maximum number of checkout sessions that can be completed for the `completed_sessions` restriction to be met.
          attr_accessor :limit

          def initialize(limit: nil)
            @limit = limit
          end
        end
        # Configuration for the `completed_sessions` restriction type.
        attr_accessor :completed_sessions

        def initialize(completed_sessions: nil)
          @completed_sessions = completed_sessions
        end
      end

      class ShippingAddressCollection < Stripe::RequestParams
        # An array of two-letter ISO country codes representing which countries Checkout should provide as options for
        # shipping locations.
        attr_accessor :allowed_countries

        def initialize(allowed_countries: nil)
          @allowed_countries = allowed_countries
        end
      end

      class SubscriptionData < Stripe::RequestParams
        class InvoiceSettings < Stripe::RequestParams
          class Issuer < Stripe::RequestParams
            # The connected account being referenced when `type` is `account`.
            attr_accessor :account
            # Type of the account referenced in the request.
            attr_accessor :type

            def initialize(account: nil, type: nil)
              @account = account
              @type = type
            end
          end
          # The connected account that issues the invoice. The invoice is presented with the branding and support information of the specified account.
          attr_accessor :issuer

          def initialize(issuer: nil)
            @issuer = issuer
          end
        end

        class TrialSettings < Stripe::RequestParams
          class EndBehavior < Stripe::RequestParams
            # Indicates how the subscription should change when the trial ends if the user did not provide a payment method.
            attr_accessor :missing_payment_method

            def initialize(missing_payment_method: nil)
              @missing_payment_method = missing_payment_method
            end
          end
          # Defines how the subscription should behave when the user's free trial ends.
          attr_accessor :end_behavior

          def initialize(end_behavior: nil)
            @end_behavior = end_behavior
          end
        end
        # All invoices will be billed using the specified settings.
        attr_accessor :invoice_settings
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that will declaratively set metadata on [Subscriptions](https://stripe.com/docs/api/subscriptions) generated from this payment link. Unlike object-level metadata, this field is declarative. Updates will clear prior values.
        attr_accessor :metadata
        # Integer representing the number of trial period days before the customer is charged for the first time. Has to be at least 1.
        attr_accessor :trial_period_days
        # Settings related to subscription trials.
        attr_accessor :trial_settings

        def initialize(
          invoice_settings: nil,
          metadata: nil,
          trial_period_days: nil,
          trial_settings: nil
        )
          @invoice_settings = invoice_settings
          @metadata = metadata
          @trial_period_days = trial_period_days
          @trial_settings = trial_settings
        end
      end

      class TaxIdCollection < Stripe::RequestParams
        # Enable tax ID collection during checkout. Defaults to `false`.
        attr_accessor :enabled
        # Describes whether a tax ID is required during checkout. Defaults to `never`.
        attr_accessor :required

        def initialize(enabled: nil, required: nil)
          @enabled = enabled
          @required = required
        end
      end
      # Whether the payment link's `url` is active. If `false`, customers visiting the URL will be shown a page saying that the link has been deactivated.
      attr_accessor :active
      # Behavior after the purchase is complete.
      attr_accessor :after_completion
      # Enables user redeemable promotion codes.
      attr_accessor :allow_promotion_codes
      # Configuration for automatic tax collection.
      attr_accessor :automatic_tax
      # Configuration for collecting the customer's billing address. Defaults to `auto`.
      attr_accessor :billing_address_collection
      # Collect additional information from your customer using custom fields. Up to 3 fields are supported.
      attr_accessor :custom_fields
      # Display additional text for your customers using custom text.
      attr_accessor :custom_text
      # Configures whether [checkout sessions](https://stripe.com/docs/api/checkout/sessions) created by this payment link create a [Customer](https://stripe.com/docs/api/customers).
      attr_accessor :customer_creation
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # The custom message to be displayed to a customer when a payment link is no longer active.
      attr_accessor :inactive_message
      # Generate a post-purchase Invoice for one-time payments.
      attr_accessor :invoice_creation
      # The line items representing what is being sold. Each line item represents an item being sold. Up to 20 line items are supported.
      attr_accessor :line_items
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`. Metadata associated with this Payment Link will automatically be copied to [checkout sessions](https://stripe.com/docs/api/checkout/sessions) created by this payment link.
      attr_accessor :metadata
      # A subset of parameters to be passed to PaymentIntent creation for Checkout Sessions in `payment` mode.
      attr_accessor :payment_intent_data
      # Specify whether Checkout should collect a payment method. When set to `if_required`, Checkout will not collect a payment method when the total due for the session is 0.This may occur if the Checkout Session includes a free trial or a discount.
      #
      # Can only be set in `subscription` mode. Defaults to `always`.
      #
      # If you'd like information on how to collect a payment method outside of Checkout, read the guide on [configuring subscriptions with a free trial](https://stripe.com/docs/payments/checkout/free-trials).
      attr_accessor :payment_method_collection
      # The list of payment method types that customers can use. Pass an empty string to enable dynamic payment methods that use your [payment method settings](https://dashboard.stripe.com/settings/payment_methods).
      attr_accessor :payment_method_types
      # Controls phone number collection settings during checkout.
      #
      # We recommend that you review your privacy policy and check with your legal contacts.
      attr_accessor :phone_number_collection
      # Settings that restrict the usage of a payment link.
      attr_accessor :restrictions
      # Configuration for collecting the customer's shipping address.
      attr_accessor :shipping_address_collection
      # Describes the type of transaction being performed in order to customize relevant text on the page, such as the submit button. Changing this value will also affect the hostname in the [url](https://stripe.com/docs/api/payment_links/payment_links/object#url) property (example: `donate.stripe.com`).
      attr_accessor :submit_type
      # When creating a subscription, the specified configuration data will be used. There must be at least one line item with a recurring price to use `subscription_data`.
      attr_accessor :subscription_data
      # Controls tax ID collection during checkout.
      attr_accessor :tax_id_collection

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
      )
        @active = active
        @after_completion = after_completion
        @allow_promotion_codes = allow_promotion_codes
        @automatic_tax = automatic_tax
        @billing_address_collection = billing_address_collection
        @custom_fields = custom_fields
        @custom_text = custom_text
        @customer_creation = customer_creation
        @expand = expand
        @inactive_message = inactive_message
        @invoice_creation = invoice_creation
        @line_items = line_items
        @metadata = metadata
        @payment_intent_data = payment_intent_data
        @payment_method_collection = payment_method_collection
        @payment_method_types = payment_method_types
        @phone_number_collection = phone_number_collection
        @restrictions = restrictions
        @shipping_address_collection = shipping_address_collection
        @submit_type = submit_type
        @subscription_data = subscription_data
        @tax_id_collection = tax_id_collection
      end
    end

    class ListLineItemsParams < Stripe::RequestParams
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(ending_before: nil, expand: nil, limit: nil, starting_after: nil)
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @starting_after = starting_after
      end
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
    # The optional items presented to the customer at checkout.
    attr_reader :optional_items
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
    def self.update(payment_link, params = {}, opts = {})
      request_stripe_object(
        method: :post,
        path: format("/v1/payment_links/%<payment_link>s", { payment_link: CGI.escape(payment_link) }),
        params: params,
        opts: opts
      )
    end
  end
end
