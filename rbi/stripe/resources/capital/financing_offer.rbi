# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Capital
    # This is an object representing an offer of financing from
    # Stripe Capital to a Connect subaccount.
    class FinancingOffer < APIResource
      class AcceptedTerms < ::Stripe::StripeObject
        # Amount of financing offered, in minor units. For example, 1,000 USD is represented as 100000.
        sig { returns(Integer) }
        def advance_amount; end
        # Currency that the financing offer is transacted in. For example, `usd`.
        sig { returns(String) }
        def currency; end
        # Fixed fee amount, in minor units. For example, 100 USD is represented as 10000.
        sig { returns(Integer) }
        def fee_amount; end
        # Populated when the `product_type` of the `financingoffer` is `refill`.
        # Represents the discount amount on remaining premium for the existing loan at payout time.
        sig { returns(T.nilable(Integer)) }
        def previous_financing_fee_discount_amount; end
        # Per-transaction rate at which Stripe withholds funds to repay the financing.
        sig { returns(Float) }
        def withhold_rate; end
        def self.inner_class_types
          @inner_class_types = {}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      class OfferedTerms < ::Stripe::StripeObject
        # Amount of financing offered, in minor units. For example, 1,000 USD is represented as 100000.
        sig { returns(Integer) }
        def advance_amount; end
        # Describes the type of user the offer is being extended to.
        sig { returns(String) }
        def campaign_type; end
        # Currency that the financing offer is transacted in. For example, `usd`.
        sig { returns(String) }
        def currency; end
        # Fixed fee amount, in minor units. For example, 100 USD is represented as 10000.
        sig { returns(Integer) }
        def fee_amount; end
        # Populated when the `product_type` of the `financingoffer` is `refill`.
        # Represents the discount rate percentage on remaining fee on the existing loan. When the `financing_offer`
        # is paid out, the `previous_financing_fee_discount_amount` will be computed as the multiple of this rate
        # and the remaining fee.
        sig { returns(T.nilable(Float)) }
        def previous_financing_fee_discount_rate; end
        # Per-transaction rate at which Stripe withholds funds to repay the financing.
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
      # Retrieves the financing offers available for Connected accounts that belong to your platform.
      sig {
        params(params: T.any(::Stripe::Capital::FinancingOfferListParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::ListObject)
       }
      def self.list(params = {}, opts = {}); end

      # Acknowledges that platform has received and delivered the financing_offer to
      # the intended merchant recipient.
      sig {
        params(params: T.any(::Stripe::Capital::FinancingOfferMarkDeliveredParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Capital::FinancingOffer)
       }
      def mark_delivered(params = {}, opts = {}); end

      # Acknowledges that platform has received and delivered the financing_offer to
      # the intended merchant recipient.
      sig {
        params(financing_offer: String, params: T.any(::Stripe::Capital::FinancingOfferMarkDeliveredParams, T::Hash[T.untyped, T.untyped]), opts: T.untyped).returns(::Stripe::Capital::FinancingOffer)
       }
      def self.mark_delivered(financing_offer, params = {}, opts = {}); end
    end
  end
end