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
              def description; end
              # Customize the default label for this input's skip button
              sig { returns(T.nilable(String)) }
              def skip_button; end
              # Customize the default label for this input's submit button
              sig { returns(T.nilable(String)) }
              def submit_button; end
              # Customize the default title for this input
              sig { returns(T.nilable(String)) }
              def title; end
            end
            class Email < Stripe::StripeObject
              # The collected email address
              sig { returns(T.nilable(String)) }
              def value; end
            end
            class Numeric < Stripe::StripeObject
              # The collected number
              sig { returns(T.nilable(String)) }
              def value; end
            end
            class Phone < Stripe::StripeObject
              # The collected phone number
              sig { returns(T.nilable(String)) }
              def value; end
            end
            class Selection < Stripe::StripeObject
              class Choice < Stripe::StripeObject
                # The id to be selected
                sig { returns(T.nilable(String)) }
                def id; end
                # The button style for the choice
                sig { returns(T.nilable(String)) }
                def style; end
                # The text to be selected
                sig { returns(String) }
                def text; end
              end
              # List of possible choices to be selected
              sig { returns(T::Array[Choice]) }
              def choices; end
              # The id of the selected choice
              sig { returns(T.nilable(String)) }
              def id; end
              # The text of the selected choice
              sig { returns(T.nilable(String)) }
              def text; end
            end
            class Signature < Stripe::StripeObject
              # The File ID of a collected signature image
              sig { returns(T.nilable(String)) }
              def value; end
            end
            class Text < Stripe::StripeObject
              # The collected text value
              sig { returns(T.nilable(String)) }
              def value; end
            end
            class Toggle < Stripe::StripeObject
              # The toggle's default value
              sig { returns(T.nilable(String)) }
              def default_value; end
              # The toggle's description text
              sig { returns(T.nilable(String)) }
              def description; end
              # The toggle's title text
              sig { returns(T.nilable(String)) }
              def title; end
              # The toggle's collected value
              sig { returns(T.nilable(String)) }
              def value; end
            end
            # Default text of input being collected.
            sig { returns(T.nilable(CustomText)) }
            def custom_text; end
            # Information about a email being collected using a reader
            sig { returns(Email) }
            def email; end
            # Information about a number being collected using a reader
            sig { returns(Numeric) }
            def numeric; end
            # Information about a phone number being collected using a reader
            sig { returns(Phone) }
            def phone; end
            # Indicate that this input is required, disabling the skip button.
            sig { returns(T.nilable(T::Boolean)) }
            def required; end
            # Information about a selection being collected using a reader
            sig { returns(Selection) }
            def selection; end
            # Information about a signature being collected using a reader
            sig { returns(Signature) }
            def signature; end
            # Indicate that this input was skipped by the user.
            sig { returns(T::Boolean) }
            def skipped; end
            # Information about text being collected using a reader
            sig { returns(Text) }
            def text; end
            # List of toggles being collected. Values are present if collection is complete.
            sig { returns(T.nilable(T::Array[Toggle])) }
            def toggles; end
            # Type of input being collected.
            sig { returns(String) }
            def type; end
          end
          # List of inputs to be collected.
          sig { returns(T::Array[Input]) }
          def inputs; end
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T.nilable(T::Hash[String, String])) }
          def metadata; end
        end
        class CollectPaymentMethod < Stripe::StripeObject
          class CollectConfig < Stripe::StripeObject
            class Tipping < Stripe::StripeObject
              # Amount used to calculate tip suggestions on tipping selection screen for this transaction. Must be a positive integer in the smallest currency unit (e.g., 100 cents to represent $1.00 or 100 to represent ¥100, a zero-decimal currency).
              sig { returns(Integer) }
              def amount_eligible; end
            end
            # Enable customer-initiated cancellation when processing this payment.
            sig { returns(T::Boolean) }
            def enable_customer_cancellation; end
            # Override showing a tipping selection screen on this transaction.
            sig { returns(T::Boolean) }
            def skip_tipping; end
            # Represents a per-transaction tipping configuration
            sig { returns(Tipping) }
            def tipping; end
          end
          # Represents a per-transaction override of a reader configuration
          sig { returns(CollectConfig) }
          def collect_config; end
          # Most recent PaymentIntent processed by the reader.
          sig { returns(T.any(String, Stripe::PaymentIntent)) }
          def payment_intent; end
          # PaymentMethod objects represent your customer's payment instruments.
          # You can use them with [PaymentIntents](https://stripe.com/docs/payments/payment-intents) to collect payments or save them to
          # Customer objects to store instrument details for future payments.
          #
          # Related guides: [Payment Methods](https://stripe.com/docs/payments/payment-methods) and [More Payment Scenarios](https://stripe.com/docs/payments/more-payment-scenarios).
          sig { returns(Stripe::PaymentMethod) }
          def payment_method; end
        end
        class ConfirmPaymentIntent < Stripe::StripeObject
          class ConfirmConfig < Stripe::StripeObject
            # If the customer doesn't abandon authenticating the payment, they're redirected to this URL after completion.
            sig { returns(String) }
            def return_url; end
          end
          # Represents a per-transaction override of a reader configuration
          sig { returns(ConfirmConfig) }
          def confirm_config; end
          # Most recent PaymentIntent processed by the reader.
          sig { returns(T.any(String, Stripe::PaymentIntent)) }
          def payment_intent; end
        end
        class ProcessPaymentIntent < Stripe::StripeObject
          class ProcessConfig < Stripe::StripeObject
            class Tipping < Stripe::StripeObject
              # Amount used to calculate tip suggestions on tipping selection screen for this transaction. Must be a positive integer in the smallest currency unit (e.g., 100 cents to represent $1.00 or 100 to represent ¥100, a zero-decimal currency).
              sig { returns(Integer) }
              def amount_eligible; end
            end
            # Enable customer-initiated cancellation when processing this payment.
            sig { returns(T::Boolean) }
            def enable_customer_cancellation; end
            # If the customer doesn't abandon authenticating the payment, they're redirected to this URL after completion.
            sig { returns(String) }
            def return_url; end
            # Override showing a tipping selection screen on this transaction.
            sig { returns(T::Boolean) }
            def skip_tipping; end
            # Represents a per-transaction tipping configuration
            sig { returns(Tipping) }
            def tipping; end
          end
          # Most recent PaymentIntent processed by the reader.
          sig { returns(T.any(String, Stripe::PaymentIntent)) }
          def payment_intent; end
          # Represents a per-transaction override of a reader configuration
          sig { returns(ProcessConfig) }
          def process_config; end
        end
        class ProcessSetupIntent < Stripe::StripeObject
          class ProcessConfig < Stripe::StripeObject
            # Enable customer-initiated cancellation when processing this SetupIntent.
            sig { returns(T::Boolean) }
            def enable_customer_cancellation; end
          end
          # ID of a card PaymentMethod generated from the card_present PaymentMethod that may be attached to a Customer for future transactions. Only present if it was possible to generate a card PaymentMethod.
          sig { returns(String) }
          def generated_card; end
          # Represents a per-setup override of a reader configuration
          sig { returns(ProcessConfig) }
          def process_config; end
          # Most recent SetupIntent processed by the reader.
          sig { returns(T.any(String, Stripe::SetupIntent)) }
          def setup_intent; end
        end
        class RefundPayment < Stripe::StripeObject
          class RefundPaymentConfig < Stripe::StripeObject
            # Enable customer-initiated cancellation when refunding this payment.
            sig { returns(T::Boolean) }
            def enable_customer_cancellation; end
          end
          # The amount being refunded.
          sig { returns(Integer) }
          def amount; end
          # Charge that is being refunded.
          sig { returns(T.any(String, Stripe::Charge)) }
          def charge; end
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          sig { returns(T::Hash[String, String]) }
          def metadata; end
          # Payment intent that is being refunded.
          sig { returns(T.any(String, Stripe::PaymentIntent)) }
          def payment_intent; end
          # The reason for the refund.
          sig { returns(String) }
          def reason; end
          # Unique identifier for the refund object.
          sig { returns(T.any(String, Stripe::Refund)) }
          def refund; end
          # Boolean indicating whether the application fee should be refunded when refunding this charge. If a full charge refund is given, the full application fee will be refunded. Otherwise, the application fee will be refunded in an amount proportional to the amount of the charge refunded. An application fee can be refunded only by the application that created the charge.
          sig { returns(T::Boolean) }
          def refund_application_fee; end
          # Represents a per-transaction override of a reader configuration
          sig { returns(RefundPaymentConfig) }
          def refund_payment_config; end
          # Boolean indicating whether the transfer should be reversed when refunding this charge. The transfer will be reversed proportionally to the amount being refunded (either the entire or partial amount). A transfer can be reversed only by the application that created the charge.
          sig { returns(T::Boolean) }
          def reverse_transfer; end
        end
        class SetReaderDisplay < Stripe::StripeObject
          class Cart < Stripe::StripeObject
            class LineItem < Stripe::StripeObject
              # The amount of the line item. A positive integer in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
              sig { returns(Integer) }
              def amount; end
              # Description of the line item.
              sig { returns(String) }
              def description; end
              # The quantity of the line item.
              sig { returns(Integer) }
              def quantity; end
            end
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            sig { returns(String) }
            def currency; end
            # List of line items in the cart.
            sig { returns(T::Array[LineItem]) }
            def line_items; end
            # Tax amount for the entire cart. A positive integer in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
            sig { returns(T.nilable(Integer)) }
            def tax; end
            # Total amount for the entire cart, including tax. A positive integer in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
            sig { returns(Integer) }
            def total; end
          end
          # Cart object to be displayed by the reader.
          sig { returns(T.nilable(Cart)) }
          def cart; end
          # Type of information to be displayed by the reader.
          sig { returns(String) }
          def type; end
        end
        # Represents a reader action to collect customer inputs
        sig { returns(CollectInputs) }
        def collect_inputs; end
        # Represents a reader action to collect a payment method
        sig { returns(CollectPaymentMethod) }
        def collect_payment_method; end
        # Represents a reader action to confirm a payment
        sig { returns(ConfirmPaymentIntent) }
        def confirm_payment_intent; end
        # Failure code, only set if status is `failed`.
        sig { returns(T.nilable(String)) }
        def failure_code; end
        # Detailed failure message, only set if status is `failed`.
        sig { returns(T.nilable(String)) }
        def failure_message; end
        # Represents a reader action to process a payment intent
        sig { returns(ProcessPaymentIntent) }
        def process_payment_intent; end
        # Represents a reader action to process a setup intent
        sig { returns(ProcessSetupIntent) }
        def process_setup_intent; end
        # Represents a reader action to refund a payment
        sig { returns(RefundPayment) }
        def refund_payment; end
        # Represents a reader action to set the reader display
        sig { returns(SetReaderDisplay) }
        def set_reader_display; end
        # Status of the action performed by the reader.
        sig { returns(String) }
        def status; end
        # Type of action performed by the reader.
        sig { returns(String) }
        def type; end
      end
      # The most recent action performed by the reader.
      sig { returns(T.nilable(Action)) }
      def action; end
      # The current software version of the reader.
      sig { returns(T.nilable(String)) }
      def device_sw_version; end
      # Device type of the reader.
      sig { returns(String) }
      def device_type; end
      # Unique identifier for the object.
      sig { returns(String) }
      def id; end
      # The local IP address of the reader.
      sig { returns(T.nilable(String)) }
      def ip_address; end
      # Custom label given to the reader for easier identification.
      sig { returns(String) }
      def label; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # The location identifier of the reader.
      sig { returns(T.nilable(T.any(String, Stripe::Terminal::Location))) }
      def location; end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T::Hash[String, String]) }
      def metadata; end
      # String representing the object's type. Objects of the same type share the same value.
      sig { returns(String) }
      def object; end
      # Serial number of the reader.
      sig { returns(String) }
      def serial_number; end
      # The networking status of the reader. We do not recommend using this field in flows that may block taking payments.
      sig { returns(T.nilable(String)) }
      def status; end
      # Always true for a deleted object
      sig { returns(T::Boolean) }
      def deleted; end
      class DeleteParams < Stripe::RequestParams; end
      class UpdateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # The new label of the reader.
        sig { returns(T.nilable(String)) }
        def label; end
        sig { params(_label: T.nilable(String)).returns(T.nilable(String)) }
        def label=(_label); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
         }
        def metadata=(_metadata); end
        sig {
          params(expand: T.nilable(T::Array[String]), label: T.nilable(String), metadata: T.nilable(T.any(String, T::Hash[String, String]))).void
         }
        def initialize(expand: nil, label: nil, metadata: nil); end
      end
      class ListParams < Stripe::RequestParams
        # Filters readers by device type
        sig { returns(T.nilable(String)) }
        def device_type; end
        sig { params(_device_type: T.nilable(String)).returns(T.nilable(String)) }
        def device_type=(_device_type); end
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        def ending_before; end
        sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
        def ending_before=(_ending_before); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # A location ID to filter the response list to only readers at the specific location
        sig { returns(T.nilable(String)) }
        def location; end
        sig { params(_location: T.nilable(String)).returns(T.nilable(String)) }
        def location=(_location); end
        # Filters readers by serial number
        sig { returns(T.nilable(String)) }
        def serial_number; end
        sig { params(_serial_number: T.nilable(String)).returns(T.nilable(String)) }
        def serial_number=(_serial_number); end
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        def starting_after; end
        sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
        def starting_after=(_starting_after); end
        # A status filter to filter readers to only offline or online readers
        sig { returns(T.nilable(String)) }
        def status; end
        sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
        def status=(_status); end
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
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Custom label given to the reader for easier identification. If no label is specified, the registration code will be used.
        sig { returns(T.nilable(String)) }
        def label; end
        sig { params(_label: T.nilable(String)).returns(T.nilable(String)) }
        def label=(_label); end
        # The location to assign the reader to.
        sig { returns(T.nilable(String)) }
        def location; end
        sig { params(_location: T.nilable(String)).returns(T.nilable(String)) }
        def location=(_location); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T.any(String, T::Hash[String, String]))) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T.any(String, T::Hash[String, String]))).returns(T.nilable(T.any(String, T::Hash[String, String])))
         }
        def metadata=(_metadata); end
        # A code generated by the reader used for registering to an account.
        sig { returns(String) }
        def registration_code; end
        sig { params(_registration_code: String).returns(String) }
        def registration_code=(_registration_code); end
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
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      class CollectInputsParams < Stripe::RequestParams
        class Input < Stripe::RequestParams
          class CustomText < Stripe::RequestParams
            # The description which will be displayed when collecting this input
            sig { returns(T.nilable(String)) }
            def description; end
            sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
            def description=(_description); end
            # The skip button text
            sig { returns(T.nilable(String)) }
            def skip_button; end
            sig { params(_skip_button: T.nilable(String)).returns(T.nilable(String)) }
            def skip_button=(_skip_button); end
            # The submit button text
            sig { returns(T.nilable(String)) }
            def submit_button; end
            sig { params(_submit_button: T.nilable(String)).returns(T.nilable(String)) }
            def submit_button=(_submit_button); end
            # The title which will be displayed when collecting this input
            sig { returns(String) }
            def title; end
            sig { params(_title: String).returns(String) }
            def title=(_title); end
            sig {
              params(description: T.nilable(String), skip_button: T.nilable(String), submit_button: T.nilable(String), title: String).void
             }
            def initialize(description: nil, skip_button: nil, submit_button: nil, title: nil); end
          end
          class Selection < Stripe::RequestParams
            class Choice < Stripe::RequestParams
              # The unique identifier for this choice
              sig { returns(String) }
              def id; end
              sig { params(_id: String).returns(String) }
              def id=(_id); end
              # The style of the button which will be shown for this choice
              sig { returns(T.nilable(String)) }
              def style; end
              sig { params(_style: T.nilable(String)).returns(T.nilable(String)) }
              def style=(_style); end
              # The text which will be shown on the button for this choice
              sig { returns(String) }
              def text; end
              sig { params(_text: String).returns(String) }
              def text=(_text); end
              sig { params(id: String, style: T.nilable(String), text: String).void }
              def initialize(id: nil, style: nil, text: nil); end
            end
            # List of choices for the `selection` input
            sig {
              returns(T::Array[::Stripe::Terminal::Reader::CollectInputsParams::Input::Selection::Choice])
             }
            def choices; end
            sig {
              params(_choices: T::Array[::Stripe::Terminal::Reader::CollectInputsParams::Input::Selection::Choice]).returns(T::Array[::Stripe::Terminal::Reader::CollectInputsParams::Input::Selection::Choice])
             }
            def choices=(_choices); end
            sig {
              params(choices: T::Array[::Stripe::Terminal::Reader::CollectInputsParams::Input::Selection::Choice]).void
             }
            def initialize(choices: nil); end
          end
          class Toggle < Stripe::RequestParams
            # The default value of the toggle
            sig { returns(T.nilable(String)) }
            def default_value; end
            sig { params(_default_value: T.nilable(String)).returns(T.nilable(String)) }
            def default_value=(_default_value); end
            # The description which will be displayed for the toggle
            sig { returns(T.nilable(String)) }
            def description; end
            sig { params(_description: T.nilable(String)).returns(T.nilable(String)) }
            def description=(_description); end
            # The title which will be displayed for the toggle
            sig { returns(T.nilable(String)) }
            def title; end
            sig { params(_title: T.nilable(String)).returns(T.nilable(String)) }
            def title=(_title); end
            sig {
              params(default_value: T.nilable(String), description: T.nilable(String), title: T.nilable(String)).void
             }
            def initialize(default_value: nil, description: nil, title: nil); end
          end
          # Customize the text which will be displayed while collecting this input
          sig { returns(::Stripe::Terminal::Reader::CollectInputsParams::Input::CustomText) }
          def custom_text; end
          sig {
            params(_custom_text: ::Stripe::Terminal::Reader::CollectInputsParams::Input::CustomText).returns(::Stripe::Terminal::Reader::CollectInputsParams::Input::CustomText)
           }
          def custom_text=(_custom_text); end
          # Indicate that this input is required, disabling the skip button
          sig { returns(T.nilable(T::Boolean)) }
          def required; end
          sig { params(_required: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def required=(_required); end
          # Options for the `selection` input
          sig {
            returns(T.nilable(::Stripe::Terminal::Reader::CollectInputsParams::Input::Selection))
           }
          def selection; end
          sig {
            params(_selection: T.nilable(::Stripe::Terminal::Reader::CollectInputsParams::Input::Selection)).returns(T.nilable(::Stripe::Terminal::Reader::CollectInputsParams::Input::Selection))
           }
          def selection=(_selection); end
          # List of toggles to be displayed and customization for the toggles
          sig {
            returns(T.nilable(T::Array[::Stripe::Terminal::Reader::CollectInputsParams::Input::Toggle]))
           }
          def toggles; end
          sig {
            params(_toggles: T.nilable(T::Array[::Stripe::Terminal::Reader::CollectInputsParams::Input::Toggle])).returns(T.nilable(T::Array[::Stripe::Terminal::Reader::CollectInputsParams::Input::Toggle]))
           }
          def toggles=(_toggles); end
          # The type of input to collect
          sig { returns(String) }
          def type; end
          sig { params(_type: String).returns(String) }
          def type=(_type); end
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
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # List of inputs to be collected using the Reader
        sig { returns(T::Array[::Stripe::Terminal::Reader::CollectInputsParams::Input]) }
        def inputs; end
        sig {
          params(_inputs: T::Array[::Stripe::Terminal::Reader::CollectInputsParams::Input]).returns(T::Array[::Stripe::Terminal::Reader::CollectInputsParams::Input])
         }
        def inputs=(_inputs); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
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
            def amount_eligible; end
            sig { params(_amount_eligible: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def amount_eligible=(_amount_eligible); end
            sig { params(amount_eligible: T.nilable(Integer)).void }
            def initialize(amount_eligible: nil); end
          end
          # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow.
          sig { returns(T.nilable(String)) }
          def allow_redisplay; end
          sig { params(_allow_redisplay: T.nilable(String)).returns(T.nilable(String)) }
          def allow_redisplay=(_allow_redisplay); end
          # Enables cancel button on transaction screens.
          sig { returns(T.nilable(T::Boolean)) }
          def enable_customer_cancellation; end
          sig {
            params(_enable_customer_cancellation: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
           }
          def enable_customer_cancellation=(_enable_customer_cancellation); end
          # Override showing a tipping selection screen on this transaction.
          sig { returns(T.nilable(T::Boolean)) }
          def skip_tipping; end
          sig { params(_skip_tipping: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def skip_tipping=(_skip_tipping); end
          # Tipping configuration for this transaction.
          sig {
            returns(T.nilable(::Stripe::Terminal::Reader::CollectPaymentMethodParams::CollectConfig::Tipping))
           }
          def tipping; end
          sig {
            params(_tipping: T.nilable(::Stripe::Terminal::Reader::CollectPaymentMethodParams::CollectConfig::Tipping)).returns(T.nilable(::Stripe::Terminal::Reader::CollectPaymentMethodParams::CollectConfig::Tipping))
           }
          def tipping=(_tipping); end
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
        def collect_config; end
        sig {
          params(_collect_config: T.nilable(::Stripe::Terminal::Reader::CollectPaymentMethodParams::CollectConfig)).returns(T.nilable(::Stripe::Terminal::Reader::CollectPaymentMethodParams::CollectConfig))
         }
        def collect_config=(_collect_config); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # PaymentIntent ID.
        sig { returns(String) }
        def payment_intent; end
        sig { params(_payment_intent: String).returns(String) }
        def payment_intent=(_payment_intent); end
        sig {
          params(collect_config: T.nilable(::Stripe::Terminal::Reader::CollectPaymentMethodParams::CollectConfig), expand: T.nilable(T::Array[String]), payment_intent: String).void
         }
        def initialize(collect_config: nil, expand: nil, payment_intent: nil); end
      end
      class ConfirmPaymentIntentParams < Stripe::RequestParams
        class ConfirmConfig < Stripe::RequestParams
          # The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method's app or site. If you'd prefer to redirect to a mobile application, you can alternatively supply an application URI scheme.
          sig { returns(T.nilable(String)) }
          def return_url; end
          sig { params(_return_url: T.nilable(String)).returns(T.nilable(String)) }
          def return_url=(_return_url); end
          sig { params(return_url: T.nilable(String)).void }
          def initialize(return_url: nil); end
        end
        # Configuration overrides.
        sig {
          returns(T.nilable(::Stripe::Terminal::Reader::ConfirmPaymentIntentParams::ConfirmConfig))
         }
        def confirm_config; end
        sig {
          params(_confirm_config: T.nilable(::Stripe::Terminal::Reader::ConfirmPaymentIntentParams::ConfirmConfig)).returns(T.nilable(::Stripe::Terminal::Reader::ConfirmPaymentIntentParams::ConfirmConfig))
         }
        def confirm_config=(_confirm_config); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # PaymentIntent ID.
        sig { returns(String) }
        def payment_intent; end
        sig { params(_payment_intent: String).returns(String) }
        def payment_intent=(_payment_intent); end
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
            def amount_eligible; end
            sig { params(_amount_eligible: T.nilable(Integer)).returns(T.nilable(Integer)) }
            def amount_eligible=(_amount_eligible); end
            sig { params(amount_eligible: T.nilable(Integer)).void }
            def initialize(amount_eligible: nil); end
          end
          # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow.
          sig { returns(T.nilable(String)) }
          def allow_redisplay; end
          sig { params(_allow_redisplay: T.nilable(String)).returns(T.nilable(String)) }
          def allow_redisplay=(_allow_redisplay); end
          # Enables cancel button on transaction screens.
          sig { returns(T.nilable(T::Boolean)) }
          def enable_customer_cancellation; end
          sig {
            params(_enable_customer_cancellation: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
           }
          def enable_customer_cancellation=(_enable_customer_cancellation); end
          # The URL to redirect your customer back to after they authenticate or cancel their payment on the payment method's app or site. If you'd prefer to redirect to a mobile application, you can alternatively supply an application URI scheme.
          sig { returns(T.nilable(String)) }
          def return_url; end
          sig { params(_return_url: T.nilable(String)).returns(T.nilable(String)) }
          def return_url=(_return_url); end
          # Override showing a tipping selection screen on this transaction.
          sig { returns(T.nilable(T::Boolean)) }
          def skip_tipping; end
          sig { params(_skip_tipping: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
          def skip_tipping=(_skip_tipping); end
          # Tipping configuration for this transaction.
          sig {
            returns(T.nilable(::Stripe::Terminal::Reader::ProcessPaymentIntentParams::ProcessConfig::Tipping))
           }
          def tipping; end
          sig {
            params(_tipping: T.nilable(::Stripe::Terminal::Reader::ProcessPaymentIntentParams::ProcessConfig::Tipping)).returns(T.nilable(::Stripe::Terminal::Reader::ProcessPaymentIntentParams::ProcessConfig::Tipping))
           }
          def tipping=(_tipping); end
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
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # PaymentIntent ID
        sig { returns(String) }
        def payment_intent; end
        sig { params(_payment_intent: String).returns(String) }
        def payment_intent=(_payment_intent); end
        # Configuration overrides
        sig {
          returns(T.nilable(::Stripe::Terminal::Reader::ProcessPaymentIntentParams::ProcessConfig))
         }
        def process_config; end
        sig {
          params(_process_config: T.nilable(::Stripe::Terminal::Reader::ProcessPaymentIntentParams::ProcessConfig)).returns(T.nilable(::Stripe::Terminal::Reader::ProcessPaymentIntentParams::ProcessConfig))
         }
        def process_config=(_process_config); end
        sig {
          params(expand: T.nilable(T::Array[String]), payment_intent: String, process_config: T.nilable(::Stripe::Terminal::Reader::ProcessPaymentIntentParams::ProcessConfig)).void
         }
        def initialize(expand: nil, payment_intent: nil, process_config: nil); end
      end
      class ProcessSetupIntentParams < Stripe::RequestParams
        class ProcessConfig < Stripe::RequestParams
          # Enables cancel button on transaction screens.
          sig { returns(T.nilable(T::Boolean)) }
          def enable_customer_cancellation; end
          sig {
            params(_enable_customer_cancellation: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
           }
          def enable_customer_cancellation=(_enable_customer_cancellation); end
          sig { params(enable_customer_cancellation: T.nilable(T::Boolean)).void }
          def initialize(enable_customer_cancellation: nil); end
        end
        # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow.
        sig { returns(String) }
        def allow_redisplay; end
        sig { params(_allow_redisplay: String).returns(String) }
        def allow_redisplay=(_allow_redisplay); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Configuration overrides
        sig {
          returns(T.nilable(::Stripe::Terminal::Reader::ProcessSetupIntentParams::ProcessConfig))
         }
        def process_config; end
        sig {
          params(_process_config: T.nilable(::Stripe::Terminal::Reader::ProcessSetupIntentParams::ProcessConfig)).returns(T.nilable(::Stripe::Terminal::Reader::ProcessSetupIntentParams::ProcessConfig))
         }
        def process_config=(_process_config); end
        # SetupIntent ID
        sig { returns(String) }
        def setup_intent; end
        sig { params(_setup_intent: String).returns(String) }
        def setup_intent=(_setup_intent); end
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
          def enable_customer_cancellation; end
          sig {
            params(_enable_customer_cancellation: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
           }
          def enable_customer_cancellation=(_enable_customer_cancellation); end
          sig { params(enable_customer_cancellation: T.nilable(T::Boolean)).void }
          def initialize(enable_customer_cancellation: nil); end
        end
        # A positive integer in __cents__ representing how much of this charge to refund.
        sig { returns(T.nilable(Integer)) }
        def amount; end
        sig { params(_amount: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def amount=(_amount); end
        # ID of the Charge to refund.
        sig { returns(T.nilable(String)) }
        def charge; end
        sig { params(_charge: T.nilable(String)).returns(T.nilable(String)) }
        def charge=(_charge); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        sig { returns(T.nilable(T::Hash[String, String])) }
        def metadata; end
        sig {
          params(_metadata: T.nilable(T::Hash[String, String])).returns(T.nilable(T::Hash[String, String]))
         }
        def metadata=(_metadata); end
        # ID of the PaymentIntent to refund.
        sig { returns(T.nilable(String)) }
        def payment_intent; end
        sig { params(_payment_intent: T.nilable(String)).returns(T.nilable(String)) }
        def payment_intent=(_payment_intent); end
        # Boolean indicating whether the application fee should be refunded when refunding this charge. If a full charge refund is given, the full application fee will be refunded. Otherwise, the application fee will be refunded in an amount proportional to the amount of the charge refunded. An application fee can be refunded only by the application that created the charge.
        sig { returns(T.nilable(T::Boolean)) }
        def refund_application_fee; end
        sig {
          params(_refund_application_fee: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean))
         }
        def refund_application_fee=(_refund_application_fee); end
        # Configuration overrides
        sig {
          returns(T.nilable(::Stripe::Terminal::Reader::RefundPaymentParams::RefundPaymentConfig))
         }
        def refund_payment_config; end
        sig {
          params(_refund_payment_config: T.nilable(::Stripe::Terminal::Reader::RefundPaymentParams::RefundPaymentConfig)).returns(T.nilable(::Stripe::Terminal::Reader::RefundPaymentParams::RefundPaymentConfig))
         }
        def refund_payment_config=(_refund_payment_config); end
        # Boolean indicating whether the transfer should be reversed when refunding this charge. The transfer will be reversed proportionally to the amount being refunded (either the entire or partial amount). A transfer can be reversed only by the application that created the charge.
        sig { returns(T.nilable(T::Boolean)) }
        def reverse_transfer; end
        sig { params(_reverse_transfer: T.nilable(T::Boolean)).returns(T.nilable(T::Boolean)) }
        def reverse_transfer=(_reverse_transfer); end
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
            def amount; end
            sig { params(_amount: Integer).returns(Integer) }
            def amount=(_amount); end
            # The description or name of the item.
            sig { returns(String) }
            def description; end
            sig { params(_description: String).returns(String) }
            def description=(_description); end
            # The quantity of the line item being purchased.
            sig { returns(Integer) }
            def quantity; end
            sig { params(_quantity: Integer).returns(Integer) }
            def quantity=(_quantity); end
            sig { params(amount: Integer, description: String, quantity: Integer).void }
            def initialize(amount: nil, description: nil, quantity: nil); end
          end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          sig { returns(String) }
          def currency; end
          sig { params(_currency: String).returns(String) }
          def currency=(_currency); end
          # Array of line items that were purchased.
          sig {
            returns(T::Array[::Stripe::Terminal::Reader::SetReaderDisplayParams::Cart::LineItem])
           }
          def line_items; end
          sig {
            params(_line_items: T::Array[::Stripe::Terminal::Reader::SetReaderDisplayParams::Cart::LineItem]).returns(T::Array[::Stripe::Terminal::Reader::SetReaderDisplayParams::Cart::LineItem])
           }
          def line_items=(_line_items); end
          # The amount of tax in cents.
          sig { returns(T.nilable(Integer)) }
          def tax; end
          sig { params(_tax: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def tax=(_tax); end
          # Total balance of cart due in cents.
          sig { returns(Integer) }
          def total; end
          sig { params(_total: Integer).returns(Integer) }
          def total=(_total); end
          sig {
            params(currency: String, line_items: T::Array[::Stripe::Terminal::Reader::SetReaderDisplayParams::Cart::LineItem], tax: T.nilable(Integer), total: Integer).void
           }
          def initialize(currency: nil, line_items: nil, tax: nil, total: nil); end
        end
        # Cart
        sig { returns(T.nilable(::Stripe::Terminal::Reader::SetReaderDisplayParams::Cart)) }
        def cart; end
        sig {
          params(_cart: T.nilable(::Stripe::Terminal::Reader::SetReaderDisplayParams::Cart)).returns(T.nilable(::Stripe::Terminal::Reader::SetReaderDisplayParams::Cart))
         }
        def cart=(_cart); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Type
        sig { returns(String) }
        def type; end
        sig { params(_type: String).returns(String) }
        def type=(_type); end
        sig {
          params(cart: T.nilable(::Stripe::Terminal::Reader::SetReaderDisplayParams::Cart), expand: T.nilable(T::Array[String]), type: String).void
         }
        def initialize(cart: nil, expand: nil, type: nil); end
      end
      class PresentPaymentMethodParams < Stripe::RequestParams
        class Card < Stripe::RequestParams
          # Card security code.
          sig { returns(T.nilable(String)) }
          def cvc; end
          sig { params(_cvc: T.nilable(String)).returns(T.nilable(String)) }
          def cvc=(_cvc); end
          # Two-digit number representing the card's expiration month.
          sig { returns(Integer) }
          def exp_month; end
          sig { params(_exp_month: Integer).returns(Integer) }
          def exp_month=(_exp_month); end
          # Two- or four-digit number representing the card's expiration year.
          sig { returns(Integer) }
          def exp_year; end
          sig { params(_exp_year: Integer).returns(Integer) }
          def exp_year=(_exp_year); end
          # The card number, as a string without any separators.
          sig { returns(String) }
          def number; end
          sig { params(_number: String).returns(String) }
          def number=(_number); end
          sig {
            params(cvc: T.nilable(String), exp_month: Integer, exp_year: Integer, number: String).void
           }
          def initialize(cvc: nil, exp_month: nil, exp_year: nil, number: nil); end
        end
        class CardPresent < Stripe::RequestParams
          # The card number, as a string without any separators.
          sig { returns(T.nilable(String)) }
          def number; end
          sig { params(_number: T.nilable(String)).returns(T.nilable(String)) }
          def number=(_number); end
          sig { params(number: T.nilable(String)).void }
          def initialize(number: nil); end
        end
        class InteracPresent < Stripe::RequestParams
          # Card Number
          sig { returns(T.nilable(String)) }
          def number; end
          sig { params(_number: T.nilable(String)).returns(T.nilable(String)) }
          def number=(_number); end
          sig { params(number: T.nilable(String)).void }
          def initialize(number: nil); end
        end
        # Simulated on-reader tip amount.
        sig { returns(T.nilable(Integer)) }
        def amount_tip; end
        sig { params(_amount_tip: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def amount_tip=(_amount_tip); end
        # Simulated data for the card payment method.
        sig { returns(T.nilable(::Stripe::Terminal::Reader::PresentPaymentMethodParams::Card)) }
        def card; end
        sig {
          params(_card: T.nilable(::Stripe::Terminal::Reader::PresentPaymentMethodParams::Card)).returns(T.nilable(::Stripe::Terminal::Reader::PresentPaymentMethodParams::Card))
         }
        def card=(_card); end
        # Simulated data for the card_present payment method.
        sig {
          returns(T.nilable(::Stripe::Terminal::Reader::PresentPaymentMethodParams::CardPresent))
         }
        def card_present; end
        sig {
          params(_card_present: T.nilable(::Stripe::Terminal::Reader::PresentPaymentMethodParams::CardPresent)).returns(T.nilable(::Stripe::Terminal::Reader::PresentPaymentMethodParams::CardPresent))
         }
        def card_present=(_card_present); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # Simulated data for the interac_present payment method.
        sig {
          returns(T.nilable(::Stripe::Terminal::Reader::PresentPaymentMethodParams::InteracPresent))
         }
        def interac_present; end
        sig {
          params(_interac_present: T.nilable(::Stripe::Terminal::Reader::PresentPaymentMethodParams::InteracPresent)).returns(T.nilable(::Stripe::Terminal::Reader::PresentPaymentMethodParams::InteracPresent))
         }
        def interac_present=(_interac_present); end
        # Simulated payment type.
        sig { returns(T.nilable(String)) }
        def type; end
        sig { params(_type: T.nilable(String)).returns(T.nilable(String)) }
        def type=(_type); end
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
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # This parameter defines the skip behavior for input collection.
        sig { returns(T.nilable(String)) }
        def skip_non_required_inputs; end
        sig { params(_skip_non_required_inputs: T.nilable(String)).returns(T.nilable(String)) }
        def skip_non_required_inputs=(_skip_non_required_inputs); end
        sig {
          params(expand: T.nilable(T::Array[String]), skip_non_required_inputs: T.nilable(String)).void
         }
        def initialize(expand: nil, skip_non_required_inputs: nil); end
      end
      class TimeoutInputCollectionParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
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