# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Terminal
    class ReaderService < StripeService
      # Initiates a gift card activation flow on a Reader and optionally sets its balance.
      def activate_gift_card(reader, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/activate_gift_card", { reader: CGI.escape(reader) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Cancels the current reader action. See [Programmatic Cancellation](https://docs.stripe.com/docs/terminal/payments/collect-card-payment?terminal-sdk-platform=server-driven#programmatic-cancellation) for more details.
      def cancel_action(reader, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/cancel_action", { reader: CGI.escape(reader) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Initiates a gift card cashout flow on a Reader. A cashout sets the gift card balance to 0.
      def cashout_gift_card(reader, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/cashout_gift_card", { reader: CGI.escape(reader) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Initiates a gift card balance check flow on a Reader.
      def check_gift_card_balance(reader, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/check_gift_card_balance", { reader: CGI.escape(reader) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Initiates an [input collection flow](https://docs.stripe.com/docs/terminal/features/collect-inputs) on a Reader to display input forms and collect information from your customers.
      def collect_inputs(reader, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/collect_inputs", { reader: CGI.escape(reader) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Initiates a payment flow on a Reader and updates the PaymentIntent with card details before manual confirmation. See [Collecting a Payment method](https://docs.stripe.com/docs/terminal/payments/collect-card-payment?terminal-sdk-platform=server-driven&process=inspect#collect-a-paymentmethod) for more details.
      def collect_payment_method(reader, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/collect_payment_method", { reader: CGI.escape(reader) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Finalizes a payment on a Reader. See [Confirming a Payment](https://docs.stripe.com/docs/terminal/payments/collect-card-payment?terminal-sdk-platform=server-driven&process=inspect#confirm-the-paymentintent) for more details.
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

      # Initiates a payment flow on a Reader. See [process the payment](https://docs.stripe.com/docs/terminal/payments/collect-card-payment?terminal-sdk-platform=server-driven&process=immediately#process-payment) for more details.
      def process_payment_intent(reader, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/process_payment_intent", { reader: CGI.escape(reader) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Initiates a SetupIntent flow on a Reader. See [Save directly without charging](https://docs.stripe.com/docs/terminal/features/saving-payment-details/save-directly) for more details.
      def process_setup_intent(reader, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/process_setup_intent", { reader: CGI.escape(reader) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Initiates an in-person refund on a Reader. See [Refund an Interac Payment](https://docs.stripe.com/docs/terminal/payments/regional?integration-country=CA#refund-an-interac-payment) for more details.
      def refund_payment(reader, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/refund_payment", { reader: CGI.escape(reader) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Initiates a gift card reload flow on a Reader by adding the specified amount to its balance.
      def reload_gift_card(reader, params = {}, opts = {})
        request(
          method: :post,
          path: format("/v1/terminal/readers/%<reader>s/reload_gift_card", { reader: CGI.escape(reader) }),
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

      # Sets the reader display to show [cart details](https://docs.stripe.com/docs/terminal/features/display).
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
