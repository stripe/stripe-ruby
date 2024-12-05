# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Capital
    # This is an object representing an offer of financing from
    # Stripe Capital to a Connect subaccount.
    class FinancingOffer < APIResource
      class AcceptedTerms < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :advance_amount
        sig { returns(String) }
        attr_reader :currency
        sig { returns(Integer) }
        attr_reader :fee_amount
        sig { returns(T.nilable(Integer)) }
        attr_reader :previous_financing_fee_discount_amount
        sig { returns(Float) }
        attr_reader :withhold_rate
      end
      class OfferedTerms < Stripe::StripeObject
        sig { returns(Integer) }
        attr_reader :advance_amount
        sig { returns(String) }
        attr_reader :campaign_type
        sig { returns(String) }
        attr_reader :currency
        sig { returns(Integer) }
        attr_reader :fee_amount
        sig { returns(T.nilable(Float)) }
        attr_reader :previous_financing_fee_discount_rate
        sig { returns(Float) }
        attr_reader :withhold_rate
      end
      sig { returns(AcceptedTerms) }
      # This is an object representing the terms of an offer of financing from
      # Stripe Capital to a Connected account. This resource represents
      # the terms accepted by the Connected account, which may differ from those
      # offered.
      attr_reader :accepted_terms
      sig { returns(String) }
      # The ID of the merchant associated with this financing object.
      attr_reader :account
      sig { returns(Integer) }
      # The time at which this financing offer was charged off, if applicable. Given in seconds since unix epoch.
      attr_reader :charged_off_at
      sig { returns(Integer) }
      # Time at which the offer was created. Given in seconds since unix epoch.
      attr_reader :created
      sig { returns(Float) }
      # Time at which the offer expires. Given in seconds since unix epoch.
      attr_reader :expires_after
      sig { returns(String) }
      # The type of financing being offered.
      attr_reader :financing_type
      sig { returns(String) }
      # A unique identifier for the financing object.
      attr_reader :id
      sig { returns(T::Boolean) }
      # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
      attr_reader :livemode
      sig { returns(T::Hash[String, String]) }
      # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
      attr_reader :metadata
      sig { returns(String) }
      # The object type: financing_offer.
      attr_reader :object
      sig { returns(OfferedTerms) }
      # This is an object representing the terms of an offer of financing from
      # Stripe Capital to a Connected account. This resource represents
      # both the terms offered to the Connected account.
      attr_reader :offered_terms
      sig { returns(String) }
      # Financing product identifier.
      attr_reader :product_type
      sig { returns(String) }
      # The ID of the financing offer that replaced this offer.
      attr_reader :replacement
      sig { returns(String) }
      # The ID of the financing offer that this offer is a replacement for.
      attr_reader :replacement_for
      sig { returns(String) }
      # The current status of the offer.
      attr_reader :status
      sig { returns(String) }
      # See [financing_type](https://stripe.com/docs/api/capital/connect_financing_object#financing_offer_object-financing_type).
      attr_reader :type
    end
  end
end