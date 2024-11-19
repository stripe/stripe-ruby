# File generated from our OpenAPI spec
# frozen_string_literal: true

module Stripe
  module Capital
    # A financing object describes an account's current financing state. Used by Connect
    # platforms to read the state of Capital offered to their connected accounts.
    class FinancingSummary < SingletonAPIResource
      OBJECT_NAME = "capital.financing_summary"
      def self.object_name
        "capital.financing_summary"
      end

      class Details < Stripe::StripeObject
        class CurrentRepaymentInterval < Stripe::StripeObject
          attr_reader :due_at, :paid_amount, :remaining_amount
        end
        attr_reader :advance_amount, :advance_paid_out_at, :currency, :current_repayment_interval, :fee_amount, :paid_amount, :remaining_amount, :repayments_begin_at, :withhold_rate
      end
      # Additional information about the financing summary. Describes currency, advance amount,
      # fee amount, withhold rate, remaining amount, paid amount, current repayment interval,
      # repayment start date, and advance payout date.
      attr_reader :details
      # The Financing Offer ID this Financing Summary corresponds to
      attr_reader :financing_offer
      # The object type: financing_summary
      attr_reader :object
      # Status of the Connected Account's financing. [/v1/capital/financing_summary](https://stripe.com/docs/api/capital/financing_summary) will only return `details` for `paid_out` financing.
      attr_reader :status
    end
  end
end
