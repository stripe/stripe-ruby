# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Capital
    # This is an object representing an offer of financing from
    # Stripe Capital to a Connect subaccount.
    class FinancingOffer < APIResource
      extend Stripe::APIOperations::List

      OBJECT_NAME = "capital.financing_offer"
      def self.object_name
        "capital.financing_offer"
      end

      class AcceptedTerms < Stripe::StripeObject
        # Amount of financing offered, in minor units.
        attr_reader :advance_amount
        # Currency that the financing offer is transacted in. For example, `usd`.
        attr_reader :currency
        # Fixed fee amount, in minor units.
        attr_reader :fee_amount
        # Populated when the `product_type` of the `financingoffer` is `refill`.
        # Represents the discount amount on remaining premium for the existing loan at payout time.
        attr_reader :previous_financing_fee_discount_amount
        # Per-transaction rate at which Stripe will withhold funds to repay the financing.
        attr_reader :withhold_rate
      end

      class OfferedTerms < Stripe::StripeObject
        # Amount of financing offered, in minor units.
        attr_reader :advance_amount
        # Describes the type of user the offer is being extended to.
        attr_reader :campaign_type
        # Currency that the financing offer is transacted in. For example, `usd`.
        attr_reader :currency
        # Fixed fee amount, in minor units.
        attr_reader :fee_amount
        # Populated when the `product_type` of the `financingoffer` is `refill`.
        # Represents the discount rate percentage on remaining fee on the existing loan. When the `financing_offer`
        # is paid out, the `previous_financing_fee_discount_amount` will be computed as the multiple of this rate
        # and the remaining fee.
        attr_reader :previous_financing_fee_discount_rate
        # Per-transaction rate at which Stripe will withhold funds to repay the financing.
        attr_reader :withhold_rate
      end

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
        # limit list to offers belonging to given connected account
        attr_accessor :connected_account
        # Only return offers that were created during the given date interval.
        attr_accessor :created
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        attr_accessor :starting_after
        # limit list to offers with given status
        attr_accessor :status

        def initialize(
          connected_account: nil,
          created: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil,
          status: nil
        )
          @connected_account = connected_account
          @created = created
          @ending_before = ending_before
          @expand = expand
          @limit = limit
          @starting_after = starting_after
          @status = status
        end
      end

      class MarkDeliveredParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        attr_accessor :expand

        def initialize(expand: nil)
          @expand = expand
        end
      end
      # This is an object representing the terms of an offer of financing from
      # Stripe Capital to a Connected account. This resource represents
      # the terms accepted by the Connected account, which may differ from those
      # offered.
      attr_reader :accepted_terms
      # The ID of the merchant associated with this financing object.
      attr_reader :account
      # The time at which this financing offer was charged off, if applicable. Given in seconds since unix epoch.
      attr_reader :charged_off_at
      # Time at which the offer was created. Given in seconds since unix epoch.
      attr_reader :created
      # Time at which the offer expires. Given in seconds since unix epoch.
      attr_reader :expires_after
      # The type of financing being offered.
      attr_reader :financing_type
      # A unique identifier for the financing object.
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      # The object type: financing_offer.
      attr_reader :object
      # This is an object representing the terms of an offer of financing from
      # Stripe Capital to a Connected account. This resource represents
      # both the terms offered to the Connected account.
      attr_reader :offered_terms
      # Financing product identifier.
      attr_reader :product_type
      # The ID of the financing offer that replaced this offer.
      attr_reader :replacement
      # The ID of the financing offer that this offer is a replacement for.
      attr_reader :replacement_for
      # The current status of the offer.
      attr_reader :status
      # See [financing_type](https://stripe.com/docs/api/capital/connect_financing_object#financing_offer_object-financing_type).
      attr_reader :type

      # Retrieves the financing offers available for Connected accounts that belong to your platform.
      def self.list(params = {}, opts = {})
        request_stripe_object(
          method: :get,
          path: "/v1/capital/financing_offers",
          params: params,
          opts: opts
        )
      end

      # Acknowledges that platform has received and delivered the financing_offer to
      # the intended merchant recipient.
      def mark_delivered(params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/capital/financing_offers/%<financing_offer>s/mark_delivered", { financing_offer: CGI.escape(self["id"]) }),
          params: params,
          opts: opts
        )
      end

      # Acknowledges that platform has received and delivered the financing_offer to
      # the intended merchant recipient.
      def self.mark_delivered(financing_offer, params = {}, opts = {})
        request_stripe_object(
          method: :post,
          path: format("/v1/capital/financing_offers/%<financing_offer>s/mark_delivered", { financing_offer: CGI.escape(financing_offer) }),
          params: params,
          opts: opts
        )
      end
    end
  end
end
