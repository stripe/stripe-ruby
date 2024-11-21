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
                # The button style for the choice
                sig { returns(T.nilable(String)) }
                attr_reader :style
                # A value to be selected
                sig { returns(String) }
                attr_reader :value
              end
              # List of possible choices to be selected
              sig { returns(T::Array[Choice]) }
              attr_reader :choices
              # The value of the selected choice
              sig { returns(T.nilable(String)) }
              attr_reader :value
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
            # Enable customer initiated cancellation when processing this payment.
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
          # Attribute for field stripe_account
          sig { returns(String) }
          attr_reader :stripe_account
        end
        class ConfirmPaymentIntent < Stripe::StripeObject
          # Most recent PaymentIntent processed by the reader.
          sig { returns(T.any(String, Stripe::PaymentIntent)) }
          attr_reader :payment_intent
          # Attribute for field stripe_account
          sig { returns(String) }
          attr_reader :stripe_account
        end
        class ProcessPaymentIntent < Stripe::StripeObject
          class ProcessConfig < Stripe::StripeObject
            class Tipping < Stripe::StripeObject
              # Amount used to calculate tip suggestions on tipping selection screen for this transaction. Must be a positive integer in the smallest currency unit (e.g., 100 cents to represent $1.00 or 100 to represent ¥100, a zero-decimal currency).
              sig { returns(Integer) }
              attr_reader :amount_eligible
            end
            # Enable customer initiated cancellation when processing this payment.
            sig { returns(T::Boolean) }
            attr_reader :enable_customer_cancellation
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
          # Attribute for field stripe_account
          sig { returns(String) }
          attr_reader :stripe_account
        end
        class ProcessSetupIntent < Stripe::StripeObject
          class ProcessConfig < Stripe::StripeObject
            # Enable customer initiated cancellation when processing this SetupIntent.
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
            # Enable customer initiated cancellation when refunding this payment.
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
          # Attribute for field stripe_account
          sig { returns(String) }
          attr_reader :stripe_account
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

      # Type of reader, one of `bbpos_wisepad3`, `stripe_m2`, `stripe_s700`, `bbpos_chipper2x`, `bbpos_wisepos_e`, `verifone_P400`, `simulated_wisepos_e`, or `mobile_phone_reader`.
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
    end
  end
end