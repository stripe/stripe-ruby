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
              attr_reader :description, :skip_button, :submit_button, :title
            end

            class Email < Stripe::StripeObject
              attr_reader :value
            end

            class Numeric < Stripe::StripeObject
              attr_reader :value
            end

            class Phone < Stripe::StripeObject
              attr_reader :value
            end

            class Selection < Stripe::StripeObject
              class Choice < Stripe::StripeObject
                attr_reader :style, :value
              end
              attr_reader :choices, :value
            end

            class Signature < Stripe::StripeObject
              attr_reader :value
            end

            class Text < Stripe::StripeObject
              attr_reader :value
            end

            class Toggle < Stripe::StripeObject
              attr_reader :default_value, :description, :title, :value
            end
            attr_reader :custom_text, :email, :numeric, :phone, :required, :selection, :signature, :skipped, :text, :toggles, :type
          end
          attr_reader :inputs, :metadata
        end

        class CollectPaymentMethod < Stripe::StripeObject
          class CollectConfig < Stripe::StripeObject
            class Tipping < Stripe::StripeObject
              attr_reader :amount_eligible
            end
            attr_reader :enable_customer_cancellation, :skip_tipping, :tipping
          end
          attr_reader :collect_config, :payment_intent, :payment_method, :stripe_account
        end

        class ConfirmPaymentIntent < Stripe::StripeObject
          attr_reader :payment_intent, :stripe_account
        end

        class ProcessPaymentIntent < Stripe::StripeObject
          class ProcessConfig < Stripe::StripeObject
            class Tipping < Stripe::StripeObject
              attr_reader :amount_eligible
            end
            attr_reader :enable_customer_cancellation, :skip_tipping, :tipping
          end
          attr_reader :payment_intent, :process_config, :stripe_account
        end

        class ProcessSetupIntent < Stripe::StripeObject
          class ProcessConfig < Stripe::StripeObject
            attr_reader :enable_customer_cancellation
          end
          attr_reader :generated_card, :process_config, :setup_intent
        end

        class RefundPayment < Stripe::StripeObject
          class RefundPaymentConfig < Stripe::StripeObject
            attr_reader :enable_customer_cancellation
          end
          attr_reader :amount, :charge, :metadata, :payment_intent, :reason, :refund, :refund_application_fee, :refund_payment_config, :reverse_transfer, :stripe_account
        end

        class SetReaderDisplay < Stripe::StripeObject
          class Cart < Stripe::StripeObject
            class LineItem < Stripe::StripeObject
              attr_reader :amount, :description, :quantity
            end
            attr_reader :currency, :line_items, :tax, :total
          end
          attr_reader :cart, :type
        end
        attr_reader :collect_inputs, :collect_payment_method, :confirm_payment_intent, :failure_code, :failure_message, :process_payment_intent, :process_setup_intent, :refund_payment, :set_reader_display, :status, :type
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
