# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Radar
    class EarlyFraudWarningService < StripeService
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
        # Only return early fraud warnings for the charge specified by this charge ID.
        attr_accessor :charge
        # Only return early fraud warnings that were created during the given date interval.
        attr_accessor :created
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # Only return early fraud warnings for charges that were created by the PaymentIntent specified by this PaymentIntent ID.
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

      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end

      # Returns a list of early fraud warnings.
      def list(params = {}, opts = {})
        request(
          method: :get,
          path: "/v1/radar/early_fraud_warnings",
          params: params,
          opts: opts,
          base_address: :api
        )
      end

      # Retrieves the details of an early fraud warning that has previously been created.
      #
      # Please refer to the [early fraud warning](https://docs.stripe.com/api#early_fraud_warning_object) object reference for more details.
      def retrieve(early_fraud_warning, params = {}, opts = {})
        request(
          method: :get,
          path: format("/v1/radar/early_fraud_warnings/%<early_fraud_warning>s", { early_fraud_warning: CGI.escape(early_fraud_warning) }),
          params: params,
          opts: opts,
          base_address: :api
        )
      end
    end
  end
end
