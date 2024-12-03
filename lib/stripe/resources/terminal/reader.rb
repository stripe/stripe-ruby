# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Terminal
    # A Reader represents a physical device for accepting payment details.
    #
    # Related guide: [Connecting to a reader](https://stripe.com/docs/terminal/payments/connect-reader)
    class Reader < APIResource
      extend Stripe::APIOperations::Create
      include Stripe::APIOperations::Delete
      extend Stripe::APIOperations::List
      include Stripe::APIOperations::Save

      OBJECT_NAME = "terminal.reader"
      def self.object_name
        "terminal.reader"
      end

      class Action < Stripe::StripeObject
        class CollectInputs < Stripe::StripeObject
          class Input < Stripe::StripeObject
            class CustomText < Stripe::StripeObject
              # Customize the default description for this input
              attr_reader :description
              # Customize the default label for this input's skip button
              attr_reader :skip_button
              # Customize the default label for this input's submit button
              attr_reader :submit_button
              # Customize the default title for this input
              attr_reader :title
            end

            class Email < Stripe::StripeObject
              # The collected email address
              attr_reader :value
            end

            class Numeric < Stripe::StripeObject
              # The collected number
              attr_reader :value
            end

            class Phone < Stripe::StripeObject
              # The collected phone number
              attr_reader :value
            end

            class Selection < Stripe::StripeObject
              class Choice < Stripe::StripeObject
                # The button style for the choice
                attr_reader :style
                # A value to be selected
                attr_reader :value
              end
              # List of possible choices to be selected
              attr_reader :choices
              # The value of the selected choice
              attr_reader :value
            end

            class Signature < Stripe::StripeObject
              # The File ID of a collected signature image
              attr_reader :value
            end

            class Text < Stripe::StripeObject
              # The collected text value
              attr_reader :value
            end

            class Toggle < Stripe::StripeObject
              # The toggle's default value
              attr_reader :default_value
              # The toggle's description text
              attr_reader :description
              # The toggle's title text
              attr_reader :title
              # The toggle's collected value
              attr_reader :value
            end
            # Default text of input being collected.
            attr_reader :custom_text
            # Information about a email being collected using a reader
            attr_reader :email
            # Information about a number being collected using a reader
            attr_reader :numeric
            # Information about a phone number being collected using a reader
            attr_reader :phone
            # Indicate that this input is required, disabling the skip button.
            attr_reader :required
            # Information about a selection being collected using a reader
            attr_reader :selection
            # Information about a signature being collected using a reader
            attr_reader :signature
            # Indicate that this input was skipped by the user.
            attr_reader :skipped
            # Information about text being collected using a reader
            attr_reader :text
            # List of toggles being collected. Values are present if collection is complete.
            attr_reader :toggles
            # Type of input being collected.
            attr_reader :type
          end
          # List of inputs to be collected.
          attr_reader :inputs
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          attr_reader :metadata
        end

        class CollectPaymentMethod < Stripe::StripeObject
          class CollectConfig < Stripe::StripeObject
            class Tipping < Stripe::StripeObject
              # Amount used to calculate tip suggestions on tipping selection screen for this transaction. Must be a positive integer in the smallest currency unit (e.g., 100 cents to represent $1.00 or 100 to represent ¥100, a zero-decimal currency).
              attr_reader :amount_eligible
            end
            # Enable customer initiated cancellation when processing this payment.
            attr_reader :enable_customer_cancellation
            # Override showing a tipping selection screen on this transaction.
            attr_reader :skip_tipping
            # Represents a per-transaction tipping configuration
            attr_reader :tipping
          end
          # Represents a per-transaction override of a reader configuration
          attr_reader :collect_config
          # Most recent PaymentIntent processed by the reader.
          attr_reader :payment_intent
          # PaymentMethod objects represent your customer's payment instruments.
          # You can use them with [PaymentIntents](https://stripe.com/docs/payments/payment-intents) to collect payments or save them to
          # Customer objects to store instrument details for future payments.
          #
          # Related guides: [Payment Methods](https://stripe.com/docs/payments/payment-methods) and [More Payment Scenarios](https://stripe.com/docs/payments/more-payment-scenarios).
          attr_reader :payment_method
          # Attribute for field stripe_account
          attr_reader :stripe_account
        end

        class ConfirmPaymentIntent < Stripe::StripeObject
          # Most recent PaymentIntent processed by the reader.
          attr_reader :payment_intent
          # Attribute for field stripe_account
          attr_reader :stripe_account
        end

        class ProcessPaymentIntent < Stripe::StripeObject
          class ProcessConfig < Stripe::StripeObject
            class Tipping < Stripe::StripeObject
              # Amount used to calculate tip suggestions on tipping selection screen for this transaction. Must be a positive integer in the smallest currency unit (e.g., 100 cents to represent $1.00 or 100 to represent ¥100, a zero-decimal currency).
              attr_reader :amount_eligible
            end
            # Enable customer initiated cancellation when processing this payment.
            attr_reader :enable_customer_cancellation
            # Override showing a tipping selection screen on this transaction.
            attr_reader :skip_tipping
            # Represents a per-transaction tipping configuration
            attr_reader :tipping
          end
          # Most recent PaymentIntent processed by the reader.
          attr_reader :payment_intent
          # Represents a per-transaction override of a reader configuration
          attr_reader :process_config
          # Attribute for field stripe_account
          attr_reader :stripe_account
        end

        class ProcessSetupIntent < Stripe::StripeObject
          class ProcessConfig < Stripe::StripeObject
            # Enable customer initiated cancellation when processing this SetupIntent.
            attr_reader :enable_customer_cancellation
          end
          # ID of a card PaymentMethod generated from the card_present PaymentMethod that may be attached to a Customer for future transactions. Only present if it was possible to generate a card PaymentMethod.
          attr_reader :generated_card
          # Represents a per-setup override of a reader configuration
          attr_reader :process_config
          # Most recent SetupIntent processed by the reader.
          attr_reader :setup_intent
        end

        class RefundPayment < Stripe::StripeObject
          class RefundPaymentConfig < Stripe::StripeObject
            # Enable customer initiated cancellation when refunding this payment.
            attr_reader :enable_customer_cancellation
          end
          # The amount being refunded.
          attr_reader :amount
          # Charge that is being refunded.
          attr_reader :charge
          # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
          attr_reader :metadata
          # Payment intent that is being refunded.
          attr_reader :payment_intent
          # The reason for the refund.
          attr_reader :reason
          # Unique identifier for the refund object.
          attr_reader :refund
          # Boolean indicating whether the application fee should be refunded when refunding this charge. If a full charge refund is given, the full application fee will be refunded. Otherwise, the application fee will be refunded in an amount proportional to the amount of the charge refunded. An application fee can be refunded only by the application that created the charge.
          attr_reader :refund_application_fee
          # Represents a per-transaction override of a reader configuration
          attr_reader :refund_payment_config
          # Boolean indicating whether the transfer should be reversed when refunding this charge. The transfer will be reversed proportionally to the amount being refunded (either the entire or partial amount). A transfer can be reversed only by the application that created the charge.
          attr_reader :reverse_transfer
          # Attribute for field stripe_account
          attr_reader :stripe_account
        end

        class SetReaderDisplay < Stripe::StripeObject
          class Cart < Stripe::StripeObject
            class LineItem < Stripe::StripeObject
              # The amount of the line item. A positive integer in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
              attr_reader :amount
              # Description of the line item.
              attr_reader :description
              # The quantity of the line item.
              attr_reader :quantity
            end
            # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            attr_reader :currency
            # List of line items in the cart.
            attr_reader :line_items
            # Tax amount for the entire cart. A positive integer in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
            attr_reader :tax
            # Total amount for the entire cart, including tax. A positive integer in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
            attr_reader :total
          end
          # Cart object to be displayed by the reader.
          attr_reader :cart
          # Type of information to be displayed by the reader.
          attr_reader :type
        end
        # Represents a reader action to collect customer inputs
        attr_reader :collect_inputs
        # Represents a reader action to collect a payment method
        attr_reader :collect_payment_method
        # Represents a reader action to confirm a payment
        attr_reader :confirm_payment_intent
        # Failure code, only set if status is `failed`.
        attr_reader :failure_code
        # Detailed failure message, only set if status is `failed`.
        attr_reader :failure_message
        # Represents a reader action to process a payment intent
        attr_reader :process_payment_intent
        # Represents a reader action to process a setup intent
        attr_reader :process_setup_intent
        # Represents a reader action to refund a payment
        attr_reader :refund_payment
        # Represents a reader action to set the reader display
        attr_reader :set_reader_display
        # Status of the action performed by the reader.
        attr_reader :status
        # Type of action performed by the reader.
        attr_reader :type
      end
      # The most recent action performed by the reader.
      attr_reader :action

      # The current software version of the reader.
      attr_reader :device_sw_version

      # Type of reader, one of `bbpos_wisepad3`, `stripe_m2`, `stripe_s700`, `bbpos_chipper2x`, `bbpos_wisepos_e`, `verifone_P400`, `simulated_wisepos_e`, or `mobile_phone_reader`.
      attr_reader :device_type

      # Unique identifier for the object.
      attr_reader :id

      # The local IP address of the reader.
      attr_reader :ip_address

      # Custom label given to the reader for easier identification.
      attr_reader :label

      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode

      # The location identifier of the reader.
      attr_reader :location

      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata

      # String representing the object's type. Objects of the same type share the same value.
      attr_reader :object

      # Serial number of the reader.
      attr_reader :serial_number

      # The networking status of the reader. We do not recommend using this field in flows that may block taking payments.
      attr_reader :status

      # Always true for a deleted object
      attr_reader :deleted

      # Cancels the current reader action.
      def cancel_action(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/cancel_action", { reader: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Cancels the current reader action.
      def self.cancel_action(reader, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/cancel_action", { reader: CGI.escape(reader) }),
          params: params,
          opts: opts
        )
      end

      # Initiates an input collection flow on a Reader.
      def collect_inputs(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/collect_inputs", { reader: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Initiates an input collection flow on a Reader.
      def self.collect_inputs(reader, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/collect_inputs", { reader: CGI.escape(reader) }),
          params: params,
          opts: opts
        )
      end

      # Initiates a payment flow on a Reader and updates the PaymentIntent with card details before manual confirmation.
      def collect_payment_method(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/collect_payment_method", { reader: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Initiates a payment flow on a Reader and updates the PaymentIntent with card details before manual confirmation.
      def self.collect_payment_method(reader, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/collect_payment_method", { reader: CGI.escape(reader) }),
          params: params,
          opts: opts
        )
      end

      # Finalizes a payment on a Reader.
      def confirm_payment_intent(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/confirm_payment_intent", { reader: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Finalizes a payment on a Reader.
      def self.confirm_payment_intent(reader, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/confirm_payment_intent", { reader: CGI.escape(reader) }),
          params: params,
          opts: opts
        )
      end

      # Creates a new Reader object.
      def self.create(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: "/v1/terminal/readers",
          params: params,
          opts: opts
        )
      end

      # Deletes a Reader object.
      def self.delete(id, params = {}, opts = {})
        request_stripe_object(
          method: :delete,
          path: format("/v1/terminal/readers/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      # Deletes a Reader object.
      def delete(params = {}, opts = {})
        request_stripe_object(
          method: :delete,
          path: format("/v1/terminal/readers/%<reader>s", { reader: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Returns a list of Reader objects.
      def self.list(filters = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/terminal/readers",
          params: filters,
          opts: opts
        )
      end

      # Initiates a payment flow on a Reader.
      def process_payment_intent(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/process_payment_intent", { reader: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Initiates a payment flow on a Reader.
      def self.process_payment_intent(reader, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/process_payment_intent", { reader: CGI.escape(reader) }),
          params: params,
          opts: opts
        )
      end

      # Initiates a setup intent flow on a Reader.
      def process_setup_intent(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/process_setup_intent", { reader: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Initiates a setup intent flow on a Reader.
      def self.process_setup_intent(reader, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/process_setup_intent", { reader: CGI.escape(reader) }),
          params: params,
          opts: opts
        )
      end

      # Initiates a refund on a Reader
      def refund_payment(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/refund_payment", { reader: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Initiates a refund on a Reader
      def self.refund_payment(reader, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/refund_payment", { reader: CGI.escape(reader) }),
          params: params,
          opts: opts
        )
      end

      # Sets reader display to show cart details.
      def set_reader_display(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/set_reader_display", { reader: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Sets reader display to show cart details.
      def self.set_reader_display(reader, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/set_reader_display", { reader: CGI.escape(reader) }),
          params: params,
          opts: opts
        )
      end

      # Updates a Reader object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
      def self.update(id, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/terminal/readers/%<id>s", { id: CGI.escape(id) }),
          params: params,
          opts: opts
        )
      end

      def test_helpers
        TestHelpers.new(self)
      end

      class TestHelpers < APIResourceTestHelpers
        RESOURCE_CLASS = Reader
        def self.resource_class
          "Reader"
        end

        # Presents a payment method on a simulated reader. Can be used to simulate accepting a payment, saving a card or refunding a transaction.
        def self.present_payment_method(reader, params = {}, opts = {})
          request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/terminal/readers/%<reader>s/present_payment_method", { reader: CGI.escape(reader) }),
            params: params,
            opts: opts
          )
        end

        # Presents a payment method on a simulated reader. Can be used to simulate accepting a payment, saving a card or refunding a transaction.
        def present_payment_method(params = {}, opts = {})
          @resource.request_stripe_object(
            method: :post,
            path: format("/v1/test_helpers/terminal/readers/%<reader>s/present_payment_method", { reader: CGI.escape(@resource["id"]) }),
            params: params,
            opts: opts
          )
        end
      end
    end
  end
end
