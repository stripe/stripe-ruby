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

      class DeleteParams < Stripe::RequestParams
      end

      class UpdateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # The new label of the reader.
        attr_accessor :label
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata

        def initialize(expand: nil, label: nil, metadata: nil)
          @expand = expand
          @label = label
          @metadata = metadata
        end
      end

      class ListParams < Stripe::RequestParams
        # Filters readers by device type
        attr_accessor :device_type
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # A location ID to filter the response list to only readers at the specific location
        attr_accessor :location
        # Filters readers by serial number
        attr_accessor :serial_number
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after
        # A status filter to filter readers to only offline or online readers
        attr_accessor :status

        def initialize(
          device_type: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          location: nil,
          serial_number: nil,
          starting_after: nil,
          status: nil
        )
          @device_type = device_type
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @location = location
          @serial_number = serial_number
          @starting_after = starting_after
          @status = status
        end
      end

      class CreateParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Custom label given to the reader for easier identification. If no label is specified, the registration code will be used.
        attr_accessor :label
        # The location to assign the reader to.
        attr_accessor :location
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # A code generated by the reader used for registering to an account.
        attr_accessor :registration_code

        def initialize(
          expand: nil,
          label: nil,
          location: nil,
          metadata: nil,
          registration_code: nil
        )
          @expand = expand
          @label = label
          @location = location
          @metadata = metadata
          @registration_code = registration_code
        end
      end

      class CancelActionParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      class ProcessPaymentIntentParams < Stripe::RequestParams
        class ProcessConfig < Stripe::RequestParams
          class Tipping < Stripe::RequestParams
            # Amount used to calculate tip suggestions on tipping selection screen for this transaction. Must be a positive integer in the smallest currency unit (e.g., 100 cents to represent $1.00 or 100 to represent ¥100, a zero-decimal currency).
            attr_accessor :amount_eligible

            def initialize(amount_eligible: nil)
              @amount_eligible = amount_eligible
            end
          end
          # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow.
          attr_accessor :allow_redisplay
          # Enables cancel button on transaction screens.
          attr_accessor :enable_customer_cancellation
          # Override showing a tipping selection screen on this transaction.
          attr_accessor :skip_tipping
          # Tipping configuration for this transaction.
          attr_accessor :tipping

          def initialize(
            allow_redisplay: nil,
            enable_customer_cancellation: nil,
            skip_tipping: nil,
            tipping: nil
          )
            @allow_redisplay = allow_redisplay
            @enable_customer_cancellation = enable_customer_cancellation
            @skip_tipping = skip_tipping
            @tipping = tipping
          end
        end
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # PaymentIntent ID
        attr_accessor :payment_intent
        # Configuration overrides
        attr_accessor :process_config

        def initialize(expand: nil, payment_intent: nil, process_config: nil)
          @expand = expand
          @payment_intent = payment_intent
          @process_config = process_config
        end
      end

      class ProcessSetupIntentParams < Stripe::RequestParams
        class ProcessConfig < Stripe::RequestParams
          # Enables cancel button on transaction screens.
          attr_accessor :enable_customer_cancellation

          def initialize(enable_customer_cancellation: nil)
            @enable_customer_cancellation = enable_customer_cancellation
          end
        end
        # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow.
        attr_accessor :allow_redisplay
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Configuration overrides
        attr_accessor :process_config
        # SetupIntent ID
        attr_accessor :setup_intent

        def initialize(allow_redisplay: nil, expand: nil, process_config: nil, setup_intent: nil)
          @allow_redisplay = allow_redisplay
          @expand = expand
          @process_config = process_config
          @setup_intent = setup_intent
        end
      end

      class RefundPaymentParams < Stripe::RequestParams
        class RefundPaymentConfig < Stripe::RequestParams
          # Enables cancel button on transaction screens.
          attr_accessor :enable_customer_cancellation

          def initialize(enable_customer_cancellation: nil)
            @enable_customer_cancellation = enable_customer_cancellation
          end
        end
        # A positive integer in __cents__ representing how much of this charge to refund.
        attr_accessor :amount
        # ID of the Charge to refund.
        attr_accessor :charge
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
        attr_accessor :metadata
        # ID of the PaymentIntent to refund.
        attr_accessor :payment_intent
        # Boolean indicating whether the application fee should be refunded when refunding this charge. If a full charge refund is given, the full application fee will be refunded. Otherwise, the application fee will be refunded in an amount proportional to the amount of the charge refunded. An application fee can be refunded only by the application that created the charge.
        attr_accessor :refund_application_fee
        # Configuration overrides
        attr_accessor :refund_payment_config
        # Boolean indicating whether the transfer should be reversed when refunding this charge. The transfer will be reversed proportionally to the amount being refunded (either the entire or partial amount). A transfer can be reversed only by the application that created the charge.
        attr_accessor :reverse_transfer

        def initialize(
          amount: nil,
          charge: nil,
          expand: nil,
          metadata: nil,
          payment_intent: nil,
          refund_application_fee: nil,
          refund_payment_config: nil,
          reverse_transfer: nil
        )
          @amount = amount
          @charge = charge
          @expand = expand
          @metadata = metadata
          @payment_intent = payment_intent
          @refund_application_fee = refund_application_fee
          @refund_payment_config = refund_payment_config
          @reverse_transfer = reverse_transfer
        end
      end

      class SetReaderDisplayParams < Stripe::RequestParams
        class Cart < Stripe::RequestParams
          class LineItem < Stripe::RequestParams
            # The price of the item in cents.
            attr_accessor :amount
            # The description or name of the item.
            attr_accessor :description
            # The quantity of the line item being purchased.
            attr_accessor :quantity

            def initialize(amount: nil, description: nil, quantity: nil)
              @amount = amount
              @description = description
              @quantity = quantity
            end
          end
          # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
          attr_accessor :currency
          # Array of line items that were purchased.
          attr_accessor :line_items
          # The amount of tax in cents.
          attr_accessor :tax
          # Total balance of cart due in cents.
          attr_accessor :total

          def initialize(currency: nil, line_items: nil, tax: nil, total: nil)
            @currency = currency
            @line_items = line_items
            @tax = tax
            @total = total
          end
        end
        # Cart
        attr_accessor :cart
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Type
        attr_accessor :type

        def initialize(cart: nil, expand: nil, type: nil)
          @cart = cart
          @expand = expand
          @type = type
        end
      end

      class PresentPaymentMethodParams < Stripe::RequestParams
        class CardPresent < Stripe::RequestParams
          # The card number, as a string without any separators.
          attr_accessor :number

          def initialize(number: nil)
            @number = number
          end
        end

        class InteracPresent < Stripe::RequestParams
          # Card Number
          attr_accessor :number

          def initialize(number: nil)
            @number = number
          end
        end
        # Simulated on-reader tip amount.
        attr_accessor :amount_tip
        # Simulated data for the card_present payment method.
        attr_accessor :card_present
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # Simulated data for the interac_present payment method.
        attr_accessor :interac_present
        # Simulated payment type.
        attr_accessor :type

        def initialize(
          amount_tip: nil,
          card_present: nil,
          expand: nil,
          interac_present: nil,
          type: nil
        )
          @amount_tip = amount_tip
          @card_present = card_present
          @expand = expand
          @interac_present = interac_present
          @type = type
        end
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
      def self.delete(reader, params = {}, opts = {})
        request_stripe_object(
          method: :delete,
          path: format("/v1/terminal/readers/%<reader>s", { reader: CGI.escape(reader) }),
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
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/terminal/readers",
          params: params,
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
      def self.update(reader, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s", { reader: CGI.escape(reader) }),
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
