# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  class RefundService < StripeService
    class ListParams < Stripe::RequestParams
      class Created < Stripe::RequestParams
        # Minimum value to filter by (exclusive)
        attr_accessor :gt
        # Minimum value to filter by (inclusive)
        attr_accessor :gte
        # Maximum value to filter by (exclusive)
        attr_accessor :lt
        # Maximum value to filter by (inclusive)
        attr_accessor :lte

        def initialize(gt: nil, gte: nil, lt: nil, lte: nil)
          @gt = gt
          @gte = gte
          @lt = lt
          @lte = lte
        end
      end
      # Only return refunds for the charge specified by this charge ID.
      attr_accessor :charge
      # Only return refunds that were created during the given date interval.
      attr_accessor :created
      # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
      attr_accessor :ending_before
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
      attr_accessor :limit
      # Only return refunds for the PaymentIntent specified by this ID.
      attr_accessor :payment_intent
      # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
      attr_accessor :starting_after

      def initialize(
        charge: nil,
        created: nil,
        ending_before: nil,
        expand: nil,
        limit: nil,
        payment_intent: nil,
        starting_after: nil
      )
        @charge = charge
        @created = created
        @ending_before = ending_before
        @expand = expand
        @limit = limit
        @payment_intent = payment_intent
        @starting_after = starting_after
      end
    end

    class CreateParams < Stripe::RequestParams
      # Attribute for param field amount
      attr_accessor :amount
      # The identifier of the charge to refund.
      attr_accessor :charge
      # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
      attr_accessor :currency
      # Customer whose customer balance to refund from.
      attr_accessor :customer
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # For payment methods without native refund support (e.g., Konbini, PromptPay), use this email from the customer to receive refund instructions.
      attr_accessor :instructions_email
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata
      # Origin of the refund
      attr_accessor :origin
      # The identifier of the PaymentIntent to refund.
      attr_accessor :payment_intent
      # String indicating the reason for the refund. If set, possible values are `duplicate`, `fraudulent`, and `requested_by_customer`. If you believe the charge to be fraudulent, specifying `fraudulent` as the reason will add the associated card and email to your [block lists](https://stripe.com/docs/radar/lists), and will also help us improve our fraud detection algorithms.
      attr_accessor :reason
      # Boolean indicating whether the application fee should be refunded when refunding this charge. If a full charge refund is given, the full application fee will be refunded. Otherwise, the application fee will be refunded in an amount proportional to the amount of the charge refunded. An application fee can be refunded only by the application that created the charge.
      attr_accessor :refund_application_fee
      # Boolean indicating whether the transfer should be reversed when refunding this charge. The transfer will be reversed proportionally to the amount being refunded (either the entire or partial amount).<br><br>A transfer can be reversed only by the application that created the charge.
      attr_accessor :reverse_transfer

      def initialize(
        amount: nil,
        charge: nil,
        currency: nil,
        customer: nil,
        expand: nil,
        instructions_email: nil,
        metadata: nil,
        origin: nil,
        payment_intent: nil,
        reason: nil,
        refund_application_fee: nil,
        reverse_transfer: nil
      )
        @amount = amount
        @charge = charge
        @currency = currency
        @customer = customer
        @expand = expand
        @instructions_email = instructions_email
        @metadata = metadata
        @origin = origin
        @payment_intent = payment_intent
        @reason = reason
        @refund_application_fee = refund_application_fee
        @reverse_transfer = reverse_transfer
      end
    end

    class RetrieveParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    class UpdateParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
      attr_accessor :metadata

      def initialize(expand: nil, metadata: nil)
        @expand = expand
        @metadata = metadata
      end
    end

    class CancelParams < Stripe::RequestParams
      # Specifies which fields in the response should be expanded.
      attr_accessor :expand

      def initialize(expand: nil)
        @expand = expand
      end
    end

    # Cancels a refund with a status of requires_action.
    #
    # You can't cancel refunds in other states. Only refunds for payment methods that require customer action can enter the requires_action state.
    def cancel(refund, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/refunds/%<refund>s/cancel", { refund: CGI.escape(refund) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # When you create a new refund, you must specify a Charge or a PaymentIntent object on which to create it.
    #
    # Creating a new refund will refund a charge that has previously been created but not yet refunded.
    # Funds will be refunded to the credit or debit card that was originally charged.
    #
    # You can optionally refund only part of a charge.
    # You can do so multiple times, until the entire charge has been refunded.
    #
    # Once entirely refunded, a charge can't be refunded again.
    # This method will raise an error when called on an already-refunded charge,
    # or when trying to refund more money than is left on a charge.
    def create(params = {}, opts = {})
      request(method: :post, path: "/v1/refunds", params: params, opts: opts, base_address: :api)
    end

    # Returns a list of all refunds you created. We return the refunds in sorted order, with the most recent refunds appearing first. The 10 most recent refunds are always available by default on the Charge object.
    def list(params = {}, opts = {})
      request(method: :get, path: "/v1/refunds", params: params, opts: opts, base_address: :api)
    end

    # Retrieves the details of an existing refund.
    def retrieve(refund, params = {}, opts = {})
      request(
        method: :get,
        path: format("/v1/refunds/%<refund>s", { refund: CGI.escape(refund) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end

    # Updates the refund that you specify by setting the values of the passed parameters. Any parameters that you don't provide remain unchanged.
    #
    # This request only accepts metadata as an argument.
    def update(refund, params = {}, opts = {})
      request(
        method: :post,
        path: format("/v1/refunds/%<refund>s", { refund: CGI.escape(refund) }),
        params: params,
        opts: opts,
        base_address: :api
      )
    end
  end
end
