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
          sig { returns(Integer) }
          attr_reader :due_at
          sig { returns(T.nilable(Integer)) }
          attr_reader :paid_amount
          sig { returns(Integer) }
          attr_reader :remaining_amount
        end
        sig { returns(Integer) }
        attr_reader :advance_amount
        sig { returns(T.nilable(Integer)) }
        attr_reader :advance_paid_out_at
        sig { returns(String) }
        attr_reader :currency
        sig { returns(T.nilable(CurrentRepaymentInterval)) }
        attr_reader :current_repayment_interval
        sig { returns(Integer) }
        attr_reader :fee_amount
        sig { returns(Integer) }
        attr_reader :paid_amount
        sig { returns(Integer) }
        attr_reader :remaining_amount
        sig { returns(T.nilable(Integer)) }
        attr_reader :repayments_begin_at
        sig { returns(Float) }
        attr_reader :withhold_rate
      end
      sig { returns(T.nilable(Details)) }
      # Additional information about the financing summary. Describes currency, advance amount,
      # fee amount, withhold rate, remaining amount, paid amount, current repayment interval,
      # repayment start date, and advance payout date.
      attr_reader :details
      sig { returns(T.nilable(String)) }
      # The Financing Offer ID this Financing Summary corresponds to
      attr_reader :financing_offer
      sig { returns(String) }
      # The object type: financing_summary
      attr_reader :object
      sig { returns(T.nilable(String)) }
      # Status of the Connected Account's financing. [/v1/capital/financing_summary](https://stripe.com/docs/api/capital/financing_summary) will only return `details` for `paid_out` financing.
      attr_reader :status
    end
  end
end