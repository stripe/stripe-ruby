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

      # Cancels the current reader action.
      def cancel_action(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/cancel_action", { reader: CGI.escape(self["id"]) }),
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

      # Initiates a setup intent flow on a Reader.
      def process_setup_intent(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/process_setup_intent", { reader: CGI.escape(self["id"]) }),
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

      # Sets reader display to show cart details.
      def set_reader_display(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/set_reader_display", { reader: CGI.escape(self["id"]) }),
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
      def self.process_setup_intent(reader, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/process_setup_intent", { reader: CGI.escape(reader) }),
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
      def self.set_reader_display(reader, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/set_reader_display", { reader: CGI.escape(reader) }),
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
