# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Capital
    # This is an object representing an offer of financing from
    # Stripe Capital to a Connect subaccount.
    class FinancingOffer < APIResource
      class AcceptedTerms < Stripe::StripeObject
        # Amount of financing offered, in minor units. For example, $1,000 USD will be represented as 100000.
        sig { returns(Integer) }
        def advance_amount; end
        # Currency that the financing offer is transacted in. For example, `usd`.
        sig { returns(String) }
        def currency; end
        # Fixed fee amount, in minor units. For example, $100 USD will be represented as 10000.
        sig { returns(Integer) }
        def fee_amount; end
        # Populated when the `product_type` of the `financingoffer` is `refill`.
        # Represents the discount amount on remaining premium for the existing loan at payout time.
        sig { returns(T.nilable(Integer)) }
        def previous_financing_fee_discount_amount; end
        # Per-transaction rate at which Stripe will withhold funds to repay the financing.
        sig { returns(Float) }
        def withhold_rate; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class OfferedTerms < Stripe::StripeObject
        # Amount of financing offered, in minor units. For example, $1,000 USD will be represented as 100000.
        sig { returns(Integer) }
        def advance_amount; end
        # Describes the type of user the offer is being extended to.
        sig { returns(String) }
        def campaign_type; end
        # Currency that the financing offer is transacted in. For example, `usd`.
        sig { returns(String) }
        def currency; end
        # Fixed fee amount, in minor units. For example, $100 USD will be represented as 10000.
        sig { returns(Integer) }
        def fee_amount; end
        # Populated when the `product_type` of the `financingoffer` is `refill`.
        # Represents the discount rate percentage on remaining fee on the existing loan. When the `financing_offer`
        # is paid out, the `previous_financing_fee_discount_amount` will be computed as the multiple of this rate
        # and the remaining fee.
        sig { returns(T.nilable(Float)) }
        def previous_financing_fee_discount_rate; end
        # Per-transaction rate at which Stripe will withhold funds to repay the financing.
        sig { returns(Float) }
        def withhold_rate; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # This is an object representing the terms of an offer of financing from
      # Stripe Capital to a Connected account. This resource represents
      # the terms accepted by the Connected account, which may differ from those
      # offered.
      sig { returns(T.nilable(AcceptedTerms)) }
      def accepted_terms; end
      # The ID of the merchant associated with this financing object.
      sig { returns(String) }
      def account; end
      # The time at which this financing offer was charged off, if applicable. Given in seconds since unix epoch.
      sig { returns(T.nilable(Integer)) }
      def charged_off_at; end
      # Time at which the offer was created. Given in seconds since unix epoch.
      sig { returns(Integer) }
      def created; end
      # Time at which the offer expires. Given in seconds since unix epoch.
      sig { returns(Float) }
      def expires_after; end
      # The type of financing being offered.
      sig { returns(T.nilable(String)) }
      def financing_type; end
      # A unique identifier for the financing object.
      sig { returns(String) }
      def id; end
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      sig { returns(T::Boolean) }
      def livemode; end
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      sig { returns(T.nilable(T::Hash[String, String])) }
      def metadata; end
      # The object type: financing_offer.
      sig { returns(String) }
      def object; end
      # This is an object representing the terms of an offer of financing from
      # Stripe Capital to a Connected account. This resource represents
      # both the terms offered to the Connected account.
      sig { returns(T.nilable(OfferedTerms)) }
      def offered_terms; end
      # Financing product identifier.
      sig { returns(T.nilable(String)) }
      def product_type; end
      # The ID of the financing offer that replaced this offer.
      sig { returns(T.nilable(String)) }
      def replacement; end
      # The ID of the financing offer that this offer is a replacement for.
      sig { returns(T.nilable(String)) }
      def replacement_for; end
      # The current status of the offer.
      sig { returns(String) }
      def status; end
      # See [financing_type](https://stripe.com/docs/api/capital/connect_financing_object#financing_offer_object-financing_type).
      sig { returns(T.nilable(String)) }
      def type; end
      class ListParams < Stripe::RequestParams
        class Created < Stripe::RequestParams
          # Minimum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          def gt; end
          sig { params(_gt: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def gt=(_gt); end
          # Minimum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          def gte; end
          sig { params(_gte: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def gte=(_gte); end
          # Maximum value to filter by (exclusive)
          sig { returns(T.nilable(Integer)) }
          def lt; end
          sig { params(_lt: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def lt=(_lt); end
          # Maximum value to filter by (inclusive)
          sig { returns(T.nilable(Integer)) }
          def lte; end
          sig { params(_lte: T.nilable(Integer)).returns(T.nilable(Integer)) }
          def lte=(_lte); end
          sig {
            params(gt: T.nilable(Integer), gte: T.nilable(Integer), lt: T.nilable(Integer), lte: T.nilable(Integer)).void
           }
          def initialize(gt: nil, gte: nil, lt: nil, lte: nil); end
        end
        # limit list to offers belonging to given connected account
        sig { returns(T.nilable(String)) }
        def connected_account; end
        sig { params(_connected_account: T.nilable(String)).returns(T.nilable(String)) }
        def connected_account=(_connected_account); end
        # Only return offers that were created during the given date interval.
        sig {
          returns(T.nilable(T.any(::Stripe::Capital::FinancingOffer::ListParams::Created, Integer)))
         }
        def created; end
        sig {
          params(_created: T.nilable(T.any(::Stripe::Capital::FinancingOffer::ListParams::Created, Integer))).returns(T.nilable(T.any(::Stripe::Capital::FinancingOffer::ListParams::Created, Integer)))
         }
        def created=(_created); end
        # A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
        sig { returns(T.nilable(String)) }
        def ending_before; end
        sig { params(_ending_before: T.nilable(String)).returns(T.nilable(String)) }
        def ending_before=(_ending_before); end
        # Specifies which fields in the response should be expanded.
        sig { returns(T.nilable(T::Array[String])) }
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
        # A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
        sig { returns(T.nilable(Integer)) }
        def limit; end
        sig { params(_limit: T.nilable(Integer)).returns(T.nilable(Integer)) }
        def limit=(_limit); end
        # A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
        sig { returns(T.nilable(String)) }
        def starting_after; end
        sig { params(_starting_after: T.nilable(String)).returns(T.nilable(String)) }
        def starting_after=(_starting_after); end
        # limit list to offers with given status
        sig { returns(T.nilable(String)) }
        def status; end
        sig { params(_status: T.nilable(String)).returns(T.nilable(String)) }
        def status=(_status); end
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
        def expand; end
        sig { params(_expand: T.nilable(T::Array[String])).returns(T.nilable(T::Array[String])) }
        def expand=(_expand); end
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