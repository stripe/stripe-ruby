# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Capital
    # A financing object describes an account's current financing state. Used by Connect
    # platforms to read the state of Capital offered to their connected accounts.
    class FinancingSummary < SingletonAPIResource
      class Details < Stripe::StripeObject
        class CurrentRepaymentInterval < Stripe::StripeObject
          # The time at which the minimum payment amount will be due. If not met through withholding, the Connected account's linked bank account or account balance will be debited.
          # Given in seconds since unix epoch.
          sig { returns(Float) }
          attr_reader :due_at
          # The amount that has already been paid in the current repayment interval.
          sig { returns(T.nilable(Integer)) }
          attr_reader :paid_amount
          # The amount that is yet to be paid in the current repayment interval.
          sig { returns(Integer) }
          attr_reader :remaining_amount
        end
        # Amount of financing offered, in minor units.
        sig { returns(Integer) }
        attr_reader :advance_amount
        # The time at which the funds were paid out to the connected account's Stripe balance. Given in milliseconds since unix epoch.
        sig { returns(T.nilable(Float)) }
        attr_reader :advance_paid_out_at
        # Currency that the financing offer is transacted in. For example, `usd`.
        sig { returns(String) }
        attr_reader :currency
        # The chronologically current repayment interval for the financing offer.
        sig { returns(T.nilable(CurrentRepaymentInterval)) }
        attr_reader :current_repayment_interval
        # Fixed fee amount, in minor units.
        sig { returns(Integer) }
        attr_reader :fee_amount
        # The amount the Connected account has paid toward the financing debt so far.
        sig { returns(Integer) }
        attr_reader :paid_amount
        # The balance remaining to be paid on the financing, in minor units.
        sig { returns(Integer) }
        attr_reader :remaining_amount
        # The time at which Capital will begin withholding from payments. Given in seconds since unix epoch.
        sig { returns(T.nilable(Float)) }
        attr_reader :repayments_begin_at
        # Per-transaction rate at which Stripe will withhold funds to repay the financing.
        sig { returns(Float) }
        attr_reader :withhold_rate
      end
      # Additional information about the financing summary. Describes currency, advance amount,
      # fee amount, withhold rate, remaining amount, paid amount, current repayment interval,
      # repayment start date, and advance payout date.
      sig { returns(T.nilable(Details)) }
      attr_reader :details
      # The Financing Offer ID this Financing Summary corresponds to
      sig { returns(T.nilable(String)) }
      attr_reader :financing_offer
      # The object type: financing_summary
      sig { returns(String) }
      attr_reader :object
      # Status of the Connected Account's financing. [/v1/capital/financing_summary](https://stripe.com/docs/api/capital/financing_summary) will only return `details` for `paid_out` financing.
      sig { returns(T.nilable(String)) }
      attr_reader :status
      class RetrieveParams < Stripe::RequestParams
        # Specifies which fields in the response should be expanded.
        sig { returns(T::Array[String]) }
        attr_accessor :expand
        sig { params(expand: T::Array[String]).void }
        def initialize(expand: nil); end
      end
    end
  end
end