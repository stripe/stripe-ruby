# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Terminal
    # A Reader represents a physical device for accepting payment details.
    #
    # Related guide: [Connecting to a reader](https://stripe.com/docs/terminal/payments/connect-reader)
    class Reader < APIResource
      class Action < Stripe::StripeObject
        class CollectInputs < Stripe::StripeObject
          class Input < Stripe::StripeObject
            class CustomText < Stripe::StripeObject
              # Customize the default description for this input
              sig { returns(T.nilable(String)) }
              attr_reader :description
              # Customize the default label for this input's skip button
              sig { returns(T.nilable(String)) }
              attr_reader :skip_button
              # Customize the default label for this input's submit button
              sig { returns(T.nilable(String)) }
              attr_reader :submit_button
              # Customize the default title for this input
              sig { returns(T.nilable(String)) }
              attr_reader :title
            end
            class Email < Stripe::StripeObject
              # The collected email address
              sig { returns(T.nilable(String)) }
              attr_reader :value
            end
            class Numeric < Stripe::StripeObject
              # The collected number
              sig { returns(T.nilable(String)) }
              attr_reader :value
            end
            class Phone < Stripe::StripeObject
              # The collected phone number
              sig { returns(T.nilable(String)) }
              attr_reader :value
            end
            class Selection < Stripe::StripeObject
              class Choice < Stripe::StripeObject
                # The id to be selected
                sig { returns(T.nilable(String)) }
                attr_reader :id
                # The button style for the choice
                sig { returns(T.nilable(String)) }
                attr_reader :style
                # The text to be selected
                sig { returns(String) }
                attr_reader :text
              end
              # List of possible choices to be selected
              sig { returns(T::Array[Choice]) }
              attr_reader :choices
              # The id of the selected choice
              sig { returns(T.nilable(String)) }
              attr_reader :id
              # The text of the selected choice
              sig { returns(T.nilable(String)) }
              attr_reader :text
            end
            class Signature < Stripe::StripeObject
              # The File ID of a collected signature image
              sig { returns(T.nilable(String)) }
              attr_reader :value
            end
            class Text < Stripe::StripeObject
              # The collected text value
              sig { returns(T.nilable(String)) }
              attr_reader :value
            end
            class Toggle < Stripe::StripeObject
              # The toggle's default value
              sig { returns(T.nilable(String)) }
              attr_reader :default_value
              # The toggle's description text
              sig { returns(T.nilable(String)) }
              attr_reader :description
              # The toggle's title text
              sig { returns(T.nilable(String)) }
              attr_reader :title
              # The toggle's collected value
              sig { returns(T.nilable(String)) }
              attr_reader :value
            end
            # Default text of input being collected.
            sig { returns(T.nilable(CustomText)) }
            attr_reader :custom_text
            # Information about a email being collected using a reader
            sig { returns(Email) }
            attr_reader :email
            # Information about a number being collected using a reader
            sig { returns(Numeric) }
            attr_reader :numeric
            # Information about a phone number being collected using a reader
            sig { returns(Phone) }
            attr_reader :phone
            # Indicate that this input is required, disabling the skip button.
            sig { returns(T.nilable(T::Boolean)) }
            attr_reader :required
            # Information about a selection being collected using a reader
            sig { returns(Selection) }
            attr_reader :selection
            # Information about a signature being collected using a reader
            sig { returns(Signature) }
            attr_reader :signature
            # Indicate that this input was skipped by the user.
            sig { returns(T::Boolean) }
            attr_reader :skipped
            # Information about text being collected using a reader
            sig { returns(Text) }
            attr_reader :text
            # List of toggles being collected. Values are present if collection is complete.
            sig { returns(T.nilable(T::Array[Toggle])) }
            attr_reader :toggles
            # Type of input being collected.
            sig { returns(String) }
            attr_reader :type
          end
          # List of inputs to be collected.
          sig { returns(T::Array[Input]) }
          attr_reader :inputs
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, String])) }
          attr_reader :metadata
        end
        class CollectPaymentMethod < Stripe::StripeObject
          class CollectConfig < Stripe::StripeObject
            class Tipping < Stripe::StripeObject
              # Amount used to calculate tip suggestions on tipping selection screen for this transaction. Must be a positive integer in the smallest currency unit (e.g., 100 cents to represent $1.00 or 100 to represent ¥100, a zero-decimal currency).
              sig { returns(Integer) }
              attr_reader :amount_eligible
            end
            # Enable customer-initiated cancellation when processing this payment.
            sig { returns(T::Boolean) }
            attr_reader :enable_customer_cancellation
            # Override showing a tipping selection screen on this transaction.
            sig { returns(T::Boolean) }
            attr_reader :skip_tipping
            # Represents a per-transaction tipping configuration
            sig { returns(Tipping) }
            attr_reader :tipping
          end
          # Represents a per-transaction override of a reader configuration
          sig { returns(CollectConfig) }
          attr_reader :collect_config
          # Most recent PaymentIntent processed by the reader.
          sig { returns(T.any(String, Stripe::PaymentIntent)) }
          attr_reader :payment_intent
          # PaymentMethod objects represent your customer's payment instruments.
          # You can use them with [PaymentIntents](https://stripe.com/docs/payments/payment-intents) to collect payments or save them to
          # Customer objects to store instrument details for future payments.
          #
          # Related guides: [Payment Methods](https://stripe.com/docs/payments/payment-methods) and [More Payment Scenarios](https://stripe.com/docs/payments/more-payment-scenarios).
          sig { returns(Stripe::PaymentMethod) }
          attr_reader :payment_method
        end
        class ConfirmPaymentIntent < Stripe::StripeObject
          class ConfirmConfig < Stripe::StripeObject
            # If the customer doesn't abandon authenticating the payment, they're redirected to this URL after completion.
            sig { returns(String) }
            attr_reader :return_url
          end
          # Represents a per-transaction override of a reader configuration
          sig { returns(ConfirmConfig) }
          attr_reader :confirm_config
          # Most recent PaymentIntent processed by the reader.
          sig { returns(T.any(String, Stripe::PaymentIntent)) }
          attr_reader :payment_intent
        end
        class ProcessPaymentIntent < Stripe::StripeObject
          class ProcessConfig < Stripe::StripeObject
            class Tipping < Stripe::StripeObject
              # Amount used to calculate tip suggestions on tipping selection screen for this transaction. Must be a positive integer in the smallest currency unit (e.g., 100 cents to represent $1.00 or 100 to represent ¥100, a zero-decimal currency).
              sig { returns(Integer) }
              attr_reader :amount_eligible
            end
            # Enable customer-initiated cancellation when processing this payment.
            sig { returns(T::Boolean) }
            attr_reader :enable_customer_cancellation
            # If the customer doesn't abandon authenticating the payment, they're redirected to this URL after completion.
            sig { returns(String) }
            attr_reader :return_url
            # Override showing a tipping selection screen on this transaction.
            sig { returns(T::Boolean) }
            attr_reader :skip_tipping
            # Represents a per-transaction tipping configuration
            sig { returns(Tipping) }
            attr_reader :tipping
          end
          # Most recent PaymentIntent processed by the reader.
          sig { returns(T.any(String, Stripe::PaymentIntent)) }
          attr_reader :payment_intent
          # Represents a per-transaction override of a reader configuration
          sig { returns(ProcessConfig) }
          attr_reader :process_config
        end
        class ProcessSetupIntent < Stripe::StripeObject
          class ProcessConfig < Stripe::StripeObject
            # Enable customer-initiated cancellation when processing this SetupIntent.
            sig { returns(T::Boolean) }
            attr_reader :enable_customer_cancellation
          end
          # ID of a card PaymentMethod generated from the card_present PaymentMethod that may be attached to a Customer for future transactions. Only present if it was possible to generate a card PaymentMethod.
          sig { returns(String) }
          attr_reader :generated_card
          # Represents a per-setup override of a reader configuration
          sig { returns(ProcessConfig) }
          attr_reader :process_config
          # Most recent SetupIntent processed by the reader.
          sig { returns(T.any(String, Stripe::SetupIntent)) }
          attr_reader :setup_intent
        end
        class RefundPayment < Stripe::StripeObject
          class RefundPaymentConfig < Stripe::StripeObject
            # Enable customer-initiated cancellation when refunding this payment.
            sig { returns(T::Boolean) }
            attr_reader :enable_customer_cancellation
          end
          # The amount being refunded.
          sig { returns(Integer) }
          attr_reader :amount
          # Charge that is being refunded.
          sig { returns(T.any(String, Stripe::Charge)) }
          attr_reader :charge
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T::Hash[String, String]) }
          attr_reader :metadata
          # Payment intent that is being refunded.
          sig { returns(T.any(String, Stripe::PaymentIntent)) }
          attr_reader :payment_intent
          # The reason for the refund.
          sig { returns(String) }
          attr_reader :reason
          # Unique identifier for the refund object.
          sig { returns(T.any(String, Stripe::Refund)) }
          attr_reader :refund
          # Boolean indicating whether the application fee should be refunded when refunding this charge. If a full charge refund is given, the full application fee will be refunded. Otherwise, the application fee will be refunded in an amount proportional to the amount of the charge refunded. An application fee can be refunded only by the application that created the charge.
          sig { returns(T::Boolean) }
          attr_reader :refund_application_fee
          # Represents a per-transaction override of a reader configuration
          sig { returns(RefundPaymentConfig) }
          attr_reader :refund_payment_config
          # Boolean indicating whether the transfer should be reversed when refunding this charge. The transfer will be reversed proportionally to the amount being refunded (either the entire or partial amount). A transfer can be reversed only by the application that created the charge.
          sig { returns(T::Boolean) }
          attr_reader :reverse_transfer
        end
        class SetReaderDisplay < Stripe::StripeObject
          class Cart < Stripe::StripeObject
            class LineItem < Stripe::StripeObject
              # The amount of the line item. A positive integer in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
              sig { returns(Integer) }
              attr_reader :amount
              # Description of the line item.
              sig { returns(String) }
              attr_reader :description
              # The quantity of the line item.
              sig { returns(Integer) }
              attr_reader :quantity
            end
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            attr_reader :currency
            # List of line items in the cart.
            sig { returns(T::Array[LineItem]) }
            attr_reader :line_items
            # Tax amount for the entire cart. A positive integer in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
            sig { returns(T.nilable(Integer)) }
            attr_reader :tax
            # Total amount for the entire cart, including tax. A positive integer in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
            sig { returns(Integer) }
            attr_reader :total
          end
          # Cart object to be displayed by the reader.
          sig { returns(T.nilable(Cart)) }
          attr_reader :cart
          # Type of information to be displayed by the reader.
          sig { returns(String) }
          attr_reader :type
        end
        # Represents a reader action to collect customer inputs
        sig { returns(CollectInputs) }
        attr_reader :collect_inputs
        # Represents a reader action to collect a payment method
        sig { returns(CollectPaymentMethod) }
        attr_reader :collect_payment_method
        # Represents a reader action to confirm a payment
        sig { returns(ConfirmPaymentIntent) }
        attr_reader :confirm_payment_intent
        # Failure code, only set if status is `failed`.
        sig { returns(T.nilable(String)) }
        attr_reader :failure_code
        # Detailed failure message, only set if status is `failed`.
        sig { returns(T.nilable(String)) }
        attr_reader :failure_message
        # Represents a reader action to process a payment intent
        sig { returns(ProcessPaymentIntent) }
        attr_reader :process_payment_intent
        # Represents a reader action to process a setup intent
        sig { returns(ProcessSetupIntent) }
        attr_reader :process_setup_intent
        # Represents a reader action to refund a payment
        sig { returns(RefundPayment) }
        attr_reader :refund_payment
        # Represents a reader action to set the reader display
        sig { returns(SetReaderDisplay) }
        attr_reader :set_reader_display
        # Status of the action performed by the reader.
        sig { returns(String) }
        attr_reader :status
        # Type of action performed by the reader.
        sig { returns(String) }
        attr_reader :type
      end
      # The most recent action performed by the reader.
      sig { returns(T.nilable(Action)) }
      attr_reader :action
      # The current software version of the reader.
      sig { returns(T.nilable(String)) }
      attr_reader :device_sw_version
      # Device type of the reader.
      sig { returns(String) }
      attr_reader :device_type
      # Unique identifier for the object.
      sig { returns(String) }
      attr_reader :id
      # The local IP address of the reader.
      sig { returns(T.nilable(String)) }
      attr_reader :ip_address
      # Custom label given to the reader for easier identification.
      sig { returns(String) }
      attr_reader :label
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode
      # The location identifier of the reader.
      sig { returns(T.nilable(T.any(String, Stripe::Terminal::Location))) }
      attr_reader :location
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      attr_reader :object
      # Serial number of the reader.
      sig { returns(String) }
      attr_reader :serial_number
      # The networking status of the reader. We do not recommend using this field in flows that may block taking payments.
      sig { returns(T.nilable(String)) }
      attr_reader :status
      # Always true for a deleted object
      sig { returns(T::Boolean) }
      attr_reader :deleted
      class DeleteParams < Stripe::RequestParams; end
      class UpdateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # The new label of the reader.
        sig { returns(T.nilable(String)) }
        attr_accessor :label
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
        attr_accessor :metadata
        sig {
          params(expand: T.nilable(T::Array[String]), label: T.nilable(String), metadata: T.nilable(T.any(String, T::Hash[String, String]))).void
         }
        def initialize(expand: nil, label: nil, metadata: nil); end
      end
      class ListParams < Stripe::RequestParams
        # Filters readers by device type
        sig { returns(T.nilable(String)) }
        attr_accessor :device_type
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit
        # A location ID to filter the response list to only readers at the specific location
        sig { returns(T.nilable(String)) }
        attr_accessor :location
        # Filters readers by serial number
        sig { returns(T.nilable(String)) }
        attr_accessor :serial_number
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :starting_after
        # A status filter to filter readers to only offline or online readers
        sig { returns(T.nilable(String)) }
        attr_accessor :status
        sig {
          params(device_type: T.nilable(String), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), location: T.nilable(String), serial_number: T.nilable(String), starting_after: T.nilable(String), status: T.nilable(String)).void
         }
        def initialize(
          device_type: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          location: nil,
          serial_number: nil,
          starting_after: nil,
          status: nil
        ); end
      end
      class CreateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Custom label given to the reader for easier identification. If no label is specified, the registration code will be used.
        sig { returns(T.nilable(String)) }
        attr_accessor :label
        # The location to assign the reader to.
        sig { returns(T.nilable(String)) }
        attr_accessor :location
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
        attr_accessor :metadata
        # A code generated by the reader used for registering to an account.
        sig { returns(String) }
        attr_accessor :registration_code
        sig {
          params(expand: T.nilable(T::Array[String]), label: T.nilable(String), location: T.nilable(String), metadata: T.nilable(T.any(String, T::Hash[String, String])), registration_code: String).void
         }
        def initialize(
          expand: nil,
          label: nil,
          location: nil,
          metadata: nil,
          registration_code: nil
        ); end
      end
      class CancelActionParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class CollectInputsParams < Stripe::RequestParams
        class Input < Stripe::RequestParams
          class CustomText < Stripe::RequestParams
            # The description which will be displayed when collecting this input
            sig { returns(T.nilable(String)) }
            attr_accessor :description
            # The skip button text
            sig { returns(T.nilable(String)) }
            attr_accessor :skip_button
            # The submit button text
            sig { returns(T.nilable(String)) }
            attr_accessor :submit_button
            # The title which will be displayed when collecting this input
            sig { returns(String) }
            attr_accessor :title
            sig {
              params(description: T.nilable(String), skip_button: T.nilable(String), submit_button: T.nilable(String), title: String).void
             }
            def initialize(description: nil, skip_button: nil, submit_button: nil, title: nil); end
          end
          class Selection < Stripe::RequestParams
            class Choice < Stripe::RequestParams
              # The unique identifier for this choice
              sig { returns(String) }
              attr_accessor :id
              # The style of the button which will be shown for this choice
              sig { returns(T.nilable(String)) }
              attr_accessor :style
              # The text which will be shown on the button for this choice
              sig { returns(String) }
              attr_accessor :text
              sig { params(id: String, style: T.nilable(String), text: String).void }
              def initialize(id: nil, style: nil, text: nil); end
            end
            # List of choices for the `selection` input
            sig {
              returns(T::Array[::Stripe::Terminal::Reader::CollectInputsParams::Input::Selection::Choice])
             }
            attr_accessor :choices
            sig {
              params(choices: T::Array[::Stripe::Terminal::Reader::CollectInputsParams::Input::Selection::Choice]).void
             }
            def initialize(choices: nil); end
          end
          class Toggle < Stripe::RequestParams
            # The default value of the toggle
            sig { returns(T.nilable(String)) }
            attr_accessor :default_value
            # The description which will be displayed for the toggle
            sig { returns(T.nilable(String)) }
            attr_accessor :description
            # The title which will be displayed for the toggle
            sig { returns(T.nilable(String)) }
            attr_accessor :title
            sig {
              params(default_value: T.nilable(String), description: T.nilable(String), title: T.nilable(String)).void
             }
            def initialize(default_value: nil, description: nil, title: nil); end
          end
          # Customize the text which will be displayed while collecting this input
          sig { returns(::Stripe::Terminal::Reader::CollectInputsParams::Input::CustomText) }
          attr_accessor :custom_text
          # Indicate that this input is required, disabling the skip button
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :required
          # Options for the `selection` input
          sig {
            returns(T.nilable(::Stripe::Terminal::Reader::CollectInputsParams::Input::Selection))
           }
          attr_accessor :selection
          # List of toggles to be displayed and customization for the toggles
          sig {
            returns(T.nilable(T::Array[::Stripe::Terminal::Reader::CollectInputsParams::Input::Toggle]))
           }
          attr_accessor :toggles
          # The type of input to collect
          sig { returns(String) }
          attr_accessor :type
          sig {
            params(custom_text: ::Stripe::Terminal::Reader::CollectInputsParams::Input::CustomText, required: T.nilable(T::Boolean), selection: T.nilable(::Stripe::Terminal::Reader::CollectInputsParams::Input::Selection), toggles: T.nilable(T::Array[::Stripe::Terminal::Reader::CollectInputsParams::Input::Toggle]), type: String).void
           }
          def initialize(
            custom_text: nil,
            required: nil,
            selection: nil,
            toggles: nil,
            type: nil
          ); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # List of inputs to be collected using the Reader
        sig { returns(T::Array[::Stripe::Terminal::Reader::CollectInputsParams::Input]) }
        attr_accessor :inputs
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        sig {
          params(expand: T.nilable(T::Array[String]), inputs: T::Array[::Stripe::Terminal::Reader::CollectInputsParams::Input], metadata: T.nilable(T::Hash[String, String])).void
         }
        def initialize(expand: nil, inputs: nil, metadata: nil); end
      end
      class CollectPaymentMethodParams < Stripe::RequestParams
        class CollectConfig < Stripe::RequestParams
          class Tipping < Stripe::RequestParams
            # Amount used to calculate tip suggestions on tipping selection screen for this transaction. Must be a positive integer in the smallest currency unit (e.g., 100 cents to represent $1.00 or 100 to represent ¥100, a zero-decimal currency).
            sig { returns(T.nilable(Integer)) }
            attr_accessor :amount_eligible
            sig { params(amount_eligible: T.nilable(Integer)).void }
            def initialize(amount_eligible: nil); end
          end
          # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow.
          sig { returns(T.nilable(String)) }
          attr_accessor :allow_redisplay
          # Enables cancel button on transaction screens.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :enable_customer_cancellation
          # Override showing a tipping selection screen on this transaction.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :skip_tipping
          # Tipping configuration for this transaction.
          sig {
            returns(T.nilable(::Stripe::Terminal::Reader::CollectPaymentMethodParams::CollectConfig::Tipping))
           }
          attr_accessor :tipping
          sig {
            params(allow_redisplay: T.nilable(String), enable_customer_cancellation: T.nilable(T::Boolean), skip_tipping: T.nilable(T::Boolean), tipping: T.nilable(::Stripe::Terminal::Reader::CollectPaymentMethodParams::CollectConfig::Tipping)).void
           }
          def initialize(
            allow_redisplay: nil,
            enable_customer_cancellation: nil,
            skip_tipping: nil,
            tipping: nil
          ); end
        end
        # Configuration overrides.
        sig {
          returns(T.nilable(::Stripe::Terminal::Reader::CollectPaymentMethodParams::CollectConfig))
         }
        attr_accessor :collect_config
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # PaymentIntent ID.
        sig { returns(String) }
        attr_accessor :payment_intent
        sig {
          params(collect_config: T.nilable(::Stripe::Terminal::Reader::CollectPaymentMethodParams::CollectConfig), expand: T.nilable(T::Array[String]), payment_intent: String).void
         }
        def initialize(collect_config: nil, expand: nil, payment_intent: nil); end
      end
      class ConfirmPaymentIntentParams < Stripe::RequestParams
        class ConfirmConfig < Stripe::RequestParams
          # The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method's app or site. If you'd prefer to redirect to a mobile application, you can alternatively supply an application URI scheme.
          sig { returns(T.nilable(String)) }
          attr_accessor :return_url
          sig { params(return_url: T.nilable(String)).void }
          def initialize(return_url: nil); end
        end
        # Configuration overrides.
        sig {
          returns(T.nilable(::Stripe::Terminal::Reader::ConfirmPaymentIntentParams::ConfirmConfig))
         }
        attr_accessor :confirm_config
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # PaymentIntent ID.
        sig { returns(String) }
        attr_accessor :payment_intent
        sig {
          params(confirm_config: T.nilable(::Stripe::Terminal::Reader::ConfirmPaymentIntentParams::ConfirmConfig), expand: T.nilable(T::Array[String]), payment_intent: String).void
         }
        def initialize(confirm_config: nil, expand: nil, payment_intent: nil); end
      end
      class ProcessPaymentIntentParams < Stripe::RequestParams
        class ProcessConfig < Stripe::RequestParams
          class Tipping < Stripe::RequestParams
            # Amount used to calculate tip suggestions on tipping selection screen for this transaction. Must be a positive integer in the smallest currency unit (e.g., 100 cents to represent $1.00 or 100 to represent ¥100, a zero-decimal currency).
            sig { returns(T.nilable(Integer)) }
            attr_accessor :amount_eligible
            sig { params(amount_eligible: T.nilable(Integer)).void }
            def initialize(amount_eligible: nil); end
          end
          # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow.
          sig { returns(T.nilable(String)) }
          attr_accessor :allow_redisplay
          # Enables cancel button on transaction screens.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :enable_customer_cancellation
          # The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method's app or site. If you'd prefer to redirect to a mobile application, you can alternatively supply an application URI scheme.
          sig { returns(T.nilable(String)) }
          attr_accessor :return_url
          # Override showing a tipping selection screen on this transaction.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :skip_tipping
          # Tipping configuration for this transaction.
          sig {
            returns(T.nilable(::Stripe::Terminal::Reader::ProcessPaymentIntentParams::ProcessConfig::Tipping))
           }
          attr_accessor :tipping
          sig {
            params(allow_redisplay: T.nilable(String), enable_customer_cancellation: T.nilable(T::Boolean), return_url: T.nilable(String), skip_tipping: T.nilable(T::Boolean), tipping: T.nilable(::Stripe::Terminal::Reader::ProcessPaymentIntentParams::ProcessConfig::Tipping)).void
           }
          def initialize(
            allow_redisplay: nil,
            enable_customer_cancellation: nil,
            return_url: nil,
            skip_tipping: nil,
            tipping: nil
          ); end
        end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # PaymentIntent ID
        sig { returns(String) }
        attr_accessor :payment_intent
        # Configuration overrides
        sig {
          returns(T.nilable(::Stripe::Terminal::Reader::ProcessPaymentIntentParams::ProcessConfig))
         }
        attr_accessor :process_config
        sig {
          params(expand: T.nilable(T::Array[String]), payment_intent: String, process_config: T.nilable(::Stripe::Terminal::Reader::ProcessPaymentIntentParams::ProcessConfig)).void
         }
        def initialize(expand: nil, payment_intent: nil, process_config: nil); end
      end
      class ProcessSetupIntentParams < Stripe::RequestParams
        class ProcessConfig < Stripe::RequestParams
          # Enables cancel button on transaction screens.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :enable_customer_cancellation
          sig { params(enable_customer_cancellation: T.nilable(T::Boolean)).void }
          def initialize(enable_customer_cancellation: nil); end
        end
        # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow.
        sig { returns(String) }
        attr_accessor :allow_redisplay
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Configuration overrides
        sig {
          returns(T.nilable(::Stripe::Terminal::Reader::ProcessSetupIntentParams::ProcessConfig))
         }
        attr_accessor :process_config
        # SetupIntent ID
        sig { returns(String) }
        attr_accessor :setup_intent
        sig {
          params(allow_redisplay: String, expand: T.nilable(T::Array[String]), process_config: T.nilable(::Stripe::Terminal::Reader::ProcessSetupIntentParams::ProcessConfig), setup_intent: String).void
         }
        def initialize(
          allow_redisplay: nil,
          expand: nil,
          process_config: nil,
          setup_intent: nil
        ); end
      end
      class RefundPaymentParams < Stripe::RequestParams
        class RefundPaymentConfig < Stripe::RequestParams
          # Enables cancel button on transaction screens.
          sig { returns(T.nilable(T::Boolean)) }
          attr_accessor :enable_customer_cancellation
          sig { params(enable_customer_cancellation: T.nilable(T::Boolean)).void }
          def initialize(enable_customer_cancellation: nil); end
        end
        # A positive integer in __cents__ representing how much of this charge to refund.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount
        # ID of the Charge to refund.
        sig { returns(T.nilable(String)) }
        attr_accessor :charge
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        attr_accessor :metadata
        # ID of the PaymentIntent to refund.
        sig { returns(T.nilable(String)) }
        attr_accessor :payment_intent
        # Boolean indicating whether the application fee should be refunded when refunding this charge. If a full charge refund is given, the full application fee will be refunded. Otherwise, the application fee will be refunded in an amount proportional to the amount of the charge refunded. An application fee can be refunded only by the application that created the charge.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :refund_application_fee
        # Configuration overrides
        sig {
          returns(T.nilable(::Stripe::Terminal::Reader::RefundPaymentParams::RefundPaymentConfig))
         }
        attr_accessor :refund_payment_config
        # Boolean indicating whether the transfer should be reversed when refunding this charge. The transfer will be reversed proportionally to the amount being refunded (either the entire or partial amount). A transfer can be reversed only by the application that created the charge.
        sig { returns(T.nilable(T::Boolean)) }
        attr_accessor :reverse_transfer
        sig {
          params(amount: T.nilable(Integer), charge: T.nilable(String), expand: T.nilable(T::Array[String]), metadata: T.nilable(T::Hash[String, String]), payment_intent: T.nilable(String), refund_application_fee: T.nilable(T::Boolean), refund_payment_config: T.nilable(::Stripe::Terminal::Reader::RefundPaymentParams::RefundPaymentConfig), reverse_transfer: T.nilable(T::Boolean)).void
         }
        def initialize(
          amount: nil,
          charge: nil,
          expand: nil,
          metadata: nil,
          payment_intent: nil,
          refund_application_fee: nil,
          refund_payment_config: nil,
          reverse_transfer: nil
        ); end
      end
      class SetReaderDisplayParams < Stripe::RequestParams
        class Cart < Stripe::RequestParams
          class LineItem < Stripe::RequestParams
            # The price of the item in cents.
            sig { returns(Integer) }
            attr_accessor :amount
            # The description or name of the item.
            sig { returns(String) }
            attr_accessor :description
            # The quantity of the line item being purchased.
            sig { returns(Integer) }
            attr_accessor :quantity
            sig { params(amount: Integer, description: String, quantity: Integer).void }
            def initialize(amount: nil, description: nil, quantity: nil); end
          end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          attr_accessor :currency
          # Array of line items that were purchased.
          sig {
            returns(T::Array[::Stripe::Terminal::Reader::SetReaderDisplayParams::Cart::LineItem])
           }
          attr_accessor :line_items
          # The amount of tax in cents.
          sig { returns(T.nilable(Integer)) }
          attr_accessor :tax
          # Total balance of cart due in cents.
          sig { returns(Integer) }
          attr_accessor :total
          sig {
            params(currency: String, line_items: T::Array[::Stripe::Terminal::Reader::SetReaderDisplayParams::Cart::LineItem], tax: T.nilable(Integer), total: Integer).void
           }
          def initialize(currency: nil, line_items: nil, tax: nil, total: nil); end
        end
        # Cart
        sig { returns(T.nilable(::Stripe::Terminal::Reader::SetReaderDisplayParams::Cart)) }
        attr_accessor :cart
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Type
        sig { returns(String) }
        attr_accessor :type
        sig {
          params(cart: T.nilable(::Stripe::Terminal::Reader::SetReaderDisplayParams::Cart), expand: T.nilable(T::Array[String]), type: String).void
         }
        def initialize(cart: nil, expand: nil, type: nil); end
      end
      class PresentPaymentMethodParams < Stripe::RequestParams
        class Card < Stripe::RequestParams
          # Card security code.
          sig { returns(T.nilable(String)) }
          attr_accessor :cvc
          # Two-digit number representing the card's expiration month.
          sig { returns(Integer) }
          attr_accessor :exp_month
          # Two- or four-digit number representing the card's expiration year.
          sig { returns(Integer) }
          attr_accessor :exp_year
          # The card number, as a string without any separators.
          sig { returns(String) }
          attr_accessor :number
          sig {
            params(cvc: T.nilable(String), exp_month: Integer, exp_year: Integer, number: String).void
           }
          def initialize(cvc: nil, exp_month: nil, exp_year: nil, number: nil); end
        end
        class CardPresent < Stripe::RequestParams
          # The card number, as a string without any separators.
          sig { returns(T.nilable(String)) }
          attr_accessor :number
          sig { params(number: T.nilable(String)).void }
          def initialize(number: nil); end
        end
        class InteracPresent < Stripe::RequestParams
          # Card Number
          sig { returns(T.nilable(String)) }
          attr_accessor :number
          sig { params(number: T.nilable(String)).void }
          def initialize(number: nil); end
        end
        # Simulated on-reader tip amount.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :amount_tip
        # Simulated data for the card payment method.
        sig { returns(T.nilable(::Stripe::Terminal::Reader::PresentPaymentMethodParams::Card)) }
        attr_accessor :card
        # Simulated data for the card_present payment method.
        sig {
          returns(T.nilable(::Stripe::Terminal::Reader::PresentPaymentMethodParams::CardPresent))
         }
        attr_accessor :card_present
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # Simulated data for the interac_present payment method.
        sig {
          returns(T.nilable(::Stripe::Terminal::Reader::PresentPaymentMethodParams::InteracPresent))
         }
        attr_accessor :interac_present
        # Simulated payment type.
        sig { returns(T.nilable(String)) }
        attr_accessor :type
        sig {
          params(amount_tip: T.nilable(Integer), card: T.nilable(::Stripe::Terminal::Reader::PresentPaymentMethodParams::Card), card_present: T.nilable(::Stripe::Terminal::Reader::PresentPaymentMethodParams::CardPresent), expand: T.nilable(T::Array[String]), interac_present: T.nilable(::Stripe::Terminal::Reader::PresentPaymentMethodParams::InteracPresent), type: T.nilable(String)).void
         }
        def initialize(
          amount_tip: nil,
          card: nil,
          card_present: nil,
          expand: nil,
          interac_present: nil,
          type: nil
        ); end
      end
      class SucceedInputCollectionParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # This parameter defines the skip behavior for input collection.
        sig { returns(T.nilable(String)) }
        attr_accessor :skip_non_required_inputs
        sig {
          params(expand: T.nilable(T::Array[String]), skip_non_required_inputs: T.nilable(String)).void
         }
        def initialize(expand: nil, skip_non_required_inputs: nil); end
      end
      class TimeoutInputCollectionParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      # Cancels the current reader action.
      sig {
        params(params: T.any(::Stripe::Terminal::Reader::CancelActionParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def cancel_action(params = {}, opts = {}); end

      # Cancels the current reader action.
      sig {
        params(reader: String, params: T.any(::Stripe::Terminal::Reader::CancelActionParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def self.cancel_action(reader, params = {}, opts = {}); end

      # Initiates an input collection flow on a Reader.
      sig {
        params(params: T.any(::Stripe::Terminal::Reader::CollectInputsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def collect_inputs(params = {}, opts = {}); end

      # Initiates an input collection flow on a Reader.
      sig {
        params(reader: String, params: T.any(::Stripe::Terminal::Reader::CollectInputsParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def self.collect_inputs(reader, params = {}, opts = {}); end

      # Initiates a payment flow on a Reader and updates the PaymentIntent with card details before manual confirmation.
      sig {
        params(params: T.any(::Stripe::Terminal::Reader::CollectPaymentMethodParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def collect_payment_method(params = {}, opts = {}); end

      # Initiates a payment flow on a Reader and updates the PaymentIntent with card details before manual confirmation.
      sig {
        params(reader: String, params: T.any(::Stripe::Terminal::Reader::CollectPaymentMethodParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def self.collect_payment_method(reader, params = {}, opts = {}); end

      # Finalizes a payment on a Reader.
      sig {
        params(params: T.any(::Stripe::Terminal::Reader::ConfirmPaymentIntentParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def confirm_payment_intent(params = {}, opts = {}); end

      # Finalizes a payment on a Reader.
      sig {
        params(reader: String, params: T.any(::Stripe::Terminal::Reader::ConfirmPaymentIntentParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def self.confirm_payment_intent(reader, params = {}, opts = {}); end

      # Creates a new Reader object.
      sig {
        params(params: T.any(::Stripe::Terminal::Reader::CreateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def self.create(params = {}, opts = {}); end

      # Deletes a Reader object.
      sig {
        params(reader: String, params: T.any(::Stripe::Terminal::Reader::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def self.delete(reader, params = {}, opts = {}); end

      # Deletes a Reader object.
      sig {
        params(params: T.any(::Stripe::Terminal::Reader::DeleteParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def delete(params = {}, opts = {}); end

      # Returns a list of Reader objects.
      sig {
        params(params: T.any(::Stripe::Terminal::Reader::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end

      # Initiates a payment flow on a Reader.
      sig {
        params(params: T.any(::Stripe::Terminal::Reader::ProcessPaymentIntentParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def process_payment_intent(params = {}, opts = {}); end

      # Initiates a payment flow on a Reader.
      sig {
        params(reader: String, params: T.any(::Stripe::Terminal::Reader::ProcessPaymentIntentParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def self.process_payment_intent(reader, params = {}, opts = {}); end

      # Initiates a setup intent flow on a Reader.
      sig {
        params(params: T.any(::Stripe::Terminal::Reader::ProcessSetupIntentParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def process_setup_intent(params = {}, opts = {}); end

      # Initiates a setup intent flow on a Reader.
      sig {
        params(reader: String, params: T.any(::Stripe::Terminal::Reader::ProcessSetupIntentParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def self.process_setup_intent(reader, params = {}, opts = {}); end

      # Initiates a refund on a Reader
      sig {
        params(params: T.any(::Stripe::Terminal::Reader::RefundPaymentParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def refund_payment(params = {}, opts = {}); end

      # Initiates a refund on a Reader
      sig {
        params(reader: String, params: T.any(::Stripe::Terminal::Reader::RefundPaymentParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def self.refund_payment(reader, params = {}, opts = {}); end

      # Sets reader display to show cart details.
      sig {
        params(params: T.any(::Stripe::Terminal::Reader::SetReaderDisplayParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def set_reader_display(params = {}, opts = {}); end

      # Sets reader display to show cart details.
      sig {
        params(reader: String, params: T.any(::Stripe::Terminal::Reader::SetReaderDisplayParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def self.set_reader_display(reader, params = {}, opts = {}); end

      # Updates a Reader object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
      sig {
        params(reader: String, params: T.any(::Stripe::Terminal::Reader::UpdateParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Terminal::Reader)
       }
      def self.update(reader, params = {}, opts = {}); end
    end
  end
end