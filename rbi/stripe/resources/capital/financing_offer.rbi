# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Capital
    # This is an object representing an offer of financing from
    # Stripe Capital to a Connect subaccount.
    class FinancingOffer < APIResource
      class AcceptedTerms < Stripe::StripeObject
        # Amount of financing offered, in minor units.
        sig { returns(Integer) }
        attr_reader :advance_amount
        # Currency that the financing offer is transacted in. For example, `usd`.
        sig { returns(String) }
        attr_reader :currency
        # Fixed fee amount, in minor units.
        sig { returns(Integer) }
        attr_reader :fee_amount
        # Populated when the `product_type` of the `financingoffer` is `refill`.
        # Represents the discount amount on remaining premium for the existing loan at payout time.
        sig { returns(T.nilable(Integer)) }
        attr_reader :previous_financing_fee_discount_amount
        # Per-transaction rate at which Stripe will withhold funds to repay the financing.
        sig { returns(Float) }
        attr_reader :withhold_rate
      end
      class OfferedTerms < Stripe::StripeObject
        # Amount of financing offered, in minor units.
        sig { returns(Integer) }
        attr_reader :advance_amount
        # Describes the type of user the offer is being extended to.
        sig { returns(String) }
        attr_reader :campaign_type
        # Currency that the financing offer is transacted in. For example, `usd`.
        sig { returns(String) }
        attr_reader :currency
        # Fixed fee amount, in minor units.
        sig { returns(Integer) }
        attr_reader :fee_amount
        # Populated when the `product_type` of the `financingoffer` is `refill`.
        # Represents the discount rate percentage on remaining fee on the existing loan. When the `financing_offer`
        # is paid out, the `previous_financing_fee_discount_amount` will be computed as the multiple of this rate
        # and the remaining fee.
        sig { returns(T.nilable(Float)) }
        attr_reader :previous_financing_fee_discount_rate
        # Per-transaction rate at which Stripe will withhold funds to repay the financing.
        sig { returns(Float) }
        attr_reader :withhold_rate
      end
      # This is an object representing the terms of an offer of financing from
      # Stripe Capital to a Connected account. This resource represents
      # the terms accepted by the Connected account, which may differ from those
      # offered.
      sig { returns(AcceptedTerms) }
      attr_reader :accepted_terms
      # The ID of the merchant associated with this financing object.
      sig { returns(String) }
      attr_reader :account
      # The time at which this financing offer was charged off, if applicable. Given in seconds since unix epoch.
      sig { returns(Integer) }
      attr_reader :charged_off_at
      # Time at which the offer was created. Given in seconds since unix epoch.
      sig { returns(Integer) }
      attr_reader :created
      # Time at which the offer expires. Given in seconds since unix epoch.
      sig { returns(Float) }
      attr_reader :expires_after
      # The type of financing being offered.
      sig { returns(String) }
      attr_reader :financing_type
      # A unique identifier for the financing object.
      sig { returns(String) }
      attr_reader :id
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      attr_reader :livemode
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T::Hash[String, String]) }
      attr_reader :metadata
      # The object type: financing_offer.
      sig { returns(String) }
      attr_reader :object
      # This is an object representing the terms of an offer of financing from
      # Stripe Capital to a Connected account. This resource represents
      # both the terms offered to the Connected account.
      sig { returns(OfferedTerms) }
      attr_reader :offered_terms
      # Financing product identifier.
      sig { returns(String) }
      attr_reader :product_type
      # The ID of the financing offer that replaced this offer.
      sig { returns(String) }
      attr_reader :replacement
      # The ID of the financing offer that this offer is a replacement for.
      sig { returns(String) }
      attr_reader :replacement_for
      # The current status of the offer.
      sig { returns(String) }
      attr_reader :status
      # See [financing_type](https://stripe.com/docs/api/capital/connect_financing_object#financing_offer_object-financing_type).
      sig { returns(String) }
      attr_reader :type
      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :gt
          # Minimum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :gte
          # Maximum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :lt
          # Maximum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          attr_accessor :lte
          sig {
            params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
           }
          def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
        end
        # limit list to offers belonging to given connected account
        sig { returns(T.nilable(String)) }
        attr_accessor :connected_account
        # Only return offers that were created during the given date interval.
        sig {
          returns(T.nilable(T.any(::Stripe::Capital::FinancingOffer::ListParams::Created, Integer)))
         }
        attr_accessor :created
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :ending_before
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        attr_accessor :limit
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        attr_accessor :starting_after
        # limit list to offers with given status
        sig { returns(T.nilable(String)) }
        attr_accessor :status
        sig {
          params(connected_account: T.nilable(String), created: T.nilable(T.any(::Stripe::Capital::FinancingOffer::ListParams::Created, Integer)), ending_before: T.nilable(String), expand: T.nilable(T::Array[String]), limit: T.nilable(Integer), starting_after: T.nilable(String), status: T.nilable(String)).void
         }
        def initialize(
          connected_account: nil,
          created: nil,
          ending_before: nil,
          expand: nil,
          limit: nil,
          starting_after: nil,
          status: nil
        ); end
      end
      class MarkDeliveredParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        attr_accessor :expand
        sig { params(expand: T.nilable(T::Array[String])).void }
        def initialize(expand: nil); end
      end
      # Retrieves the financing offers available for Connected accounts that belong to your platform.
      sig {
        params(params: T.any(::Stripe::Capital::FinancingOffer::ListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end

      # Acknowledges that platform has received and delivered the financing_offer to
      # the intended merchant recipient.
      sig {
        params(params: T.any(::Stripe::Capital::FinancingOffer::MarkDeliveredParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Capital::FinancingOffer)
       }
      def mark_delivered(params = {}, opts = {}); end

      # Acknowledges that platform has received and delivered the financing_offer to
      # the intended merchant recipient.
      sig {
        params(financing_offer: String, params: T.any(::Stripe::Capital::FinancingOffer::MarkDeliveredParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(Stripe::Capital::FinancingOffer)
       }
      def self.mark_delivered(financing_offer, params = {}, opts = {}); end
    end
  end
end