# File generated from our OpenAPI spec
# frozen_string_literal: true

# typed: true
module Stripe
  module Capital
    # A financing summary object describes a connected account's financing details in real time.
    class FinancingSummary < SingletonAPIResource
      class Details < ::Stripe::StripeObject
        class CurrentRepaymentInterval < ::Stripe::StripeObject
          # The time at which the minimum payment amount will be due. If not met through withholding, the Connected account's linked bank account or account balance will be debited.
          # Given in seconds since unix epoch.
          sig { returns(Float) }
          def due_at; end
          # The balance for the current repayment interval, in minor units. This does not account for any amount paid down during the interval.
          sig { returns(T.nilable(Integer)) }
          def incremental_interval_target_amount; end
          # The amount that has already been paid in the current repayment interval, in minor units. For example, 100 USD is represented as 10000.
          sig { returns(T.nilable(Integer)) }
          def paid_amount; end
          # The amount that is yet to be paid in the current repayment interval, in minor units. For example, 100 USD is represented as 10000.
          sig { returns(Integer) }
          def remaining_amount; end
          # The time at which the current repayment interval started. Given in seconds since unix epoch.
          sig { returns(T.nilable(Integer)) }
          def starts_at; end
          def self.inner_class_types
            @inner_class_types = {}
          end
          def self.field_remappings
            @field_remappings = {}
          end
        end
        # Amount of financing offered, in minor units. For example, 1,000 USD is represented as 100000.
        sig { returns(Integer) }
        def advance_amount; end
        # The time at which the funds were paid out to the connected account's Stripe balance. Given in milliseconds since unix epoch.
        sig { returns(T.nilable(Float)) }
        def advance_paid_out_at; end
        # Currency that the financing offer is transacted in. For example, `usd`.
        sig { returns(String) }
        def currency; end
        # The chronologically current repayment interval for the financing offer.
        sig { returns(T.nilable(CurrentRepaymentInterval)) }
        def current_repayment_interval; end
        # The type of disclaimer to use for a financing offer in user-facing surfaces. The corresponding disclaimer text to use for each disclaimer_variant value can be found in the [regulatory compliance docs](https://docs.stripe.com/capital/regulatory-compliance).
        sig { returns(T.nilable(String)) }
        def disclaimer_variant; end
        # The ways the connected account can pay toward its financing(s).
        sig { returns(T.nilable(T::Array[String])) }
        def enabled_payment_types; end
        # Fixed fee amount, in minor units. For example, 100 USD is represented as 10000.
        sig { returns(Integer) }
        def fee_amount; end
        # The amount the Connected account has paid toward the financing debt so far, in minor units. For example, 1,000 USD is represented as 100000.
        sig { returns(Integer) }
        def paid_amount; end
        # The balance remaining to be paid on the financing, in minor units. For example, 1,000 USD is represented as 100000.
        sig { returns(Integer) }
        def remaining_amount; end
        # The time at which Capital will begin withholding from payments. Given in seconds since unix epoch.
        sig { returns(T.nilable(Float)) }
        def repayments_begin_at; end
        # Total amount to be paid, independent of what's already been paid, in minor units. For example, 100 USD is represented as 10000.
        sig { returns(T.nilable(Integer)) }
        def total_due_amount; end
        # Per-transaction rate at which Stripe withholds funds to repay the financing.
        sig { returns(Float) }
        def withhold_rate; end
        def self.inner_class_types
          @inner_class_types = {current_repayment_interval: CurrentRepaymentInterval}
        end
        def self.field_remappings
          @field_remappings = {}
        end
      end
      # Additional information about the financing summary. Describes currency, advance amount,
      # fee amount, withhold rate, remaining amount, paid amount, current repayment interval,
      # repayment start date, and advance payout date.
      #
      # Only present for financing offers with a `status` other than `none`.
      sig { returns(T.nilable(Details)) }
      def details; end
      # The unique identifier of the Financing Offer object that corresponds to the Financing Summary object.
      sig { returns(T.nilable(String)) }
      def financing_offer; end
      # The object type: financing_summary
      sig { returns(String) }
      def object; end
      # The financing status of the connected account.
      sig { returns(T.nilable(String)) }
      def status; end
    end
  end
end