# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Terminal
    class ReaderService < StripeService
      # Cancels the current reader action.
      def cancel_action(reader, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/cancel_action", { reader: CGI.escape(reader) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Initiates an input collection flow on a Reader.
      def collect_inputs(reader, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/collect_inputs", { reader: CGI.escape(reader) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Initiates a payment flow on a Reader and updates the PaymentIntent with card details before manual confirmation.
      def collect_payment_method(reader, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/collect_payment_method", { reader: CGI.escape(reader) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Finalizes a payment on a Reader.
      def confirm_payment_intent(reader, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/confirm_payment_intent", { reader: CGI.escape(reader) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Creates a new Reader object.
      def create(params = {}, opts = {})
        request(
          method: :post,
          path: "/v1/terminal/readers",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Deletes a Reader object.
      def delete(reader, params = {}, opts = {})
        request(
          method: :delete,
          path: format("/v1/terminal/readers/%<reader>s", { reader: CGI.escape(reader) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Returns a list of Reader objects.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/terminal/readers",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Initiates a payment flow on a Reader.
      def process_payment_intent(reader, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/process_payment_intent", { reader: CGI.escape(reader) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Initiates a setup intent flow on a Reader.
      def process_setup_intent(reader, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/process_setup_intent", { reader: CGI.escape(reader) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Initiates a refund on a Reader
      def refund_payment(reader, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/refund_payment", { reader: CGI.escape(reader) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves a Reader object.
      def retrieve(reader, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/terminal/readers/%<reader>s", { reader: CGI.escape(reader) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Sets reader display to show cart details.
      def set_reader_display(reader, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/set_reader_display", { reader: CGI.escape(reader) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Updates a Reader object by setting the values of the parameters passed. Any parameters not provided will be left unchanged.
      def update(reader, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s", { reader: CGI.escape(reader) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
